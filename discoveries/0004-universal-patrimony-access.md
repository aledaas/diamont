# Descubrimiento 0004 — Acceso Universal al Patrimonio

## Estado

**Discovery · Observed.**

Este documento registra una intención y un comportamiento observados mediante razonamiento conjunto. No modifica la Constitución, no cristaliza una arquitectura, no selecciona un protocolo ni autoriza implementación.

## Procedencia

Este descubrimiento surge al intentar transferir conocimiento DIAMONT a Development Portfolio. La adopción actual exige que un actor prepare una Compilation, la publique, comunique sus commits e integridad y que otro actor la resuelva antes de trabajar.

El mecanismo preserva trazabilidad, pero revela una limitación: la comprensión disponible depende todavía de una transferencia manual entre actores y repositorios. Un nuevo worker no puede descubrir por sí mismo qué conocimiento necesita para una acción determinada.

La investigación de [Crystal Orchestration, Intent Re-Centering & MINA](0003-crystal-orchestration-intent-recentering.md) ya propuso selección contextual, Crystal Sets y MINA Local. El presente Discovery extiende esa línea y corrige una ambigüedad de identidad que no debe reescribirse silenciosamente.

## Intención observada

Todo proyecto que adopte DIAMONT debe poder incorporar actores humanos o artificiales reemplazables sin transferirles manualmente el Patrimonio ni depender de que otro actor compile, publique y explique previamente el conocimiento aplicable.

Ante una acción determinada, el actor debe poder declarar su intención y contexto, consultar una capacidad común y recibir el conjunto mínimo de conocimiento adecuado, verificable y trazable.

El objetivo no es centralizar decisiones en un modelo de IA. Es hacer universalmente accesible el conocimiento que pertenece al Patrimonio.

## Descubrimiento

El Patrimonio y MINA no son la misma cosa.

- **DIAMONT** define la metodología, sus leyes y su gobierno.
- **El Patrimonio** es el conocimiento lógico compuesto por Crystals, Faces, relaciones, genealogía, evidencia y elementos con distinto estado epistemológico.
- **MINA** es la capacidad cognitiva que custodia, explora, selecciona, compone y presenta ese conocimiento sin poseerlo.
- **Git, bases de datos y Compilations** son representaciones o materializaciones del Patrimonio; ninguna constituye por sí sola su identidad conceptual.
- **Portfolio, Runner, Workers y otros proyectos** consumen conocimiento mediante MINA sin apropiarse de él ni conocer necesariamente su persistencia.

Esta separación refina la definición provisional del Discovery 0003, que describía a MINA simultáneamente como patrimonio cognitivo y capacidad metodológica. Se conserva aquella formulación como procedencia histórica; la hipótesis actual distingue el activo cognitivo de la capacidad que lo opera.

## Principio de independencia de representación

La identidad del conocimiento no depende del mecanismo utilizado para almacenarlo, consultarlo, distribuirlo o auditarlo.

Un mismo Patrimonio puede poseer representaciones distintas para necesidades diferentes:

- una persistencia operacional consultable;
- una exportación portable y revisable;
- una Compilation inmutable para una producción;
- una representación específica para la capacidad de un actor.

Cambiar, reconstruir o sustituir una representación no crea versiones de Crystals o Faces y no altera sus identidades permanentes.

## Acceso universal

Un proyecto adoptante debe declarar de forma mínima y agnóstica de proveedor que trabaja bajo DIAMONT y cómo acceder a MINA. Esa adopción no debe contener una copia autoritativa del Patrimonio ni depender de instrucciones exclusivas para Codex, GPT, Claude, Copilot o cualquier otro actor.

La hipótesis de comportamiento es:

```text
Actor receives an action
        ↓
Idea + Project Context + Execution Intent
        ↓
MINA explores the Patrimony
        ↓
Required Virtues + relevant Crystals and Faces
        ↓
Sufficiency and Gap evaluation
        ↓
Crystal Set
        ↓
verifiable actor representation
        ↓
Production
        ↓
Evidence and Observations
```

El actor no necesita conocer de antemano qué Crystal debe usar. La selección contextual pertenece a MINA y debe poder explicarse, verificarse y recorrerse nuevamente hasta la intención.

## Compilations bajo demanda

Una Compilation continúa siendo una representación inmutable, verificable y reproducible derivada del conocimiento seleccionado. No constituye el Patrimonio ni una versión de él.

La hipótesis emergente es que MINA pueda construirla bajo demanda como evidencia exacta del Crystal Set y de la representación entregada a un actor. De este modo, la Compilation funciona como recibo reproducible de una participación, no como transferencia manual obligatoria entre personas o agentes.

Git puede conservar exportaciones, revisión, historia y distribución offline sin convertirse en el único mecanismo de descubrimiento operacional.

## Centralización sin apropiación

La disponibilidad común del Patrimonio requiere una materialización operacional compartida, pero centralizar el acceso no transfiere propiedad intelectual a:

