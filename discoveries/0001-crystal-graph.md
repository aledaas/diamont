# Descubrimiento 0001 — Crystal Graph

## Estado

**Hipótesis activa de investigación.**

Este documento no crea una ley constitucional, no aprueba una arquitectura y no autoriza cambios productivos. Registra un descubrimiento que deberá contrastarse mediante casos reales.

La línea relacionada [Knowledge Topology](0002-knowledge-topology.md) profundiza la diferencia entre el grafo conceptual de conocimiento y su persistencia física.

La línea [Crystal Orchestration & Intent Re-Centering](0003-crystal-orchestration-intent-recentering.md) investiga cómo recorrer ese grafo para preservar dirección y construir el conocimiento adecuado para cada producción.

## Contexto

La investigación inicial asumía que documentos, descubrimientos y principios podían representar la evolución del conocimiento mediante versiones. Ese supuesto proviene del manejo tradicional de artefactos de software y podría no representar la naturaleza del conocimiento cristalizado.

Crystal Graph propone distinguir explícitamente:

1. conversación;
2. comprensión compartida;
3. cristalización;
4. conocimiento permanente.

## Descubrimiento

Una conversación constituye materia prima, no conocimiento. Puede contener información, alternativas, desacuerdos, errores y contexto efímero.

El conocimiento aparece cuando los actores relevantes del razonamiento conjunto alcanzan comprensión compartida. Esa comprensión puede cristalizarse como una unidad permanente de conocimiento denominada **Crystal**.

No toda conversación alcanza comprensión compartida. No toda comprensión necesita cristalizarse.

## Hipótesis central

Un Crystal:

- nunca se versiona;
- nunca se reemplaza;
- nunca pierde el valor adquirido durante su cristalización;
- conserva identidad permanente mediante un UUID;
- puede enriquecerse mediante nuevos descubrimientos;
- puede relacionarse con otros Cristales;
- puede dejar de representar el estado vigente de una intención;
- puede permanecer como evidencia histórica.

La evolución de un Crystal no altera su identidad ni reescribe su historia. Se expresa mediante nuevas Faces incorporadas por recristalización y mediante relaciones explícitas con otros Crystals. Un nuevo Crystal sólo corresponde cuando el conocimiento no pertenece coherentemente a ninguno existente.

## Ciclo conceptual emergente

```text
Conversation
    ↓
Collaborative Reasoning
    ↓
Shared Understanding
    ↓
Crystal
    ↓
Relations
    ↓
Compilation
    ↓
Production
    ↓
Observation
    ↓
New Knowledge + Evidence
    ↓
Face or New Crystal as last resort
```

El diagrama expresa relaciones conceptuales, no un workflow lineal ni estados de implementación. Una observación puede reabrir razonamiento antes de originar una Face o, únicamente cuando el conocimiento no pertenece coherentemente a ningún Crystal existente, un nuevo Crystal.

## Principio emergente

No toda conversación produce un Crystal.

No todo Crystal produce software.

Pero toda producción válida debe poder rastrearse hasta uno o más Cristales.

## Crystal Graph

El **Crystal Graph** es la hipótesis de que el conocimiento permanente se representa como un grafo:

- los Cristales son nodos con identidad permanente;
- las relaciones expresan procedencia, enriquecimiento, compatibilidad, contradicción, aplicabilidad y otras formas todavía no definidas;
- la vigencia es una evaluación contextual del grafo, no una propiedad que destruye o reemplaza nodos anteriores;
- una compilación selecciona Cristales y relaciones pertinentes para una intención, capacidad y contexto concretos;
- una producción conserva trazabilidad hacia el conjunto exacto que la originó;
- la observación puede conducir a una nueva Face del mismo Crystal o, como último recurso, a un nuevo Crystal, siempre preservando genealogía y evidencia.

Los tipos de relación enumerados son candidatos de investigación, no un catálogo aprobado.

## Relación con la Constitución

Crystal Graph no modifica las leyes constitucionales. Propone un mecanismo conceptual compatible que debe validarse:

