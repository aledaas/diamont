# MINA Research Participation Protocol

## Estado

**Protocolo experimental.**

Define cómo un worker participa en una investigación DIAMONT/MINA y devuelve conocimiento adquirido sin modificar directamente el Patrimonio. No define transporte, API, almacenamiento definitivo ni autoridad de cristalización.

## Objetivo

Conseguir que cada episodio de trabajo preserve de forma portable:

- qué se intentó comprender;
- qué contexto recibió el actor;
- qué fuentes observó;
- qué hechos encontró;
- cómo interpretó esos hechos;
- qué parte del Solution Tree quedó cubierta;
- qué gaps y contradicciones aparecieron;
- qué aprendizaje propone;
- qué preguntas permanecen abiertas.

## Roles

| Actor | Responsabilidad |
|---|---|
| Portfolio o proyecto consumidor | Define contexto, autoridad, alcance y aceptación operacional. |
| MINA | Compila conocimiento aplicable, explica la resolución y recibe el resultado de investigación. |
| Worker investigador | Observa, contrasta y devuelve evidencia; no cristaliza. |
| Participantes relevantes | Construyen comprensión compartida sobre los hallazgos. |
| Autoridad humana | Aprueba o rechaza propuestas de cristalización. |

## Entrada mínima: Research Participation Packet

Todo worker debe recibir:

1. `request_identity` — identidad permanente del pedido;
2. `project_context` — proyecto, dominio, restricciones y clasificación;
3. `execution_intent` — propósito concreto de la investigación;
4. `scope` — única responsabilidad autorizada y exclusiones;
5. `solution_system` — perfil y árbol candidato aplicables;
6. `required_readings` — conocimiento DIAMONT/MINA exacto;
7. `source_authority` — fuentes que puede inspeccionar y nivel de confianza;
8. `acceptance` — resultado esperado y condiciones de detención;
9. `authority` — acciones permitidas y decisiones reservadas;
10. `resolution_receipt` — identidad e integridad de la Compilation recibida cuando exista.

## Conducta del worker

- aplicar Before Create, Search;
- distinguir hecho, interpretación, hipótesis y recomendación;
- citar procedencia precisa;
- no inferir comportamiento ausente de una fuente;
- no convertir directorios, pantallas, clases o componentes automáticamente en Crystals;
- no crear ni enriquecer Crystals o Faces;
- no declarar compatibilidad global desde un único contexto;
- no escribir directamente en el Patrimonio;
- detenerse ante autoridad, clasificación o intención ambiguas;
- verificar en proporción al riesgo y al cambio observado.

## Salida mínima: Research Observation Bundle

### Identity

- `request_identity`;
- `observation_bundle_identity`;
- proyecto y actor;
- fecha y Execution Intent.

### Context snapshot

- stack y plataformas relevantes;
- restricciones;
- authority context;
- clasificación;
- supuestos explícitos.

### Sources

Por cada fuente:

- identidad o ubicación;
- tipo;
- procedencia;
- fecha o revisión observada;
- clasificación;
- alcance inspeccionado;
- limitaciones de acceso o licencia.

### Observations

Cada observación debe registrar:

- afirmación factual;
- fuente;
- método de observación;
- contexto;
- evidencia asociada;
- incertidumbre.

### Interpretations

Toda interpretación debe referenciar observaciones y declarar:

- razonamiento;
- alternativas;
- contradicciones;
- límites de aplicabilidad.

### Solution Tree coverage

Por cada nodo evaluado:

- ruta dentro del árbol contextual;
- condición (`required`, `conditional`, `optional`, `alternative`, `constraint` o `extension`);
- estado (`covered`, `knowledge_only`, `materialization_unverified`, `partial`, `contradicted`, `gap` o `not_applicable`);
- conocimiento candidato;
- Materialization candidata;
- evidencia;
- explicación.

### Candidate knowledge operations

El worker puede proponer, nunca ejecutar:

- relacionar conocimiento existente;
- fortalecer evidencia de una Face;
- investigar una Face candidata;
- investigar un nuevo Crystal como último recurso;
- registrar incompatibilidad contextual;
- retirar o restringir una Materialization.

### Outcome

- cobertura alcanzada;
- gaps residuales;
- riesgos;
- preguntas sin respuesta;
- próximo experimento mínimo recomendado;
- costo observado en tiempo, coordinación y verificaciones cuando esté disponible.

## Separación epistemológica

```text
Source
  ↓
Observation
  ↓
Interpretation
  ↓
Research Observation Bundle
  ↓
Learning Proposal
  ↓
Collaborative Reasoning
  ↓
Shared Understanding
  ↓
Crystallization Approval
  ↓
Patrimony operation
```

Ningún paso puede omitirse por el solo hecho de que la producción o sus tests hayan resultado exitosos.

## Persistencia provisional

Mientras no exista un canal universal de MINA:

- el proyecto conserva el bundle original junto al episodio;
- el bundle usa formato abierto y legible;
- se registra el digest del contenido;
- MINA puede importar una copia preservando procedencia e identidad;
- la copia importada no se convierte automáticamente en conocimiento cristalizado;
- Git actúa como soporte físico provisional, no como modelo del conocimiento.

## Perfil web inicial

Debe utilizar:

- Application Composition Taxonomy;
- Materialize Knowledge Topology;
- Web Administration Solution System;
- evidencia de OPS-F35;
- Portfolio y Filament como contexto real.

## Perfil mobile inicial

Debe utilizar:

- Application Composition Taxonomy;
- Native Mobile Application Solution System;
- backend Engines cuando sea identificado;
- Figma SAKI como evidencia de dominio e información web, no como evidencia de experiencia móvil;
- el repositorio `mina-wallet-mobile` como proyecto consumidor.

## Criterio de éxito

El protocolo funciona si dos workers con contextos distintos pueden producir bundles comparables, MINA puede identificar conocimiento compartido y específico, y la comprensión posterior requiere menos reconstrucción conversacional que los episodios anteriores.

