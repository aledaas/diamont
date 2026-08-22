# Validación — Patrimony Store experimental

## Ambiente

- Fecha: `2026-08-21`.
- PostgreSQL: `15.14`.
- Contenedor: efímero, aislado y eliminado después de validar.
- Dataset: únicamente sintético y referencial.
- Bases de Portfolio y Floulabs: no consultadas ni modificadas.

## Resultado

| Validación | Resultado |
|---|---|
| Creación de 13 tablas | PASS |
| Creación de 5 índices de consulta | PASS |
| Carga de objetos, evidencia, relaciones, assertions, request y virtudes | PASS |
| Consulta de cobertura | PASS |
| Outcome esperado `PARTIALLY_SUFFICIENT` | PASS |
| Study rechazado como `active_crystal` | PASS |
| Asset sin licencia rechazado como distribuible | PASS |
| Resolution `issued` rechazada sin `issued_at` | PASS |
| Ausencia de columnas de versión/generación de Crystal o Face | PASS |
| Cobertura esperada: 5 covered, 1 partial, 2 gaps | PASS |

## Cobertura observada

### Covered

- `capability_bounded_presentation`
- `context_bound_authority`
- `embedded_modern_frontend`
- `isolated_frontend_build`
- `server_authored_bootstrap`

### Partial

- `filament_embedded_workspace`

### Gaps

- `confirmed_asset_licensing`
- `measured_dual_runtime_compatibility`

## Interpretación

El modelo puede localizar conocimiento candidato y una materialización real sin promoverlos a Crystals activos. También puede explicar por qué la solicitud todavía no es plenamente suficiente.

La validación demuestra persistencia y consulta. No demuestra todavía razonamiento MINA, generación de `MinaResolution`, Compilation Receipt real, autenticación ni consumo desde Portfolio.
