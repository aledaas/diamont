# DIAMONT — Crystal Dependency Resolution

## Problema

DIAMONT posee Crystals con identidad permanente, genealogía y capacidad de compilación, pero todavía no cuenta con un contrato explícito para declarar qué conocimiento requiere, reutiliza o hereda intelectualmente otro Crystal o proyecto.

Sin esta distinción, la reutilización queda atada a rutas físicas, referencias informales o repetición de razonamientos ya resueltos. Eso impide reconstruir con precisión el conocimiento utilizado por una producción y dificulta transportar Crystals entre proyectos.

## Intención

DIAMONT debe evitar volver a resolver continuamente conocimiento que ya fue cristalizado.

> Resolver una vez. Cristalizar una vez. Reutilizar muchas veces.

Un proyecto debe poder declarar qué Crystals consume, reutiliza, requiere, produjo localmente o utilizó para formar nuevo conocimiento.

## Principios

### La identidad no depende de la ubicación

Las relaciones conceptuales entre Crystals se declaran exclusivamente mediante UUID. Una ruta puede ayudar a materializar un Crystal en un repositorio concreto, pero nunca constituye su identidad.

Incorrecto:

```yaml
dependencies:
  - ../../crystals/authentication/knowledge.md
```

Correcto:

```yaml
dependencies:
  - crystal: 550e8400-e29b-41d4-a716-446655440000
    role: required
```

Resolver esa identidad hacia una ubicación, fuente o representación materializada será responsabilidad futura de DIAMONT.

### Reutilización explícita

La incorporación de conocimiento debe ser declarativa, rastreable y reproducible. Copiar contenido sin preservar identidad y procedencia no equivale a reutilizar un Crystal.

### Las relaciones no son equivalentes

Dependency, import y genealogy responden preguntas diferentes. Un único campo genérico ocultaría diferencias entre necesidad operativa, reutilización y procedencia intelectual.

## Semántica de `dependencies`

`dependencies` declara conocimiento requerido para comprender, utilizar o compilar correctamente el Crystal.

```yaml
dependencies:
  - crystal: uuid-a
    role: required
```

Una dependencia expresa una condición vigente de suficiencia. Si el Crystal requerido no puede resolverse, el consumidor debe reconocer que su Knowledge Set está incompleto. No se define todavía transitividad, opcionalidad, resolución de conflictos ni comportamiento ante ausencia.

## Semántica de `imports`

`imports` declara conocimiento existente reutilizado durante la construcción del Crystal.

```yaml
imports:
  - crystal: uuid-b
    role: reusable_knowledge
```

Un import preserva atribución y reutilización, pero no implica necesariamente una dependencia permanente. El Crystal resultante podría ser comprensible y compilable sin volver a resolver el import. Esta diferencia deberá validarse con casos reales.

## Semántica de `genealogy.formed_from`

`genealogy.formed_from` declara los Crystals que participaron en el origen intelectual del Crystal actual.

```yaml
genealogy:
  formed_from:
    - crystal: uuid-c
    - crystal: uuid-d
```

Genealogía describe procedencia permanente. No afirma por sí misma que el ancestro continúe siendo una dependencia operativa ni que su contenido haya sido importado literalmente.

Un mismo Crystal puede aparecer legítimamente en más de una relación cuando cumple responsabilidades distintas. Esa superposición debe ser explícita, no inferida.

## Descriptor conceptual

El descriptor mínimo puede expresar:

```yaml
id: uuid-current
name: Crystal Dependency Resolution
kind: implementation_specification
dependencies:
  - crystal: uuid-a
    role: required
imports:
  - crystal: uuid-b
    role: reusable_knowledge
genealogy:
  formed_from:
    - crystal: uuid-c
sharing:
  scope: project
```

Este ejemplo establece semántica, no un esquema definitivo. Cardinalidades, roles adicionales, validación y compatibilidad permanecen abiertos.

## Manifiesto de conocimiento del proyecto

`diamont.yaml` declara el Knowledge Set utilizado por un proyecto:

```yaml
diamont: "0.1"
project:
  id: diamont
  name: DIAMONT
requires:
  - crystal: uuid-a
  - crystal: uuid-b
```

`requires` no describe paquetes de software. Declara conocimiento que el proyecto reconoce como parte de su conjunto explícito. No se implementa resolución automática en esta etapa.

