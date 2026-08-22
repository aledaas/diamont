# MINA Universal Knowledge Protocol

## Estado

**Especificación conceptual candidata para experimentación.**

Este documento define el significado mínimo de una interacción universal con MINA. No define todavía HTTP, CLI, RPC, eventos, serialización, autenticación concreta, SDK, esquema SQL ni despliegue.

Su objetivo es permitir que cualquier actor capaz de cumplir el contrato —humano o artificial— descubra y consuma conocimiento DIAMONT sin recibir manualmente documentos o instrucciones específicas de otro actor.

## Intención

El protocolo debe responder una pregunta operacional:

> ¿Qué conocimiento del Patrimonio necesita este actor para actuar correctamente ante esta intención y este contexto?

El actor no selecciona Crystals por anticipado. Declara lo que intenta comprender o producir. MINA explora el Patrimonio, evalúa suficiencia, compone un Crystal Set y entrega una representación verificable para su capacidad.

## Principios

1. **Intent first.** Toda resolución comienza en una Idea y una intención identificable, nunca en un Crystal elegido de antemano.
2. **Patrimony first.** MINA busca conocimiento existente antes de proponer creación, exploración externa o invención.
3. **Capability over tool.** El contrato describe la capacidad del actor, no su marca, proveedor o modelo.
4. **Minimum sufficient knowledge.** MINA entrega el conjunto mínimo suficiente, no todo el Patrimonio disponible.
5. **Explainability.** Toda inclusión, exclusión, gap, contradicción y restricción debe ser explicable.
6. **Verifiability.** El actor debe poder comprobar identidad, integridad, procedencia y contexto de lo recibido.
7. **No implicit authority.** Una resolución no aprueba ejecución, no cristaliza conocimiento y no modifica el Patrimonio.
8. **No silent fallback.** La indisponibilidad o insuficiencia produce un resultado explícito; nunca conocimiento inventado.
9. **Representation independence.** La semántica permanece estable aunque cambien transporte, persistencia o representación para el actor.
10. **Evidence returns.** La producción puede devolver evidencia sin convertirla automáticamente en conocimiento.

## Participantes conceptuales

| Participante | Responsabilidad |
|---|---|
| `Requester` | Declara intención, contexto, capacidad, restricciones y autoridad disponible. |
| `MINA` | Comprende la solicitud como asistencia, explora el Patrimonio, compone y explica una resolución. |
| `Patrimony` | Proporciona conocimiento con identidad, relaciones, procedencia y estado epistemológico. |
| `Consumer` | Interpreta la representación recibida y actúa sólo dentro de la autoridad concedida. Puede coincidir con Requester. |
| `Authority` | Aprueba por separado cualquier producción o remisión a cristalización que lo requiera. |
| `Evidence Producer` | Devuelve resultados observables vinculados a la resolución utilizada. Puede coincidir con Consumer. |

## Interacción fundamental

```text
KnowledgeRequest
       ↓
MINA Resolution Process
       ↓
MinaResolution
       ↓
explicit approval when required
       ↓
Production
       ↓
EvidenceSubmission
       ↓
LearningProposal when justified
```

La interacción mínima consta de tres contratos conceptuales:

1. `KnowledgeRequest`: expresa para qué se necesita conocimiento.
2. `MinaResolution`: declara qué conocimiento resulta aplicable y por qué.
3. `EvidenceSubmission`: devuelve lo observado al utilizar esa resolución.

Los tres conservan identidades y correlación permanentes. Ninguno constituye un Crystal.

## KnowledgeRequest

### Propósito

Permitir que un actor solicite conocimiento sin conocer la topología interna del Patrimonio ni anticipar una solución.

### Contenido mínimo

