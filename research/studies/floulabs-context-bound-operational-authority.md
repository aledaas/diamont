# Estudio — Context-Bound Operational Authority en Floulabs

## Estado

**Episodio observado · candidato a cristalización.**

Este estudio registra conocimiento observado en una producción real. No crea un Crystal, no incorpora Faces al Patrimonio y no declara universal la solución encontrada.

## Pregunta

¿Existe en Floulabs conocimiento reusable que permita demostrar el flujo Proyecto A → Patrimonio → MINA → Proyecto B sin trasladar código o reconstruir manualmente su razonamiento?

## Alcance y política

- Repositorio observado: `meta-gateway-2.0`.
- Inspección: read-only.
- Clasificación propuesta: `project_shared`.
- No se copiaron código fuente, datos, credenciales ni detalles privados de infraestructura.
- La materialización permanece en su proyecto de origen.
- DIAMONT conserva únicamente referencias, evidencia y la formulación conceptual candidata.

## Episodio observado

Una consola operacional debía permitir que actores asociados a un contexto determinado consultaran exclusivamente los recursos pertenecientes a ese contexto, sin heredar capacidades administrativas globales ni mutaciones privilegiadas.

La producción separó:

- identidad global del actor;
- pertenencia o autorización contextual;
- contexto efectivo bajo el que se opera;
- recursos visibles bajo ese contexto;
- acciones permitidas dentro del recurso;
- navegación presentada al actor.

La solución no confió solamente en ocultar elementos de interfaz. Aplicó el contexto en colecciones, acceso a objetos individuales, navegación y operaciones mutables, con rechazo cerrado ante pertenencia inválida o contexto no resoluble.

## Evidencia fuente

### Genealogía Git

| Campo | Valor |
|---|---|
| Commit originario | `28b687e656c8eb92351f6a46ce17bb85b1e38ac5` |
| Fecha | `2026-08-17T11:46:04-03:00` |
| Intención registrada | `feat(console): isolate platform operator workspace` |
| Enriquecimiento contextual posterior observado | `c3de8f86` — mapeo explícito de contexto comercial |

### Materialización conocida

| Responsabilidad observada | Referencia | SHA-256 observado |
|---|---|---|
| Resolver y aplicar contexto de acceso | `app/FlouLabsConsole/Access/ConsoleAccessContext.php` | `61ab544af40d7bcbe213740e21465329a66db66ad3361a27aececa88a537eb15` |
| Derivar navegación desde autoridad efectiva | `app/FlouLabsConsole/Navigation/ConsoleNavigationRegistry.php` | `a95c4b21eaf4b1b6e38e1e5e570b4a413a0450f74f18e3960b09c274ff883e03` |
| Probar aislamiento entre dos contextos | `tests/Feature/FlouLabsConsole/PlatformOperatorIsolationTest.php` | `35a3755963a2ce38b32618a61a916946031ca109627841f5e4cb2a884f7ea63c` |
| Explicar resultado y validación original | `docs/reports/SK-M02/platform-operator-console-scope.md` | Referencia documental del proyecto |
| Formalizar contexto efectivo y precedencia | `docs/internal/architecture/adr/ADR-0002-platform-memberships-effective-context.md` | ADR aceptado por el proyecto |
| Definir contrato canónico posterior | `docs/internal/architecture/contracts/SK-F05-effective-platform-context-contract.md` | Contrato implementado del proyecto |

Los hashes identifican la materialización inspeccionada; no crean versiones de conocimiento.

## Observaciones verificables

1. El actor obtiene un contexto efectivo desde identidad y pertenencia autorizadas; no desde un identificador libre del payload de negocio.
2. El contexto se aplica tanto al listado como al acceso directo de recursos.
3. Conocer el identificador de un recurso ajeno no concede acceso.
4. La navegación se reduce desde el servidor y no transmite reglas de autorización al cliente visual.
5. La capacidad de lectura contextual no concede mutaciones privilegiadas.
6. La ambigüedad, revocación o inconsistencia contextual falla de forma cerrada.
7. Cuando la identidad contextual se congela para una producción posterior, la autorización se revalida antes del efecto; congelar identidad no congela autoridad.
8. La transición desde mecanismos heredados conserva rutas explícitas y observables; un contexto presente pero inválido no cae silenciosamente a Legacy.
9. Identidad contextual, ownership financiero y propuesta comercial permanecen responsabilidades separadas.
10. La evidencia original informa pruebas con dos contextos simultáneos, denegación cruzada, navegación reducida y mutaciones bloqueadas.

Los tests no fueron reejecutados durante este estudio porque requieren bases de testing desechables cuya disponibilidad no fue confirmada. La evidencia de ejecución procede del reporte del proyecto y debe conservar esa procedencia.

## Interpretación

La virtud reusable no es “una consola multi-tenant” ni una clase Laravel. Es preservar autoridad operacional mediante un contexto explícito, trazable y aplicado consistentemente en todas las superficies de una participación.

Formulación candidata:

> Toda producción o consulta sujeta a un ámbito debe resolver una autoridad contextual explícita, aplicar el mismo contexto a descubrimiento y acción, y rechazar ambigüedad, revocación o inconsistencia sin fallback silencioso.

## Before Create, Search

Se comparó la formulación con el Patrimonio actual:

