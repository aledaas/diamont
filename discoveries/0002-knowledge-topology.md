# Descubrimiento 0002 — Crystal Graph & Knowledge Topology

## Estado

**Discovery · Observed.**

Esta línea documenta una observación conceptual y las hipótesis que se desprenden de ella. No modifica la Constitución, no selecciona tecnología y no autoriza cambios en Portfolio.

## Objeto de investigación

Investigar si la estructura natural del conocimiento cristalizado es relacional y cómo debe representarse su topología sin confundir el modelo conceptual con los mecanismos físicos que lo persisten.

## Contexto

La mayoría de las herramientas digitales presentan información mediante jerarquías:

- directorios;
- subdirectorios;
- documentos;
- objetos;
- árboles.

La interpretación de investigación es que este paradigma está condicionado por la historia de los sistemas operativos, los sistemas de archivos y sus interfaces. Que un artefacto deba almacenarse en una ubicación no demuestra que el conocimiento contenido posea una única ubicación o un único padre.

## Principio observado

> El conocimiento no debe organizarse por ubicación. Debe organizarse por relaciones.

La ubicación pertenece al mecanismo de persistencia. Las relaciones pertenecen al conocimiento.

DIAMONT investiga relaciones, no ubicaciones.

Este principio se registra como observado dentro del descubrimiento. Todavía debe contrastarse en episodios reales antes de adquirir carácter normativo.

## Hipótesis topológica

El conocimiento cristalizado no posee naturalmente una estructura jerárquica. Posee una estructura relacional.

Un Crystal puede simultáneamente:

- derivar de múltiples Cristales;
- enriquecer múltiples Cristales;
- restringir otros Cristales;
- contribuir a nuevas cristalizaciones;
- participar en compilaciones diferentes;
- conservar valor histórico aunque no resulte vigente para un contexto.

Una estructura de árbol fuerza un único recorrido principal, una pertenencia dominante y relaciones padre-hijo. Estas restricciones podrían ocultar relaciones legítimas entre Cristales. Por ello se propone el grafo como modelo conceptual candidato.

## Definición preliminar

Un **Crystal Graph** representa el conjunto de Cristales de un proyecto y las relaciones permanentes existentes entre ellos.

- El **Crystal** constituye la unidad mínima de conocimiento cristalizado.
- El **Graph** constituye el conocimiento completo del proyecto.
- La ubicación de un archivo no determina la posición conceptual de un Crystal.
- Una vista jerárquica puede ser una proyección útil del grafo, pero no su fuente de verdad.

Estas afirmaciones son hipótesis de dominio. No definen aún cardinalidades, almacenamiento o contratos.

## Crystal Genealogy

Cada Crystal debe preservar permanentemente su procedencia. Su genealogía no responde solamente qué contiene, sino también:

- ¿qué intención lo originó?;
- ¿de qué razonamiento conjunto surgió?;
- ¿qué evidencia de comprensión compartida permitió cristalizarlo?;
- ¿qué otros Cristales participaron?;
- ¿qué descubrimientos lo respaldan?;
- ¿en qué compilaciones participó?;
- ¿qué producciones contribuyó a generar?;
- ¿qué observaciones regresaron desde esas producciones?;
- ¿qué nuevos Cristales surgieron gracias a él?

La hipótesis sostiene que esta genealogía forma parte del conocimiento y no es metadato administrativo prescindible.

## Relaciones candidatas

El vocabulario inicial incluye:

| Relación candidata | Pregunta provisional que intenta responder |
|---|---|
| `derives_from` | ¿Qué Cristales participaron en el origen de este Crystal? |
| `enriches` | ¿Qué conocimiento anterior amplía sin reemplazarlo? |
| `constrains` | ¿Qué interpretación o aplicación limita? |
| `supports` | ¿Qué afirmación respalda? |
| `contradicts` | ¿Con qué conocimiento mantiene una incompatibilidad explícita? |
| `compiles_into` | ¿En qué representación compilada participó? |
| `produced` | ¿Qué producción ayudó a originar? |
| `observed` | ¿Qué resultado o efecto fue observado? |
| `validated_by` | ¿Qué evidencia validada lo sostiene? |
| `supersedes_context` | ¿En qué contexto otro Crystal deja de ser la referencia vigente? |
| `belongs_to_intent` | ¿Qué intención preserva? |

Esta lista no es un estándar DIAMONT. Cada relación debe investigarse para determinar:

- semántica exacta;
- dirección;
- dominio y rango;
- procedencia;
- permanencia;
- cardinalidad;
- evidencia requerida;
- impacto sobre vigencia y compilación.