| Concepto | Significado |
|---|---|
| `Request Identity` | Identidad única e idempotente de la solicitud. |
| `Idea` | Expresión original del cambio o valor buscado. |
| `Shared Understanding Reference` | Comprensión disponible, acuerdos, desacuerdos e incertidumbres. Puede declarar que todavía es insuficiente. |
| `Project Context` | Ámbito, objetivos, restricciones, exclusiones, dependencias, riesgos y referencias autorizadas. |
| `Execution Intent` | Para qué participación concreta se solicita conocimiento: comprender, diseñar, planificar, implementar, revisar, observar o aprender. |
| `Actor Capability` | Capacidades que el consumidor aporta y representación que puede interpretar; no identifica necesariamente una herramienta. |
| `Authority Context` | Acciones permitidas, prohibidas y sujetas a approval. |
| `Knowledge Policy` | Reglas de exposición, sensibilidad, procedencia, conectividad y uso externo. |
| `Requested Outcome` | Resultado cognitivo esperado, no solución predeterminada. |
| `Correlation Context` | Proyecto, producción o interacción previa a la que pertenece. |

### Execution Intent

`Execution Intent` no reemplaza la intención original. Declara por qué un actor necesita conocimiento en este momento.

La misma Idea puede producir resoluciones diferentes:

```text
Idea: "Necesito autenticación"
    ├── comprender el dominio
    ├── diseñar una solución para Laravel
    ├── implementar una Task autorizada
    ├── revisar una producción existente
    └── evaluar evidencia para aprendizaje
```

Cada resolución debe poder recorrer su `Execution Intent` hasta la Idea y la comprensión compartida que la originaron.

### Condiciones de rechazo o pausa

MINA no debe resolver normalmente cuando:

- falta una intención identificable;
- el contexto es insuficiente para distinguir alternativas relevantes;
- no existe comprensión compartida suficiente para el resultado solicitado;
- la solicitud requiere autoridad que el actor no posee;
- la política de conocimiento impide exponer las fuentes necesarias;
- existe una contradicción material que requiere razonamiento conjunto;
- no puede verificarse el Patrimonio consultado.

El resultado debe expresar la condición y el próximo dato o decisión necesarios.

## Proceso conceptual de resolución

```text
Validate Request
       ↓
Intent Re-Centering
       ↓
Derive Required Virtues
       ↓
Before Create, Search
       ↓
Find Crystals, Faces and Relations
       ↓
Evaluate Evidence, Context and Epistemological Assertions
       ↓
Detect Contradictions and Gaps
       ↓
Evaluate Sufficiency
       ↓
Compose Minimum Crystal Set
       ↓
Compile for Actor Capability
       ↓
Issue MinaResolution + Compilation Receipt
```

Este flujo define responsabilidades observables, no algoritmos. MINA puede utilizar motores de inferencia diferentes siempre que preserve el contrato, la procedencia y los límites de autoridad.

## MinaResolution

### Naturaleza

`MinaResolution` es una respuesta cognitiva inmutable a una `KnowledgeRequest` determinada. No es una orden, approval, Task, Feature, Crystal ni verdad independiente de sus fuentes.

`MinaProposal` puede ser una proyección de `MinaResolution` orientada a Portfolio. El protocolo universal utiliza `MinaResolution` para no convertir el contrato de un consumidor específico en la identidad completa de MINA.

### Contenido mínimo

| Concepto | Significado |
|---|---|
| `Resolution Identity` | Identidad permanente de la respuesta y correlación con la solicitud exacta. |
| `Intent Alignment` | Explicación de cómo la resolución preserva Idea, comprensión y Execution Intent. |
| `Required Virtues` | Virtudes inferidas o declaradas necesarias, con procedencia y nivel de certeza. |
| `Crystal Set` | Conjunto mínimo propuesto de Crystals, Faces y relaciones aplicables. |
| `Selection Rationale` | Motivo verificable de inclusión y exclusión de candidatos relevantes. |
| `Coverage` | Virtudes cubiertas, parcialmente cubiertas y no cubiertas. |
| `Contradictions` | Conocimiento incompatible o interpretaciones que deben preservarse y resolverse. |
| `Knowledge Gaps` | Conocimiento faltante sin inventar una Face o Crystal prematuramente. |
| `Context Limits` | Condiciones bajo las cuales la resolución resulta aplicable. |
| `Epistemological Assertions` | Estado y procedencia de cada elemento utilizado, sin sobrescribir su historia. |
| `Suggested Composition` | Forma propuesta de combinar el Crystal Set para el resultado solicitado. |
| `Suggested Actions` | Acciones posibles separadas de su autorización y ejecución. |
| `Approval Requirements` | Decisiones humanas o técnicas necesarias antes de producir efectos. |
| `Sources` | Identidades, relaciones, evidencia y representaciones que respaldan la resolución. |
| `Uncertainties` | Supuestos, confianza cualitativa y cuestiones abiertas. |
| `Compilation Receipt` | Identidad e integridad de la representación exacta entregada al actor. |