## Crystal Set

Un **Crystal Set** es el conjunto explícito de conocimiento utilizado para una intención, compilación, acción o proyecto.

```text
Intent
   ↓
Crystal Discovery
   ↓
Dependency Resolution
   ↓
Crystal Set
   ↓
Compilation
   ↓
Production
```

El Set debe permitir reconstruir posteriormente qué Crystals y relaciones informaron un resultado concreto. El manifiesto del proyecto expresa un Knowledge Set amplio; una compilación puede utilizar un subconjunto contextual. La equivalencia o diferencia formal entre ambos continúa abierta.

## Flujo futuro

```text
Intent
   ↓
Search compatible existing Crystals
   ↓
Resolve knowledge dependencies
   ↓
Build Crystal Set
   ↓
Detect missing knowledge
   ↓
Reason only about gaps
   ↓
Crystallize new knowledge
   ↓
Production
```

Este flujo es conceptual. No prescribe todavía búsqueda, ranking, descarga ni automatización.

## Portabilidad

Un Crystal puede utilizarse en múltiples proyectos sin cambiar de identidad:

```text
Portfolio ──────────┐
Factory ────────────┼── Crystal X
Cafetería Digital ──┘
```

Cada proyecto puede materializarlo en una ubicación diferente. El UUID permanece estable y permite conservar atribución, genealogía y trazabilidad entre proyectos.

## Sharing

El descriptor contempla una política mínima:

```yaml
sharing:
  scope: project
```

Scopes candidatos futuros:

- `private`;
- `project`;
- `organization`;
- `public`.

Esta etapa preserva el concepto, pero no define autorización, herencia, publicación ni control de acceso.

## Evolución futura: Crystal Registry

Un Registry podría:

- resolver UUIDs;
- descubrir Crystals;
- localizar fuentes;
- validar integridad;
- gestionar políticas de compartición;
- facilitar distribución entre proyectos.

El Registry no forma parte de esta implementación.

## Evolución futura: Crystal Resolver

Un Resolver podría transformar:

```text
UUID → ubicación / fuente / representación materializada
```

Debe preservar el principio de que la identidad no depende de la ubicación. No se define todavía si el Resolver será local, remoto, distribuido o compuesto.

## Dirección funcional futura

El contrato podría sostener herramientas conceptualmente equivalentes a:

```text
diamont require <crystal>
diamont install
diamont graph
diamont family <uuid>
diamont compile
```

Estos comandos ilustran capacidades futuras. No constituyen una interfaz aprobada ni se implementan aquí.

## Lockfile: pregunta abierta

No se introduce `diamont.lock`.

Si un Crystal posee identidad permanente y no se versiona, debe investigarse qué fijaría exactamente un lockfile:

- Crystal Set exacto;
- compilación exacta;
- topología utilizada;
- hashes de contenido;
- estado reproducible del conocimiento.

Resolver prematuramente esta pregunta podría reintroducir versionado implícito o confundir identidad con materialización.

## Preguntas abiertas

1. ¿Cuándo un conocimiento reutilizado es dependency, import y/o genealogía?
2. ¿Las dependencias son transitivas o cada Crystal Set debe declararlas explícitamente?
3. ¿Cómo se detectan ciclos y qué significado poseen en conocimiento?
4. ¿Cómo se resuelven UUIDs sin convertir una ubicación en autoridad?
5. ¿Cómo se prueba que dos materializaciones representan el mismo Crystal?
6. ¿Qué integridad debe validar un Resolver?
7. ¿Cómo afectan los scopes de sharing a genealogía y compilación?
8. ¿Qué diferencia el Knowledge Set del proyecto del Crystal Set de una producción?
9. ¿Qué debería fijar un eventual lockfile?
10. ¿Cómo se representa conocimiento faltante sin inventar dependencias?
11. ¿Cómo se gestionan contradicciones entre Crystals requeridos?
12. ¿Quién autoriza incorporar conocimiento externo a un proyecto?

## Fuera de alcance

- CLI de DIAMONT;
- Crystal Registry;
- servidor central;
- package repository;
- graph database;
- blockchain;
- resolución remota;
- descarga automática;
- sistema de versiones;
- lockfile;
- control de acceso;
- firma criptográfica.
