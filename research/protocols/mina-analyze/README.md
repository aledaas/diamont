# MINA Analyze — Contract Artifacts

Artefactos ejecutables candidatos del perfil [`mina.analyze/2026-08-21`](../mina-analyze-experimental-profile.md).

## Schemas

- `schemas/capability-document.schema.json`
- `schemas/knowledge-request.schema.json`
- `schemas/mina-resolution.schema.json`
- `schemas/error-envelope.schema.json`

Todos utilizan JSON Schema Draft 2020-12, rechazan propiedades desconocidas en sus objetos contractuales y distinguen revisiones técnicas de cualquier versión conceptual de conocimiento.

## Fixtures

Cada schema posee un fixture válido y uno inválido. Los inválidos documentan una invariante concreta:

| Contrato | Fixture inválido | Invariante |
|---|---|---|
| Capability | `capability-document.invalid.json` | MINA Analyze nunca anuncia escritura canónica. |
| Request | `knowledge-request.invalid.json` | Analyze no concede capacidad de ejecución. |
| Resolution | `mina-resolution.invalid.json` | Un Crystal se referencia por UUID sin campo de versión. |
| Error | `error-envelope.invalid.json` | `retryable` es una decisión booleana explícita. |

## Validación de conformidad

Una implementación deberá validar schemas y fixtures con soporte real de Draft 2020-12. El repositorio no incorpora todavía una dependencia o runtime para hacerlo.

Pseudocomando esperado:

```text
validate --draft 2020-12 \
  --schema schemas/<contract>.schema.json \
  fixtures/<contract>.valid.json
```

Cada fixture `*.valid.json` debe pasar y cada `*.invalid.json` debe fallar por la invariante declarada, no por JSON mal formado.

## Evidencia de validación

El 2026-08-21 los cuatro pares fueron validados mediante una implementación independiente de JSON Schema Draft 2020-12:

- 4 fixtures válidos aceptados;
- 4 fixtures inválidos rechazados por la invariante declarada;
- digest JCS/SHA-256 reproducido para `KnowledgeRequest.payload`;
- digest JCS/SHA-256 reproducido para `MinaResolution.payload`;
- digest JCS/SHA-256 reproducido para `MinaResolution.crystal_set`.

El validador se utilizó temporalmente fuera del repositorio; no se agregó ninguna dependencia al proyecto.