### Suficiencia

Toda resolución debe declarar uno de estos outcomes conceptuales:

- `SUFFICIENT`: el Crystal Set cubre las virtudes requeridas dentro del contexto declarado;
- `PARTIALLY_SUFFICIENT`: existe conocimiento útil, pero permanecen gaps o decisiones explícitas;
- `INSUFFICIENT`: el Patrimonio no permite satisfacer la solicitud sin nuevo razonamiento o conocimiento;
- `CONTRADICTORY`: existen alternativas incompatibles que MINA no tiene autoridad para decidir;
- `UNRESOLVABLE`: la solicitud, el Patrimonio o sus verificaciones impiden una respuesta confiable.

Estos outcomes describen la resolución, no el valor permanente de un Crystal.

## Compilation Receipt

El recibo permite reproducir qué conocimiento y representación recibió un actor sin convertir el transporte en fuente de verdad.

Debe preservar conceptualmente:

- identidad de la Compilation;
- identidad de la resolución y solicitud;
- identidades permanentes del Crystal Set;
- relaciones y Faces incluidas;
- afirmaciones epistemológicas aplicadas;
- materializaciones utilizadas;
- política y capacidad del actor;
- algoritmo e integridad de la representación;
- momento y procedencia de generación;
- límites de exposición o elementos omitidos.

Una nueva solicitud puede producir otro recibo sin crear versiones de los Crystals o Faces incluidos.

## EvidenceSubmission

### Propósito

Devolver experiencia observable al ecosistema conservando la diferencia entre ejecución, evidencia, observación y conocimiento.

### Contenido mínimo

| Concepto | Significado |
|---|---|
| `Evidence Identity` | Identidad permanente del aporte. |
| `Resolution and Receipt` | Resolución y representación efectivamente utilizadas. |
| `Production Reference` | Acción, proyecto, Execution u otro efecto observado. |
| `Outcome` | Resultado ocurrido, incluido fallo, abandono o desviación. |
| `Observed Facts` | Datos verificables separados de interpretación. |
| `Artifacts and Checks` | Artefactos, comandos, tests, mediciones o fuentes permitidas. |
| `Context` | Condiciones reales bajo las que se produjo el resultado. |
| `Deviations` | Diferencias entre la resolución, la acción aprobada y lo ejecutado. |
| `Uncertainties` | Límites y datos todavía no comprobados. |
| `Producer` | Actor y capacidad que originaron la evidencia. |

MINA puede relacionar y evaluar el aporte. No puede convertirlo automáticamente en Face, Crystal o verdad. Cuando corresponda, deberá originar una `LearningProposal` sometida al gobierno de cristalización.

## Descubrimiento y bootstrap

Un proyecto nuevo necesita una raíz mínima de confianza para encontrar MINA. El bootstrap universal deberá declarar conceptualmente:

- adopción de DIAMONT;
- identidad y contexto básico del proyecto;
- localizador o mecanismo de descubrimiento de MINA;
- identidad confiable del Patrimonio o autoridad verificadora;
- capacidades habilitadas;
- política de exposición y devolución de evidencia;
- comportamiento requerido ante indisponibilidad.

El bootstrap no contiene el Patrimonio ni instrucciones específicas para un modelo. Los adaptadores de herramientas deben derivar de este contrato común.

## Indisponibilidad y degradación

Si MINA no está disponible o la resolución no puede verificarse:

- el actor debe informar la condición;
- puede continuar únicamente con conocimiento ya recibido y verificable si su autoridad lo permite;
- debe identificar explícitamente el recibo utilizado;
- no puede afirmar que consultó el Patrimonio vigente;
- no puede seleccionar o inventar Crystals por conveniencia;
- toda producción degradada debe quedar marcada para observación.

El modo offline es una capacidad futura del protocolo, no una excepción silenciosa.

## Seguridad y exposición mínima

El acceso universal no implica acceso irrestricto. MINA debe poder componer una resolución sin revelar conocimiento, evidencia o contexto fuera de la autoridad del actor.

Toda representación debe aplicar:

- mínimo conocimiento necesario;
- clasificación y procedencia;
- restricciones de proyecto o ámbito;
- no inclusión de secretos por defecto;
- auditoría de consulta y entrega;
- explicación de omisiones que afecten suficiencia, sin revelar el contenido protegido.

## Compatibilidad conceptual

El protocolo puede evolucionar técnicamente sin versionar conocimiento. La compatibilidad del transporte o del contrato de intercambio es distinta de la identidad permanente de Crystals y Faces.

Toda evolución futura debe preservar:

- significado de las entradas y salidas;
- capacidad de correlación y reproducción;
- distinción entre conocimiento, propuesta, approval, producción y evidencia;
- comportamiento explícito ante campos o capacidades no comprendidos;
- independencia respecto del actor y del modelo de IA.

## Primer perfil experimental: Analyze

La primera capacidad pública utiliza un subconjunto read-only del protocolo:

```text
KnowledgeRequest
  Idea
  Shared Understanding Reference
  Project Context
  Execution Intent = analyze
  Actor Capability
  Authority Context = no execution
        ↓
MINA Analyze
        ↓
MinaResolution
  Intent Alignment
  Required Virtues
  Crystal Set
  Coverage
  Gaps and Contradictions
  Suggested Composition
  Suggested Actions without approval
  Sources and Uncertainties
  Compilation Receipt
```

Este perfil:

- consulta el Patrimonio en modo read-only;
- ejecuta `Before Create, Search`;
- no realiza búsqueda externa;
- no instala ni ejecuta materializaciones;
- no aprueba acciones;
- no recibe todavía escritura canónica;
- no cristaliza resultados.

## Criterios del primer experimento

El protocolo habrá demostrado utilidad inicial cuando:

1. un proyecto nuevo declare adopción mediante un bootstrap agnóstico de proveedor;
2. un actor nuevo formule una `KnowledgeRequest` sin seleccionar manualmente un Crystal;
3. MINA encuentre un Crystal real nacido en otro proyecto;
4. la resolución explique Faces, evidencia, aplicabilidad, gaps y selección;
5. el actor verifique el `Compilation Receipt`;
6. dos actores con capacidades distintas reciban representaciones diferentes del mismo Crystal Set sin alterar el conocimiento;
7. una producción conserve trazabilidad hasta la solicitud y la resolución;
8. la evidencia regrese sin modificar automáticamente el Patrimonio;
9. la indisponibilidad de MINA produzca un fallo o degradación explícitos;
10. ningún paso requiera que una persona transfiera manualmente archivos, commits o conocimiento especializado entre workers.

## Decisiones pendientes de implementación

- transporte y serialización;
- forma de identidad, firma e integridad;
- descubrimiento y autenticación;
- esquema persistente del Patrimony Store;
- modelo de autorización y ámbitos;
- lifecycle técnico de requests y resolutions;
- determinismo y formato de Compilations;
- adaptadores para agentes y proyectos;
- estrategia online, local y offline;
- observabilidad, disponibilidad y recuperación.

Estas decisiones deben derivar del primer experimento y no alterar el contrato cognitivo sin nuevo razonamiento conjunto.

## Perfil técnico derivado

[MINA Analyze — Experimental Interoperability Profile](mina-analyze-experimental-profile.md) concreta transporte, bootstrap, identidad, integridad, lifecycle y errores para el primer corte vertical read-only. Continúa siendo candidato experimental y no modifica este contrato cognitivo.