| Conocimiento existente | Coincidencia | Resultado |
|---|---|---|
| Crystal Graph | Identidad, relaciones y vigencia contextual | Fundamenta trazabilidad, pero no define autoridad operacional. |
| Crystal Dependency Resolution | Resolución de dependencias e imports por identidad | No cubre identidad del actor, scoping, autorización ni revalidación. |
| Repository Restructuring Specification | Protocolo físico del repositorio | No comparte identidad conceptual. |
| Intent Re-Centering | Preservación de dirección hacia la intención | Relacionado, pero alineación de propósito no equivale a autoridad de acceso. |
| MINA Universal Knowledge Protocol | Authority Context y mínimo conocimiento necesario | Puede consumir esta virtud, pero todavía no contiene el conocimiento que la satisface. |
| CR-DIAMONT-001 candidato | Conservación y Patrimonio | Filosófico; incorporar esta capacidad alteraría su identidad. |

No se encontró un Crystal existente al que esta capacidad pertenezca coherentemente como Face. Si alcanza comprensión compartida, un nuevo Crystal parece justificado como último recurso.

## Crystal candidato

### Nombre conceptual

**Context-Bound Operational Authority**

### Identidad candidata

Capacidad de resolver, congelar cuando corresponda, aplicar y revalidar la autoridad contextual bajo la cual un actor consulta o produce, preservando aislamiento y trazabilidad sin mezclar identidad, ownership o capacidades adyacentes.

### Faces candidatas

Estas Faces son hipótesis y no forman todavía parte del Patrimonio:

| Face | Virtud que aporta |
|---|---|
| `Explicit Context Resolution` | Deriva el contexto desde autoridades confiables y reglas de precedencia explícitas. |
| `Fail-Closed Ambiguity` | Rechaza ausencia, multiplicidad o inconsistencia sin elegir por orden ni conveniencia. |
| `Collection Scoping` | Limita descubrimiento y agregados al contexto efectivo. |
| `Object-Level Isolation` | Revalida pertenencia al acceder directamente a una identidad conocida. |
| `Capability-Bounded Presentation` | Presenta sólo destinos aplicables sin convertir UI en autoridad. |
| `Mutation Separation` | Distingue visibilidad contextual de permiso para producir efectos. |
| `Identity Freeze` | Conserva el contexto exacto utilizado al preparar una producción. |
| `Authorization Revalidation` | Revalida vigencia antes del efecto sin sustituir silenciosamente la identidad congelada. |
| `Observable Compatibility Boundary` | Mantiene transiciones heredadas explícitas, acotadas y retirables. |

## Relaciones candidatas

- `supports` Intent Re-Centering al impedir que una acción se ejecute bajo otro ámbito.
- `constrains` MINA Universal Knowledge Protocol mediante `Authority Context` y exposición mínima.
- `can_materialize_as` resolvers, policies, scopes, middleware, snapshots o filtros de navegación.
- `observed_in` la materialización Floulabs identificada en este estudio.

Los nombres de relación no constituyen todavía catálogo DIAMONT.

## Aplicabilidad inicial a Portfolio y MINA

El conocimiento podría ayudar a:

- limitar una `MinaResolution` al Project Context autorizado;
- evitar que un worker consuma conocimiento de otro ámbito por conocer su UUID;
- separar conocimiento visible de acciones ejecutables;
- congelar el Authority Context de un approval;
- revalidar autoridad antes de despachar una Execution;
- impedir que una resolución inválida caiga silenciosamente a una Compilation anterior;
- explicar omisiones por clasificación sin revelar el contenido restringido.

El primer destino concreto propuesto es una Custom Page de Filament en Development Portfolio. Filament preservaría autenticación y navegación exterior; un workspace Vue aislado presentaría el resultado de MINA sin adquirir autoridad sobre approvals o ejecución.

La aplicabilidad no demuestra todavía suficiencia ni autoriza implementación.

## Gaps e incertidumbres

1. El episodio principal pertenece a un dominio operacional con aislamiento de plataformas; falta comprobarlo en un segundo dominio independiente.
2. Debe decidirse si `Identity Freeze` y `Authorization Revalidation` pertenecen al mismo Crystal o a conocimiento relacionado.
3. Debe distinguirse autoridad contextual de selección contextual de conocimiento dentro de MINA.
4. El proyecto de origen usa contratos técnicos versionados; la cristalización debe preservar la virtud sin trasladar versionado a Crystal o Faces.
5. La evidencia de tests se tomó del reporte existente y no fue reejecutada durante esta investigación.
6. La clasificación y autorización para compartir materializaciones concretas deben definirse antes de cualquier distribución fuera del ámbito permitido.

## Criterio de cristalización

Antes de crear el Crystal se requiere:

- comprensión compartida sobre su identidad y límites;
- revisión de las Faces candidatas;
- confirmación de que no pertenece a un Crystal existente;
- validación de que la abstracción no contiene semántica privada de Floulabs;
- decisión explícita sobre su clasificación;
- preferentemente, un segundo episodio que pruebe reutilización o revele una contradicción.

Hasta entonces, este conocimiento permanece como estudio y propuesta de aprendizaje.

## Materialización relacionada

La implementación Vue de `/console` se registra separadamente como [Known Materialization candidata](floulabs-vue-operational-console-materialization.md). La separación evita confundir la virtud de autoridad contextual con un framework, diseño visual o producto particular.
