# Hipótesis de transición conceptual

Este estudio permanece como investigación y no se clasifica todavía como Crystal.

## Carácter del documento

Esta es una propuesta para orientar investigación. No constituye un diseño de datos, una arquitectura aprobada ni un plan de implementación.

## Cambio de eje

El modelo actual responde principalmente a:

> ¿Qué trabajo está planificado, quién lo ejecuta y en qué estado está?

DIAMONT investiga un eje complementario y eventualmente dominante:

> ¿Qué se comprende, de dónde proviene, para qué puede compilarse, qué produjo y qué aprendimos al observarlo?

## Objetos conceptuales candidatos

Los siguientes nombres son provisionales y describen responsabilidades, no tablas futuras.

| Candidato | Responsabilidad que se investiga | No debe confundirse con |
|---|---|---|
| Intención | Expresar un cambio deseado, su contexto, autoría y restricciones iniciales. | Una feature ya aprobada o una solución predeterminada. |
| Traza de razonamiento | Preservar preguntas, alternativas, evidencia, desacuerdos y supuestos relevantes. | Una transcripción completa sin selección ni procedencia. |
| Comprensión compartida | Registrar afirmaciones que los participantes consideran mutuamente entendidas y sus incertidumbres. | Consenso forzado o verdad definitiva. |
| Cristalización | Dar identidad permanente a conocimiento durable, trazable y apto para transformación. | Un documento estático, una versión, una task o un prompt. |
| Compilación | Transformar cristalizaciones y políticas para un propósito, agente y contexto concretos. | La fuente de verdad o un formato exclusivo de IA. |
| Producción | Ejecutar una compilación y conservar acciones, artefactos y efectos. | Sólo escribir código. |
| Observación | Capturar evidencia del comportamiento o efecto producido. | Un estado `COMPLETED` sin evidencia. |
| Aprendizaje | Relacionar observaciones con conocimiento confirmado, corregido, reemplazado o descartado. | Notas finales que no modifican conocimiento. |

## Relaciones hipotéticas

- una intención puede originar múltiples comprensiones y cristalizaciones;
- una cristalización puede relacionarse con otras y conservar su procedencia sin reemplazarlas;
- una compilación referencia identidades exactas de Cristales y el estado aplicable de políticas y contexto;
- una producción ejecuta una compilación, sin apropiarse del conocimiento fuente;
- una observación puede referirse a varias producciones o existir sin ejecución automatizada;
- un aprendizaje propone una operación explícita sobre conocimiento y requiere criterio de aceptación;
- cualquier etapa puede descubrir insuficiencia y volver a razonamiento, sin invalidar la historia anterior.

Estas relaciones deben contrastarse con episodios reales antes de formalizar cardinalidades o estados.

## Redistribución provisional de responsabilidades

| Responsabilidad actual | Eje DIAMONT candidato | Condición antes de reemplazar |
|---|---|---|
| Agrupar objetivos por horizonte (`Milestone`) | Vistas o compromisos sobre intenciones/cristalizaciones. | Demostrar que planificación y conocimiento pueden evolucionar independientemente. |
| Especificar alcance y aceptación (`Feature`) | Intención + comprensión + cristalizaciones + decisiones. | Preservar gobierno, prioridad, dependencias, aprobación y comunicación humana. |
| Descomponer/asignar trabajo (`Task`) | Compilaciones y unidades de producción derivadas. | Separar claramente conocimiento durable de instrucciones efímeras y control de concurrencia. |
| Registrar intentos (`Execution`) | Producción sobre una compilación inmutable. | Mantener cola, permisos, workspace, eventos, reintentos, costos, evidencia y auditoría. |

La transición no requiere necesariamente eliminar todos estos conceptos. Puede convertirlos en proyecciones operativas, compatibles y reconstruibles a partir de un eje de conocimiento.

## Estrategia progresiva propuesta

### Fase A — Observar sin cambiar Portfolio

Documentar episodios con el protocolo de investigación y mapear artefactos actuales a etapas candidatas. Resultado esperado: lenguaje revisado y patrones/contraejemplos.

### Fase B — Representación externa experimental

Modelar casos en documentos históricos de este repositorio, sin confundir las revisiones editoriales del soporte con versiones del conocimiento. Probar portabilidad entre agentes y reproducción de compilaciones.

### Fase C — Modelo paralelo, sólo después de aprobación

Proponer almacenamiento aditivo en Portfolio. Las entidades actuales continuarían gobernando la operación; referencias nuevas serían opcionales y no destructivas. Esta fase necesita un diseño y autorización separados.

### Fase D — Proyecciones y doble lectura

Evaluar si Milestones, Features y Tasks pueden construirse como vistas operativas sobre conocimiento sin perder capacidades. Comparar resultados del modelo vigente y el candidato.

### Fase E — Migración selectiva

Retirar una responsabilidad a la vez sólo si existe equivalencia comprobada, trazabilidad histórica, rollback y métricas de éxito. No se presupone que todas las entidades deban desaparecer.

## Invariantes de cualquier implementación futura

- El ámbito legítimo del conocimiento controla la fuente de verdad; MINA se investiga como custodio del Patrimonio y Portfolio conserva las autorizaciones de su materialización operativa.
- Cada Crystal tiene identidad permanente y procedencia; su capacidad evoluciona mediante Faces incorporadas por recristalización y sus vínculos evolucionan mediante relaciones. Nunca se reemplaza ni versiona.
- Las compilaciones indican exactamente qué fuentes y políticas usaron.
- El formato canónico es abierto, exportable y legible sin el agente creador.
- Los adaptadores específicos de proveedor viven fuera del núcleo semántico.
- La historia no se reescribe: correcciones y reemplazos son explícitos.
- Las observaciones conservan evidencia y pueden cuestionar conocimiento previo.
- La incertidumbre puede representarse sin fingir cierre.

## Criterios para rechazar esta propuesta

Debe revisarse si los casos muestran que:

- el conocimiento no puede delimitarse sin perder contexto esencial;
- la secuencia de etapas crea burocracia sin mejorar resultados;
- la compilación no es reproducible entre agentes razonablemente distintos;
- el modelo debilita responsabilidad, aprobación o seguridad;
- los contenedores actuales resultan ser mejores unidades fundamentales en dominios relevantes.
