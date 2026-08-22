# Patrimony Store mínimo — Modelo experimental

## Estado

**Diseño técnico experimental.**

Este modelo materializa únicamente el conocimiento necesario para intentar resolver la primera `KnowledgeRequest`. No define la ontología completa de DIAMONT ni convierte PostgreSQL en el Patrimonio.

## Objetivo

Permitir que una implementación MINA pueda:

1. registrar objetos con distinta naturaleza epistemológica;
2. relacionar un estudio de conocimiento candidato con una materialización conocida;
3. preservar evidencia, procedencia, clasificación y restricciones de licencia;
4. comparar virtudes requeridas con virtudes observadas;
5. detectar cobertura parcial y gaps;
6. registrar una resolución y su selección explicable;
7. emitir posteriormente un Compilation Receipt reproducible.

## Decisión de representación

`patrimony_objects` es un índice operacional común, no una superclase ontológica. Permite relacionar elementos heterogéneos sin afirmar que un estudio, una evidencia y un Crystal poseen el mismo significado.

Las tablas tipadas preservan la diferencia:

```text
patrimony_objects
    ├── research_artifacts
    └── materializations

patrimony_objects
    ├── object_virtues
    ├── epistemological_assertions
    ├── evidence_records
    └── patrimony_relations
```

El primer dataset no contiene un nuevo Crystal. Contiene:

- un estudio candidato de `Context-Bound Operational Authority`;
- una Known Materialization candidata de Vue Operational Console;
- evidencia referencial a Floulabs;
- la KnowledgeRequest de Portfolio;
- virtudes requeridas para el análisis.

## Invariantes

- Las identidades operacionales usan UUID y nunca sustituyen el UUID permanente de un Crystal.
- `canonical_key` identifica el objeto dentro de la autoridad del Patrimonio.
- No existen `CrystalVersion`, `FaceVersion`, generation ni equivalentes.
- Una afirmación epistemológica es append-only; cambiar la comprensión agrega otra afirmación.
- Un objeto de investigación no puede presentarse como Crystal activo.
- Una materialización no se convierte en conocimiento por estar implementada.
- Los assets conservan hash, rol, clasificación y condición de distribución.
- `license_status != confirmed` impide marcar un asset como distribuible.
- Una selección MINA conserva rationale y la afirmación epistemológica utilizada.
- El request original permanece fuera de la base como artefacto verificable; el store conserva identidad, digest y referencia.
- PostgreSQL puede reconstruirse desde exportaciones sin cambiar identidades lógicas.

## Tablas del corte vertical

| Tabla | Responsabilidad |
|---|---|
| `patrimony_objects` | Índice común de identidades relacionables. |
| `research_artifacts` | Discoveries, estudios y propuestas todavía no cristalizadas. |
| `materializations` | Implementaciones conocidas y su procedencia. |
| `materialization_assets` | Archivos referenciados con integridad y distribución. |
| `object_virtues` | Virtudes observadas o candidatas satisfechas por un objeto. |
| `patrimony_relations` | Relaciones explícitas y permanentes entre objetos. |
| `evidence_records` | Evidencia referencial sin copiar código o datos privados. |
| `epistemological_assertions` | Afirmaciones auditables sobre estado y aplicabilidad. |
| `knowledge_requests` | Solicitudes recibidas por identidad, digest y referencia. |
| `request_virtues` | Virtudes derivadas por MINA para una solicitud. |
| `resolution_runs` | Resultado inmutable de una ejecución de Analyze. |
| `resolution_selections` | Objetos seleccionados o excluidos y explicación. |
| `compilation_receipts` | Integridad de la representación entregada. |

## Frontera MINA / Store

El Store no interpreta la Idea. MINA es responsable de derivar `request_virtues`, evaluar resultados y escribir una resolución explicable.

El Store proporciona:

- búsqueda estructurada;
- relaciones;
- estado epistemológico;
- restricciones;
- integridad;
- auditoría.

El Store no proporciona:

- creatividad;
- comprensión compartida;
- approval;
- ejecución;
- cristalización;
- autoridad metodológica.

## Resultado esperado del dataset

La consulta experimental debe encontrar:

- cobertura para shell Vue embebido, bootstrap server-side, navegación gobernada y autoridad contextual;
- cobertura parcial para adaptación Filament;
- gaps para compatibilidad React/Vue medida, licencia `mt-vendor`, Crystal activo de interfaz y validación independiente;
- outcome candidato `PARTIALLY_SUFFICIENT`.

Ese resultado no será todavía una `MinaResolution` válida hasta que MINA agregue alineación con intención, rationale, restricciones, incertidumbres y Compilation Receipt.
