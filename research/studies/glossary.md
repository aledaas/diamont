# Glosario provisional

Los términos de este glosario son instrumentos de investigación. Su presencia no implica que vayan a convertirse en entidades de software.

## Conocimiento cristalizado

Conocimiento al que se le ha dado una forma durable, identificable y trazable, suficientemente precisa para ser interpretado o transformado fuera de la conversación que lo originó.

La hipótesis [Crystal Graph](../../discoveries/0001-crystal-graph.md) propone que adopta la forma de uno o más Cristales permanentes. Cada Crystal evoluciona mediante Faces y recristalización; el Graph evoluciona además mediante relaciones. Ninguno de estos mecanismos constituye versionado.

Pendiente: definir criterios de suficiencia, granularidad y vigencia.

## Cristalización

Proceso por el cual comprensión contextual se expresa como conocimiento durable sin ocultar procedencia, decisiones, límites ni incertidumbres relevantes.

## Crystal

Unidad permanente de conocimiento que emerge al cristalizar una comprensión compartida. Posee una única identidad, no se versiona ni se reemplaza. Puede aumentar su capacidad mediante Faces incorporadas por recristalización y relacionarse con otros Crystals.

## Face

Virtud o dimensión del conocimiento que permite a un Crystal satisfacer una necesidad determinada. Una Face pertenece al mismo Crystal únicamente cuando conserva coherencia con su identidad conceptual. No posee versiones y no convierte al Crystal en `v2`, `v3` o equivalente.

## Recrystallization

Proceso por el cual conocimiento adicional, respaldado por evidencia, se incorpora como una nueva Face de un Crystal existente preservando su identidad. La genealogía registra el contexto, proyecto y evidencia que originaron la Face. No es una revisión, generación o versión.

## Composer

Responsabilidad conceptual que compara las virtudes requeridas por una Idea con las Faces disponibles en el Patrimonio, evalúa suficiencia y detecta gaps. Propone un nuevo Crystal sólo cuando ninguna composición ni recristalización coherente puede satisfacer el conocimiento faltante.

## MINA

Capacidad cognitiva de custodiar, explorar y operar el Patrimonio para ayudar a resolver Ideas. Es el puente conceptual hacia los proyectos: descubre Crystals y Faces, evalúa suficiencia, detecta gaps y sugiere composiciones. No es el Patrimonio, su propietaria, una aplicación, un modelo de IA o una interfaz concreta; no define DIAMONT, administra proyectos ni ejecuta producción. Esta distinción refina la definición provisional registrada en el [Discovery 0003](../../discoveries/0003-crystal-orchestration-intent-recentering.md) y se investiga en [Acceso Universal al Patrimonio](../../discoveries/0004-universal-patrimony-access.md).

## Patrimonio

Activo cognitivo lógico y vivo compuesto por Crystals, Faces, genealogías, relaciones, evidencia, observaciones, Discoveries y composiciones conocidas, conservando explícitamente el estado epistemológico de cada elemento. No equivale a Git, una base de datos, una Compilation, un repositorio de archivos o un modelo de IA. MINA lo custodia y explora sin ser su propietaria.

## Local MINA

Primera implementación técnica propuesta para interactuar localmente con MINA: leer representaciones del Patrimonio, asistir en la interpretación de una Idea, aplicar DIAMONT y producir una propuesta razonada. Podría alojarse inicialmente como herramienta modular dentro del Runner Go sin pertenecer conceptualmente al Runner. No es todavía un diseño aprobado ni define la identidad de MINA.

## Known Implementation

Implementación externa o interna conocida de conocimiento expresado por un Crystal, evaluada dentro de un contexto tecnológico. Un package o framework no se convierte automáticamente en Crystal y no redefine su identidad.

## Context Narrowing

Reducción contextual del espacio de búsqueda de implementaciones o conocimiento aplicable, usando restricciones explícitas del proyecto sin redefinir el Crystal ni elevar una preferencia local a verdad permanente.

## Controlled Crystallization

Separación obligatoria entre resultado de ejecución y conocimiento aceptado. Evidencia y observaciones originan una propuesta; sólo una aprobación de cristalización permite enriquecer el Patrimonio.

## Crystal Graph