- la base de datos;
- MINA;
- un proveedor de infraestructura;
- un modelo de IA;
- Portfolio;
- Runner;
- un worker individual.

Los consumidores no deben depender del esquema físico ni modificar directamente el conocimiento cristalizado. Los proyectos aportan evidencia, observaciones y propuestas. Toda incorporación al Patrimonio conserva los gates de comprensión compartida, `Before Create, Search`, recristalización y gobierno aplicables.

## Persistencia operacional como hipótesis técnica

Una base de datos compartida se considera candidata para materializar operacionalmente el Crystal Graph y permitir consultas concurrentes, relaciones, genealogía, auditoría e integridad.

PostgreSQL constituye una primera candidata razonable para experimentación por sus transacciones, restricciones, consultas recursivas y operación conocida. Esta observación no convierte PostgreSQL en ley, fuente conceptual de verdad ni tecnología irreversible.

El modelo deberá preservar al menos:

- identidad permanente de Crystals y Faces;
- relaciones explícitas;
- genealogía y procedencia;
- evidencia y observaciones diferenciadas;
- afirmaciones epistemológicas auditables sin borrar estados anteriores;
- materializaciones conocidas;
- Crystal Sets y Compilations reproducibles;
- consumo y resultados trazables.

No deberán existir `CrystalVersion`, `FaceVersion`, `Crystal v2` ni equivalentes conceptuales.

## MINA Local y la frontera del Runner

Hospedar una primera MINA Local dentro del Runner continúa siendo una estrategia experimental posible, pero no puede convertir al Runner en propietario, definición ni punto universal obligatorio del Patrimonio.

La intención de acceso universal exige que la capacidad cognitiva pueda ser consumida por múltiples proyectos y actores. La ubicación inicial deberá permitir evolución o extracción sin cambiar la identidad de MINA, del Patrimonio, de los Crystals ni de los contratos cognitivos.

## Primer experimento requerido

La hipótesis debe probarse mediante un único corte vertical real, no mediante una migración completa:

```text
knowledge observed in Project A
        ↓
one reusable Crystal with Faces, relations,
materialization, evidence and genealogy
        ↓
operational Patrimony representation
        ↓
MINA contextual selection
        ↓
Crystal Set + automatic Compilation
        ↓
a new worker in Project B
        ↓
production + returned evidence
```

El experimento debe demostrar que un actor nuevo descubre la metodología y el conocimiento aplicable sin recibir manualmente documentos, commits o instrucciones especializadas de otro actor.

## Restricciones de la investigación

- El protocolo universal no se diseña en este Discovery.
- No se define todavía una API, transporte, autenticación o esquema SQL.
- No se crea una base de datos ni un servicio.
- No se migra el Patrimonio existente.
- No se modifica una Compilation publicada.
- No se modifica Portfolio, Runner ni otro proyecto.
- No se concede a MINA autoridad para aprobar producción o cristalización.
- No se permite escritura directa de consumidores sobre conocimiento cristalizado.

## Preguntas para la siguiente etapa

1. ¿Cuál es el protocolo mínimo agnóstico de actores para expresar Idea, Project Context y Execution Intent?
2. ¿Qué constituye una respuesta verificable de MINA y cómo se explica la selección del Crystal Set?
3. ¿Qué raíz de confianza permite a un proyecto nuevo localizar MINA y verificar su respuesta?
4. ¿Cómo opera un actor cuando MINA no está disponible sin inventar conocimiento ni perder trazabilidad?
5. ¿Cómo se autentican proyectos y se limita la exposición de conocimiento sensible?
6. ¿Cómo se generan Compilations bajo demanda de forma determinista?
7. ¿Qué parte del Patrimonio debe poder exportarse y reconstruirse independientemente de la persistencia operacional?
8. ¿Cómo devuelve un proyecto evidencia sin adquirir autoridad de cristalización?
9. ¿Qué conocimiento real permite comprobar el primer flujo entre dos proyectos?
10. ¿Qué evidencia justificaría separar una primera MINA Local del Runner?

## Relación con la Constitución

Esta investigación no modifica las leyes:

- las leyes 1 a 4 exigen que toda selección preserve intención, razonamiento, comprensión y pureza de propósito;
- la ley 5 impide que MINA, una base de datos o un modelo se apropien del conocimiento;
- las leyes 6 y 7 permiten producir representaciones distintas desde una fuente lógica común para capacidades reemplazables;
- la ley 8 exige que la producción devuelva experiencia al proceso de conocimiento sin cristalización automática;
- la ley 9 mantiene el acceso universal subordinado al valor que originó la intención;
- la ley 10 mantiene DIAMONT independiente de Portfolio y de cualquier implementación de MINA.

Esta relación es interpretativa y no constituye una enmienda constitucional.

## Investigación derivada

El [MINA Universal Knowledge Protocol](../research/protocols/mina-universal-knowledge-protocol.md) formaliza como especificación conceptual candidata la interacción mínima entre un actor, MINA y el Patrimonio. No convierte este Discovery en arquitectura aprobada ni autoriza implementación.
