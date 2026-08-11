# El Principio de Conservación del Conocimiento

## Objetivo

Documentar el principio fundamental sobre el cual debe evolucionar la metodología DIAMONT y, en consecuencia, la arquitectura de Portfolio.

Este principio redefine el concepto de reutilización de software. El objetivo deja de ser únicamente reutilizar código, componentes o librerías y pasa a preservar y hacer evolucionar el conocimiento de la Software Factory.

## Problema

En el desarrollo tradicional, cada proyecto genera conocimiento nuevo que normalmente queda encapsulado dentro del propio proyecto.

Aunque posteriormente pueda copiarse código o reutilizarse una librería, el conocimiento original continúa fragmentándose. Con el tiempo aparecen múltiples implementaciones similares, pequeñas variaciones y soluciones duplicadas.

La consecuencia es una degradación progresiva del patrimonio intelectual de la organización.

## Visión DIAMONT

DIAMONT propone considerar al conocimiento como el principal activo de la Software Factory.

Ese conocimiento se materializa mediante **Crystals**. Cada Crystal representa una unidad única de conocimiento.

Los Crystals no pertenecen a un proyecto individual. Pertenecen al patrimonio permanente de la fábrica. Los proyectos utilizan Crystals existentes y contribuyen a su evolución.

Esta atribución institucional requiere revisión frente a la Ley 5 constitucional antes de adquirir vigencia normativa.

## Principio fundamental

> Antes de crear un nuevo Crystal debe demostrarse que el conocimiento no puede integrarse coherentemente dentro de un Crystal existente.

Crear un Crystal nuevo es el último recurso. La primera responsabilidad del arquitecto consiste en analizar si el conocimiento representa realmente un dominio independiente o una nueva capacidad de un Crystal existente.

## Recristalización

Los Crystals no son elementos estáticos. Cada proyecto puede descubrir nuevas soluciones, patrones o capacidades.

Cuando esto ocurre no se crea necesariamente un nuevo Crystal. El Crystal existente incorpora una nueva cara. Ese proceso recibe el nombre de **recristalización**.

Una recristalización fortalece un Crystal existente agregando conocimiento y capacidad mediante una nueva Face, sin modificar su identidad conceptual.

Recristalización no representa una versión, revisión o generación. No existen `Crystal v1`, `Crystal v2`, versiones de Faces ni equivalentes conceptuales a Semantic Versioning.

```text
Existing Crystal
    +
New Knowledge
    +
Evidence
    +
New Face
    ↓
Recrystallization
    ↓
Same Crystal with greater knowledge capacity
```

La genealogía registra qué Face fue incorporada, qué contexto o proyecto la originó y qué evidencia la respalda. La identidad del Crystal permanece inalterada.

## Las Faces de un Crystal

Cada Crystal puede poseer múltiples Faces. Cada Face representa una virtud o dimensión del conocimiento que permite satisfacer una necesidad determinada.

Ejemplo conceptual:

```text
Crystal: CRUD

Faces iniciales:
- Crear
- Editar
- Eliminar
- Buscar

Faces posteriores:
- Auditoría
- Soft Delete
- Permisos
- Eventos
- API
- UI
- Validaciones
- Testing
```

El Crystal continúa representando CRUD mientras refleja conocimiento adicional. No existe `CR-CRUD v2`.

Antes de proponer un Crystal nuevo debe demostrarse que la Face no pertenece coherentemente a la identidad conceptual de un Crystal existente.

## Composer Principle

El Composer debe evaluar:

> ¿Las Faces disponibles en el Patrimonio son suficientes para satisfacer las virtudes requeridas por esta Idea?

```text
Idea
  ↓
Required Virtues
  ↓
Search Patrimony
  ↓
Candidate Crystals
  ↓
Inspect Faces
  ↓
Sufficiency Evaluation
  ↓
Gap Detection
```

Ante un gap, el orden obligatorio de evaluación es:

1. buscar si otra Face existente ya lo resuelve;
2. buscar si otro Crystal existente lo resuelve;
3. evaluar si corresponde incorporar una nueva Face a un Crystal existente;
4. sólo si el conocimiento no pertenece coherentemente a ningún Crystal existente, proponer un nuevo Crystal.