- **Leyes 1 y 4:** todo Crystal debe preservar y poder rastrearse hasta la intención que lo originó.
- **Leyes 2 y 3:** una conversación sólo puede originar un Crystal después del razonamiento conjunto y la comprensión compartida.
- **Ley 5:** la identidad permanente ayuda a que el conocimiento pertenezca al proyecto y sobreviva a actores y modelos.
- **Ley 6:** la compilación debe derivar de uno o más Cristales identificables sin convertir su representación compilada en fuente de verdad.
- **Ley 8:** la retroalimentación puede expresarse mediante recristalización, nuevas Faces y relaciones, preservando identidad, genealogía y experiencia anterior.
- **Leyes 9 y 10:** el grafo debe preservar valor de negocio y permanecer independiente de Portfolio, aunque Portfolio sea su primera implementación.

Esta lectura es una interpretación investigativa de la [Constitución v0.1](../docs/CONSTITUTION.md), no una enmienda.

## Relación con el Manifiesto, la Carta y el Glosario

- El [Manifiesto](../docs/MANIFESTO.md) expresa la permanencia, propiedad y trazabilidad del conocimiento como orientación filosófica.
- La [Carta Fundacional](../docs/FOUNDATION.md) exige descubrimiento antes que diseño; por ello esta hipótesis no define tablas, APIs ni estados.
- El [Glosario](../research/studies/glossary.md) incorpora `Crystal` y `Crystal Graph` como términos provisionales y enlaza este descubrimiento como fuente.

## Consecuencia arquitectónica hipotética

Si la evidencia confirma el descubrimiento, Portfolio deberá abandonar progresivamente el versionado como representación de la evolución del conocimiento cristalizado y adoptar un grafo de Cristales relacionados.

Esto no implica eliminar el versionado técnico de archivos, esquemas, políticas, compilaciones o representaciones. La hipótesis se limita al **conocimiento cristalizado**. Distinguir estas capas evita confundir la revisión de un soporte con la evolución semántica del conocimiento.

Portfolio actualmente usa `KnowledgeDocument.version` y activación exclusiva por tipo. Ese hecho es evidencia del paradigma vigente, no prueba de que deba migrarse ahora.

## Preguntas iniciales

1. ¿Qué constituye exactamente un Crystal?
2. ¿Qué atributos mínimos posee sin convertirlo en un documento versionado?
3. ¿Qué evidencia demuestra que existió comprensión compartida suficiente para cristalizar?
4. ¿Cómo se relacionan dos Cristales?
5. ¿Las relaciones poseen identidad, procedencia y permanencia propias?
6. ¿Cómo se determina la vigencia contextual de un Crystal sin mutarlo?
7. ¿Cómo compila Portfolio un subgrafo para actores con capacidades distintas?
8. ¿Cómo se representa enriquecimiento sin modificar el Crystal original?
9. ¿Cómo conviven Cristales contradictorios o válidos bajo contextos diferentes?
10. ¿Qué diferencia un nuevo Crystal de una relación o de evidencia adjunta?
11. ¿Cómo se corrige una cristalización errónea sin borrar su valor histórico?
12. ¿Cómo registra el grafo Faces y recristalizaciones sin introducir versionado implícito bajo otro nombre?

## Evidencia necesaria

Antes de formalizar el modelo deberán documentarse, como mínimo:

- un caso donde una conversación no produzca conocimiento;
- un caso donde una comprensión compartida produzca un Crystal reutilizable;
- un enriquecimiento que preserve íntegramente el Crystal anterior;
- una contradicción entre Cristales cuya historia siga siendo valiosa;
- una compilación equivalente para dos actores o herramientas diferentes;
- una producción rastreable hasta múltiples Cristales;
- una observación que origine conocimiento nuevo sin mutar el existente;
- un caso donde la vigencia cambie según contexto sin cambiar el Crystal.

## Fuera de alcance

- diseñar tablas, índices, APIs o interfaces;
- definir un catálogo definitivo de relaciones;
- migrar `KnowledgeDocument` o cualquier dato de Portfolio;
- modificar servicios de compilación o runtime;
- declarar esta hipótesis como ley constitucional;
- asumir que Git o el historial editorial del repositorio constituyen el Crystal Graph.