Modelo conceptual en investigación donde los Cristales constituyen nodos permanentes y sus relaciones expresan la evolución del conocimiento. El Graph representa el conocimiento completo del proyecto, no su ubicación física. No define todavía atributos, relaciones, reglas de vigencia ni almacenamiento.

## Crystal Genealogy

Procedencia permanente de un Crystal: intención, razonamiento, Cristales participantes, descubrimientos de respaldo, producciones originadas y nuevo conocimiento derivado. La genealogía forma parte del conocimiento y no se reduce al historial de un archivo.

## Knowledge Topology

Línea de investigación que estudia la organización relacional del conocimiento y distingue el Crystal Graph de los árboles, directorios y documentos usados para persistirlo físicamente. Véase [Knowledge Topology](../../discoveries/0002-knowledge-topology.md).

## Intent Re-Centering

Capacidad propuesta para recorrer el Crystal Graph hasta la intención original y evaluar continuamente la alineación entre intención, comprensión, Cristales, compilaciones, producción y observaciones. Busca mantener el rumbo, no revertir el proceso.

## Crystal Orchestrator

Responsabilidad conceptual futura que construiría el conocimiento adecuado para cada actor y contexto. No administra tareas, agentes ni prompts; investiga relevancia, contradicciones, restricciones y composición de Crystal Sets. No constituye todavía un componente aprobado.

## Crystal Set

Conjunto mínimo de Cristales y relaciones contextualmente necesarios para ejecutar correctamente una acción. La hipótesis [Crystal Orchestration](../../discoveries/0003-crystal-orchestration-intent-recentering.md) lo propone como unidad de producción de DIAMONT.

## Execution Intent

Propósito operativo concreto para el que un actor solicita conocimiento: comprender, diseñar, planificar, implementar, revisar, observar o aprender. No reemplaza la intención original; la contextualiza para una participación y debe conservar trazabilidad hacia ella.

## MinaResolution

Respuesta cognitiva inmutable de MINA a una solicitud determinada. Explica alineación, virtudes requeridas, Crystal Set, cobertura, gaps, contradicciones, fuentes, incertidumbres y la representación entregada. No constituye approval, Task, Crystal ni ejecución. Véase el [MINA Universal Knowledge Protocol](../protocols/mina-universal-knowledge-protocol.md).

## Compilation Receipt

Registro verificable de la Compilation y representación exactas entregadas a un actor para una resolución. Conserva identidades, integridad, procedencia, capacidad, política y límites sin crear versiones de los Crystals o Faces incluidos.

## Crystal Affinity

Hipótesis sobre el grado de adecuación de un Crystal a una intención, contexto, capacidad o acción. No posee todavía definición formal ni mecanismo de cálculo.

## Compilación

Transformación reproducible de conocimiento y políticas identificadas hacia una representación adecuada para un propósito de producción concreto. Puede producir instrucciones, planes, prompts, contratos o configuraciones; no se limita a código ni a IA.

## Intención

Expresión situada de un cambio o efecto deseado. Puede ser incompleta, contradictoria o evolucionar durante el razonamiento.

## Razonamiento conjunto

Interacción en la que participantes humanos o artificiales exploran evidencia, alternativas, supuestos y consecuencias. No implica igualdad de autoridad ni consenso automático.

## Comprensión compartida

Conjunto verificable de afirmaciones que los participantes interpretan de manera suficientemente compatible para continuar, acompañado por desacuerdos e incertidumbres explícitos.

## Producción

Aplicación de una compilación para provocar acciones, artefactos o efectos observables. Incluye, pero no se restringe a, desarrollo de software.

## Observación

Evidencia capturada sobre una producción o sobre el entorno relevante. Debe distinguir dato, interpretación y fuente.

## Aprendizaje

Cambio trazable que emerge de observaciones validadas. Puede originar una nueva Face mediante recristalización, una relación o —como último recurso— un nuevo Crystal. Nunca crea una versión ni elimina la historia anterior.

## Agente

Actor humano o artificial capaz de interpretar contexto y realizar transformaciones o acciones bajo autoridad definida. DIAMONT no presume un proveedor ni una capacidad específica.

## Portfolio

Primera plataforma prevista para materializar conocimiento DIAMONT en proyectos. Portfolio aporta contexto, produce evidencia y consume composiciones sugeridas por MINA; no define la metodología ni custodia el Patrimonio.