> New Crystal is the last resort.

## Evolución del patrimonio

Cada proyecto deja de ser únicamente consumidor de conocimiento y pasa a ser también generador.

Al finalizar una producción, el conocimiento adquirido debe analizarse para determinar:

- qué Crystals evolucionaron;
- qué Faces aparecieron;
- qué Crystals fueron fortalecidos;
- cuáles requieren recristalización;
- qué conocimiento representa en realidad un dominio independiente.

De esta manera, el patrimonio intelectual de la Software Factory crece de forma acumulativa.

## Genealogía

Cada Crystal debe conservar permanentemente su historia. Como mínimo debe permitir responder:

- ¿dónde nació?;
- ¿qué proyecto lo originó?;
- ¿qué proyectos contribuyeron a su evolución?;
- ¿cuántas recristalizaciones posee?;
- ¿qué Faces fueron incorporadas?;
- ¿qué otros Crystals dependen de él?;
- ¿qué proyectos lo utilizan actualmente?

La genealogía forma parte del conocimiento del Crystal.

## Cambio filosófico para Portfolio

Portfolio deja de ser únicamente un gestor de proyectos. Su responsabilidad principal pasa a incluir la administración del patrimonio de conocimiento de la Software Factory.

Las Features no representan el conocimiento. Utilizan Crystals.

Los proyectos son temporales. Los Crystals sobreviven a los proyectos.

## Consecuencia arquitectónica

La unidad central deja progresivamente de ser:

```text
Project
  ↓
Feature
  ↓
Task
```

y pasa a ser:

```text
Crystal Repository
  ↓
Crystal Composition
  ↓
Project
  ↓
Features
  ↓
Tasks
```

Los proyectos dejan de construir conocimiento desde cero y componen conocimiento previamente cristalizado. Este diagrama expresa una dirección conceptual, no una arquitectura aprobada.

## Principios derivados

### Conservación

No duplicar conocimiento cuando pueda integrarse coherentemente en un Crystal existente.

### Evolución

El conocimiento debe evolucionar antes que multiplicarse.

### Reutilización

Todo proyecto debe intentar utilizar Crystals existentes.

### Recristalización

Cada proyecto debe aportar nuevas Faces al patrimonio común siempre que la coherencia conceptual lo permita.

## Conocimiento entre proyectos

Un proyecto no entrega una versión nueva de un Crystal a otro proyecto. Puede aportar descubrimiento y evidencia que provoquen una recristalización del Patrimonio.

```text
Project A
  ↓
Discovery
  ↓
Evidence
  ↓
New Face
  ↓
Same Crystal
  ↓
DIAMONT Patrimony
  ↓
Composer
  ↓
Project B
```

Project B no consume Project A. Consume un Patrimonio más rico a través del mismo Crystal y su nueva Face.

### Patrimonio

La hipótesis propone que el conocimiento pertenece al patrimonio de la Software Factory, nunca a un proyecto de entrega individual. Esta formulación requiere resolución constitucional.

## Reflexión final

DIAMONT no busca crear un repositorio de componentes. Busca construir un patrimonio vivo de conocimiento.

Cada Crystal representa experiencia acumulada. Cada recristalización debería incrementar el valor disponible para proyectos presentes y futuros.

El éxito de la metodología no se mediría sólo por la cantidad de proyectos desarrollados, sino por la calidad, profundidad y evolución del patrimonio de Crystals construido por la organización.

## Decisiones pendientes

1. ¿Cómo se reconcilia la propiedad institucional propuesta con la Ley 5?
2. ¿Cómo se materializa una nueva Face sin que el mecanismo físico reintroduzca versiones conceptuales?
3. ¿Qué estructura mínima posee una Face?
4. ¿Qué evidencia demuestra que una capacidad pertenece al mismo dominio conceptual?
5. ¿Quién autoriza una recristalización?
6. ¿Cómo registra la genealogía la incorporación de una Face y preserva la historia completa?
7. ¿Cómo evita el Composer que “New Crystal is the last resort” produzca Crystals excesivamente amplios?
8. ¿Qué diferencia patrimonio, custodia, autoría y pertenencia?
9. ¿Cómo expresa el Composer virtudes requeridas y suficiencia sin depender de puntuaciones opacas?
