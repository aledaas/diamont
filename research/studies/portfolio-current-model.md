# Modelo actual de Portfolio

## Alcance y fecha de observación

Este análisis describe el repositorio local `development-portfolio` observado el 9 de agosto de 2026. Es una fotografía técnica, no una definición de DIAMONT ni una autorización de cambio.

Fuentes principales:

- `app/Models/{Milestone,Feature,Task,Execution,KnowledgeDocument,PromptCompilation}.php`;
- migraciones de creación y evolución de esas entidades;
- `app/Services/{WorkflowEngine,FeatureExecutionOrchestrator,PromptBuilder}.php`;
- recursos Filament, observers, rutas runtime y pruebas asociadas.

## Estructura dominante

```text
Project
 ├─ Milestone
 │   └─ Feature
 │       └─ Task
 │           └─ Execution
 └─ Repository
```

La estructura real contiene dos capas de ejecución: `Execution`, ligada a una tarea, y `FeatureExecution`, que orquesta una secuencia de tareas. La segunda no reemplaza la jerarquía: depende de `feature_id`, `current_task_id` y registros de ejecución por tarea.

## Responsabilidad de cada entidad

| Entidad | Responsabilidad observada | Acoplamientos relevantes |
|---|---|---|
| `Milestone` | Agrupa features por proyecto, orden, estado y progreso porcentual. | Su progreso se calcula por proporción de features cerradas. Las features pueden referenciarlo y el conocimiento puede adjuntarse a él. |
| `Feature` | Especifica objetivo, contexto, alcance, criterios, restricciones, dependencias, prioridad y estado. | Es el centro de transiciones, preparación, aprobaciones, adjuntos, tareas, ejecuciones y orquestación. |
| `Task` | Convierte una feature en unidades ordenadas, tipadas, asignables y verificables. | Pertenece obligatoriamente a una feature. Limita a una tarea `RUNNING` por feature y concentra compilaciones, ejecuciones, uso y auditoría de cierre. |
| `Execution` | Registra un intento operativo sobre una tarea: worker, repositorio, workspace, estado, tiempos y evidencia runtime. | `task_id` es obligatorio; `feature_id` y `task_id` quedan inmutables. Tiene cola, eventos, planes, políticas, prompts, instrucciones, cuotas y uso. |

## Dependencia por capas

### Persistencia

- `features.milestone_id` vincula planificación temporal con especificación.
- `tasks.feature_id` es obligatorio y usa borrado en cascada.
- `executions.task_id` es obligatorio y usa borrado en cascada.
- tablas de aprobación, adjuntos, transiciones y preparación dependen de `feature_id`.
- compilaciones, cierres, uso e instrucciones dependen de `task_id` y/o `execution_id`.
- cola, eventos, planes, snapshots, paquetes de prompt y cuotas dependen de `execution_id`.
- la orquestación de feature replica vínculos a feature, tarea y execution.

Esto significa que reemplazar nombres o tablas aisladamente rompería identidad, historia y reglas de integridad.

### Dominio y workflow

- observers propagan cambios entre estados de Task, Feature, Execution y Milestone;
- el workflow define transiciones permitidas sobre Feature y Task;
- existen exclusiones de concurrencia: una Task `RUNNING` por Feature y una Execution `RUNNING` por Task;
- el cierre y la aprobación se expresan principalmente en estados de esos contenedores;
- el orquestador mide avance como tareas completadas sobre tareas totales.

### Compilación y runtime

- `PromptCompilation` requiere una Task y un Worker; puede vincularse a una Execution;
- las fuentes y políticas efectivas ya se guardan junto con el prompt renderizado y su hash;
- la API runtime descubre, reclama, contextualiza y reporta trabajo mediante Execution;
- los registros de eventos, instrucciones, resultados, cuota y costo toman Execution como eje operativo.

### Interfaz, consultas y pruebas

Milestone, Feature, Task y Execution tienen recursos administrativos, formularios y tablas. Mission Control consulta y presenta la misma jerarquía. La suite de pruebas codifica sus estados, restricciones, preparación, despacho, ejecución, cierre y aprobación.

## Conocimiento existente

Portfolio ya contiene elementos cercanos a la hipótesis DIAMONT:

- `KnowledgeDocument` guarda contenido estructurado, versionado y activable, asociado polimórficamente a entidades existentes;
- `GlobalPolicy` conserva conocimiento normativo versionado;
- `PromptCompilation` registra contenido compilado, fuentes, políticas, advertencias, versión, hash y autor del proceso;
- planes, paquetes de prompt, eventos y outputs conservan parte de la procedencia de producción;
- resultados, usage records y reportes aportan observación operativa.

Sin embargo, el conocimiento sigue siendo **atributo o derivado de contenedores de trabajo**. No posee todavía identidad transversal suficiente para ser la unidad que conecta intención, razonamiento, producción, observación y aprendizaje.

## Hallazgos

### Observaciones

1. `Feature` concentra a la vez especificación, gobierno, planificación y agrupación de trabajo.
2. `Task` es simultáneamente unidad de descomposición, asignación, concurrencia, compilación y cierre.
3. `Execution` combina intento de producción, sesión runtime, workspace y eje de telemetría.
4. Portfolio trata sus documentos de conocimiento como artefactos versionables, pero su pertenencia polimórfica los subordina a entidades preexistentes.
5. La compilación ya conserva fuentes y hash, una base valiosa para reproducibilidad.
6. Hay duplicación conceptual entre ejecución de feature y ejecución de task, señal de que el contenedor de planificación y el intento operativo no están completamente separados.

### Interpretaciones a validar

- La jerarquía actual optimiza coordinación de trabajo, no evolución de conocimiento.
- Parte de la complejidad de estados existe porque un mismo objeto representa comprensión, autorización y progreso operativo.
- `KnowledgeDocument` y `PromptCompilation` podrían ser puntos de convivencia inicial, pero no deben asumirse como las futuras entidades DIAMONT.

## Riesgos de una sustitución prematura

- pérdida de integridad referencial e historia por cascadas de borrado;
- ruptura de workflow, concurrencia, aprobación y permisos;
- pérdida de trazabilidad de costos, prompts y resultados;
- reemplazo cosmético de vocabulario sin cambiar la unidad fundamental;
- cristalizaciones demasiado rígidas que congelen conversación o incertidumbre;
- acoplamiento accidental a la forma actual de prompts de un proveedor.

## Conclusión

El paradigma no está contenido en cuatro tablas: atraviesa persistencia, reglas, interfaces, compilación, runtime, auditoría y pruebas. La transición deberá separar responsabilidades antes de retirar entidades y demostrar que el nuevo eje de conocimiento conserva o mejora gobierno, trazabilidad y operación.

El descubrimiento posterior [Crystal Graph](../../discoveries/0001-crystal-graph.md) cuestiona que el versionado observado represente correctamente la evolución del conocimiento cristalizado. Este documento conserva el hallazgo como fotografía del sistema vigente, no como recomendación.