Algunos candidatos podrían resultar relaciones entre un Crystal y otra clase de objeto, no entre dos Cristales. Otros podrían ser eventos o evidencias en lugar de aristas. El dominio debe decidirlo antes que el esquema.

## Persistencia no equivale a conocimiento

DIAMONT no pretende reemplazar Git ni los sistemas de archivos.

- Git continúa preservando archivos y su historial editorial.
- Los sistemas operativos continúan organizando directorios y ubicaciones.
- Los documentos pueden continuar siendo representaciones legibles o transportables.
- Portfolio no debe interpretar esas estructuras físicas como el modelo del conocimiento.

Un mismo Crystal podría tener varias representaciones físicas. Un archivo podría representar múltiples Cristales. Estas posibilidades deben investigarse; no se asume todavía una correspondencia entre nodo y archivo.

## Hipótesis tecnológica

Una base de datos orientada a grafos podría representar naturalmente ciertas operaciones del dominio, pero no se seleccionará tecnología durante esta etapa.

El orden de investigación es:

1. descubrir los objetos y relaciones del dominio;
2. validar sus invariantes con casos reales;
3. caracterizar consultas, escalas y garantías necesarias;
4. comparar alternativas de persistencia;
5. seleccionar arquitectura sólo después de obtener evidencia.

Un modelo de grafo conceptual no obliga a usar una base de datos de grafos. La arquitectura debe surgir del conocimiento del dominio, nunca al revés.

## Implicancias hipotéticas para Portfolio

Si la investigación confirma esta topología, Mission Control podría evolucionar desde una navegación dominada por jerarquías hacia un mapa vivo del conocimiento.

Cada Crystal podría permitir recorrer:

- relaciones;
- genealogía;
- actores y capacidades participantes;
- compilaciones;
- producciones;
- observaciones;
- descubrimientos derivados.

La visualización sería una proyección del Crystal Graph, no el grafo mismo. Listas, árboles, líneas de tiempo y mapas podrían coexistir como vistas según la pregunta del usuario.

Nada de esto constituye todavía un requerimiento de interfaz o una autorización de implementación.

## Preguntas de investigación

1. ¿Cuál es la estructura mínima de un Crystal?
2. ¿Qué constituye una relación y qué la diferencia de evidencia, evento o artefacto?
3. ¿Las relaciones son permanentes e identificables como los Cristales?
4. ¿Cómo evoluciona un Crystal Graph sin mutar su historia?
5. ¿Cómo se preserva y verifica la genealogía?
6. ¿Cómo compila Portfolio un subgrafo para un actor y capacidad específicos?
7. ¿Qué reglas determinan los límites de ese subgrafo?
8. ¿Qué métricas del grafo aportan comprensión o valor de negocio?
9. ¿Qué métricas serían engañosas o incentivarían comportamientos incorrectos?
10. ¿Cómo se visualizan miles de Cristales sin perder comprensión?
11. ¿Cómo se expresan contexto, vigencia y contradicción sin introducir jerarquías ocultas?
12. ¿Qué debe permanecer independiente del producto para que el Graph pertenezca al proyecto?

## Observaciones necesarias

La línea deberá buscar deliberadamente:

- un Crystal con múltiples antecedentes independientes;
- un Crystal que afecte varias compilaciones sin duplicarse;
- conocimiento válido simultáneamente en contextos distintos;
- una genealogía que no pueda expresarse fielmente como árbol;
- una relación cuya interpretación cambie según su dirección;
- una consulta operativa que requiera recorrer varios saltos;
- una vista jerárquica útil que pueda reconstruirse desde el grafo;
- un caso donde la ubicación física induzca una interpretación incorrecta;
- límites cognitivos al visualizar grafos de escala creciente.

## Relación con otros documentos

- [Crystal Graph](0001-crystal-graph.md) establece la permanencia de los Cristales y la evolución relacional del conocimiento.
- [Crystal Orchestration & Intent Re-Centering](0003-crystal-orchestration-intent-recentering.md) investiga la selección contextual de subgrafos y su alineación con la intención.
- La [Carta Fundacional](../docs/FOUNDATION.md) exige descubrir el dominio antes de diseñar arquitectura.
- El [Glosario](../research/studies/glossary.md) registra `Crystal Graph`, `Crystal Genealogy` y `Knowledge Topology` como términos provisionales.
- La [Constitución v0.1](../docs/CONSTITUTION.md) permanece intacta; este descubrimiento no agrega ni modifica leyes.

## Fuera de alcance

- seleccionar o comparar productos de bases de datos;
- diseñar esquemas de nodos o aristas;
- definir el catálogo definitivo de relaciones;
- modificar Mission Control;
- migrar archivos o documentos existentes;
- implementar visualizaciones;
- reemplazar Git o los sistemas de archivos;
- modificar la Constitución.
