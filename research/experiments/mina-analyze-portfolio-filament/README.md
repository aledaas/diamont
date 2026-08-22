# Experimento — MINA Analyze para Portfolio Filament

## Estado

**KnowledgeRequest preparada · MinaResolution pendiente.**

Este episodio es la primera aplicación concreta del perfil `mina.analyze/2026-08-21`.

## Intención

Determinar qué conocimiento y materializaciones existentes pueden ayudar a incorporar un workspace cognitivo de MINA dentro del panel Filament de Development Portfolio, reutilizando responsablemente el Vue Operational Console observado en Floulabs.

## Entrada

- [`knowledge-request.json`](knowledge-request.json)
- Idea real y destino tecnológico explícitos.
- `Execution Intent = analyze`.
- Sin autoridad de ejecución.
- Sin selección manual de Crystal en la solicitud.

## Evidencia disponible para MINA

- [Context-Bound Operational Authority](../../studies/floulabs-context-bound-operational-authority.md), todavía candidato a cristalización.
- [Floulabs Vue Operational Console](../../studies/floulabs-vue-operational-console-materialization.md), Known Materialization candidata.
- [MINA Universal Knowledge Protocol](../../protocols/mina-universal-knowledge-protocol.md).
- [MINA Analyze Experimental Profile](../../protocols/mina-analyze-experimental-profile.md).

Estas referencias forman parte del espacio que MINA podría explorar. La solicitud no obliga a incluirlas ni anticipa el Crystal Set.

## Salida esperada, no preconstruida

Una implementación real de MINA deberá producir una `MinaResolution` que explique:

- virtudes requeridas;
- conocimiento disponible y estado epistemológico;
- materialización Floulabs aplicable;
- frontera reusable y elementos excluidos;
- adecuación a Laravel 13, Filament 5, React 19 y Vite 8;
- costo y riesgo de un runtime Vue aislado;
- restricciones de licencia;
- gaps de conocimiento;
- alternativas consideradas;
- approvals requeridos;
- Compilation Receipt.

No se agrega un fixture de respuesta “correcta”: hacerlo antes de implementar MINA convertiría la interpretación del autor en resultado del sistema.

## Patrimony Store experimental

- [Modelo mínimo](patrimony-store-model.md)
- [Schema PostgreSQL](patrimony-store-schema.sql)
- [Dataset del episodio](patrimony-store-seed.sql)
- [Consulta de cobertura](patrimony-store-query.sql)
- [Pruebas de invariantes](patrimony-store-invariants.sql)
- [Evidencia de validación PostgreSQL](patrimony-store-validation.md)

El Store estructura búsqueda, evidencia y estado epistemológico. No interpreta por sí mismo la Idea ni emite una MinaResolution.

## Criterio de éxito

El experimento avanza cuando una implementación MINA:

1. acepta y verifica esta solicitud;
2. explora el Patrimonio sin recibir un Crystal preseleccionado;
3. encuentra o descarta explicablemente el conocimiento y la materialización observados;
4. produce una resolución verificable;
5. no recomienda copiar `/console` completo;
6. preserva Filament como autoridad exterior y separa approvals de presentación;
7. registra incertidumbre ante licencia o compatibilidad no comprobadas.
