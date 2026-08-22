# Estudio — Floulabs Vue Operational Console como Materialización Reutilizable

## Estado

**Known Materialization candidata · evidencia observada.**

Este estudio registra una implementación real que podría reutilizarse mediante MINA. No copia el código, no concede licencia de redistribución, no crea un Crystal y no declara portable toda la aplicación.

## Hallazgo

La implementación Vue de `/console` no es solamente una interfaz particular de Floulabs. Contiene una composición reusable para incorporar una consola operacional moderna dentro de una aplicación Laravel existente, manteniendo al servidor como autoridad de sesión, navegación, endpoints y capacidades.

La unidad reusable no es la carpeta completa ni el diseño visual. Es una materialización compuesta con fronteras explícitas:

```text
Laravel authenticated boundary
        ↓
server-authored bootstrap
        ↓
isolated Vue/Vite application
        ↓
capability-derived navigation
        ↓
domain modules through explicit endpoints
```

## Procedencia

| Campo | Valor |
|---|---|
| Proyecto de origen | `meta-gateway-2.0` / Floulabs Console |
| Commit fundacional | `7554dcd201d1eac55faed5b92ca780ef0eeab513` |
| Fecha | `2026-08-14T12:30:44-03:00` |
| Intención registrada | `feat(console): add Materialize foundation and payment transactions` |
| Evolución observada | navegación adaptativa, tema centralizado, aislamiento contextual, recuperación de sesión y nuevos módulos operacionales |
| Clasificación propuesta | `project_shared` |

La genealogía demuestra que el shell fundacional permitió incorporar capacidades posteriores sin reemplazar su identidad operativa. Los commits técnicos representan evolución de la materialización, no versiones de un Crystal.

## Evidencia material

| Elemento | Responsabilidad | SHA-256 observado |
|---|---|---|
| `resources/floulabs-console/package.json` | Runtime frontend aislado y comandos propios | `012e8e40da10333ff327db508b9f59d38991929bce8dd50596808b58c191d85f` |
| `resources/floulabs-console/vite.config.ts` | Build separado, dos entrypoints y hot file independiente | `8e7d88c6329c09533e4dbfefb6a16e60509d247579f722c46e7ac1ae234e1b31` |
| `resources/floulabs-console/types/bootstrap.ts` | Contrato tipado entre Laravel y Vue | `06e77974bdfafd95c0885accc869f8b89dac8912cbfcb84735004cd0791f3fc8` |
| `resources/floulabs-console/app/main.ts` | Composición del runtime Vue | `d14d4735236ff7c087948d8d534a950c04d41f77263960275b38de5bdbe2510d` |
| `resources/floulabs-console/app/App.vue` | Frontera mínima del shell | `98b4352626a85f21519642110df23984d1118c512096be8101ea24f3457128a9` |
| `resources/floulabs-console/router/index.ts` | Navegación SPA y carga diferida de módulos | `34d51cdf6ee6b13bf02335499469663163d2c8dbfcdc998029074c209134e12d` |
| `resources/floulabs-console/ui/ConsoleLayout.vue` | Layout operacional reusable | `de067c1a62278bdd37dcbd59e7dabce394e9fe424054dfd80e5f36a35870cde6` |
| `resources/views/floulabs-console/app.blade.php` | Mount point y bootstrap server-side | `2d8e7d946d28a7d1b406c6325139b270ecb5e183a0cceb29c3301b1c701b08af` |
| `app/Http/Controllers/FlouLabsConsole/ConsoleController.php` | Construcción autorizada de bootstrap y endpoints | `b865c7ae47a69dc71b381edcf34c35963b841d3815fb091105f9598cc387dcfd` |
| `app/FlouLabsConsole/Support/ConsoleViteHotFile.php` | Fallback seguro ante hot server obsoleto | `4d8d247680599e3552dcd56b638eaefeb8021272e80fd2c1a858abc3d367628c` |

Los hashes fijan la materialización inspeccionada. No expresan identidad ni versión de conocimiento.

## Virtudes observadas

1. **Embedded Modern Frontend:** incorpora Vue sin reemplazar el backend Laravel ni exigir separar inmediatamente un servicio frontend.
2. **Isolated Build Boundary:** package, Vite entries, output y hot file propios reducen interferencia con assets históricos.
3. **Server-Authored Bootstrap:** sesión, CSRF, usuario, endpoints y navegación nacen del servidor autenticado.
4. **Capability-Derived Navigation:** el cliente recibe destinos ya evaluados; no se convierte en autoridad de permisos.
5. **Explicit Endpoint Contract:** Vue no reconstruye rutas backend por conocimiento implícito.
6. **Separate Authentication Entry:** login y aplicación poseen entrypoints independientes dentro del mismo boundary visual.
7. **Composable Operational Shell:** layout, page headers, status, tables, dialogs y navegación permiten sumar dominios sin rehacer el shell.
8. **Progressive Domain Migration:** destinos pueden permanecer en interfaces anteriores o moverse a Vue conservando identificadores de navegación.
9. **Development/Production Resilience:** un hot file obsoleto no impide usar el manifest construido.
10. **Actor-Specific Presentation:** el servidor puede entregar navegación distinta para el mismo shell según autoridad contextual.

## Frontera reusable

### Reutilizable después de parametrización

- estructura de package frontend aislado;
- configuración Vite con entrypoints de login y aplicación;
- mount Blade y bootstrap JSON seguro;
- contrato base de producto, sesión, usuario, navegación y endpoints;
- router base y fallback;
- shell de layout;
- navegación derivada del servidor;
- primitivas UI genéricas que no contengan dominio ni marca;
- estrategia de hot file aislado y fallback a build;
- tratamiento común de expiración de sesión;
- fixtures y tests frontend puramente deterministas.

### Específico del proyecto y no transportable como shell

- nombres, logos, colores y textos Floulabs;
- rutas de pagos, onboarding, clientes y proveedores;
- views y presenters de esos dominios;
- modelos de roles y permisos concretos;
- URLs, identificadores y contratos internos;
- escenarios de certificación financiera;
- cualquier dato, fixture o referencia de negocio no clasificada para compartir.

### Pendiente de licencia o procedencia

Los módulos bajo `mt-vendor` y cualquier asset derivado de una plantilla comercial requieren confirmar licencia, derechos de reutilización y condiciones de redistribución. Hasta entonces:

- pueden funcionar como evidencia de la materialización existente;
- no deben incorporarse a una Compilation distribuible;
- no deben copiarse a Portfolio ni a otro proyecto;
- el shell reusable deberá reemplazarlos por componentes propios o dependencias con licencia confirmada.

## Acoplamientos que deben eliminarse antes de reutilizar

- global `window.__FLOULABS_CONSOLE__` específico de marca;
- base de router fija `/console`;
- interfaz `endpoints` cerrada sobre dominios Floulabs;
- imports directos de todas las vistas dentro del router central;
- identidad visual y textos embebidos;
- configuración HMR ligada al entorno local observado;
- aliases que apuntan directamente al `node_modules` interno;
- dependencia de un único mecanismo de sesión Laravel sin contrato abstracto.

Eliminar estos acoplamientos significa parametrizar la materialización. No implica diseñar un framework general ni copiarla prematuramente.

## Relación con conocimiento candidato

Esta implementación no materializa un único Crystal aislado. Es candidata a materializar un Crystal Set que incluya:

- `Context-Bound Operational Authority`, propuesto en el [estudio relacionado](floulabs-context-bound-operational-authority.md);
- conocimiento todavía no cristalizado sobre un **Server-Governed Operational Interface**;
- conocimiento técnico conocido de Laravel, Vue, Vite, routing, CSRF y sesión.

Forzar toda la implementación dentro de un solo Crystal confundiría conocimiento, composición y producto generado.

## Before Create, Search

El Patrimonio DIAMONT no contiene actualmente un Crystal activo de frontend operacional, shell Vue o integración Laravel/Vite reusable. Tampoco contiene una Materialization formal con esta composición.

La búsqueda sí encontró conocimiento relacionado:

- Context-Bound Operational Authority candidato: gobierna qué puede ver y hacer el actor;
- Crystal Dependency Resolution: podría gobernar imports futuros de la materialización;
- MINA Universal Knowledge Protocol: puede seleccionar la materialización por contexto tecnológico y política;
- Compilation: puede entregar una representación o referencia reproducible sin apropiarse del origen.

Por tanto, se justifica registrar una Known Materialization candidata. Todavía no se justifica crear automáticamente un nuevo Crystal de interfaz.

## Primer uso experimental propuesto

Portfolio constituye un consumidor apropiado para comprobar reutilización porque necesita una interfaz operacional gobernada, pero el experimento debe limitarse a análisis:

```text
KnowledgeRequest
  Idea: presentar gobierno operativo de MINA
  Project Context: Development Portfolio
  Execution Intent: analyze reusable frontend foundation
        ↓
MINA
        ↓
Candidate knowledge
  Context-Bound Operational Authority
  Server-Governed Operational Interface (gap)
        ↓
Known Materialization
  Floulabs Vue Operational Console
        ↓
MinaResolution
  reusable boundary
  excluded domain modules
  license constraints
  required adaptations
  uncertainties
```

MINA no debe recomendar copiar la carpeta. Debe explicar la composición, verificar contexto tecnológico y producir una propuesta sujeta a approval.

## Destino observado — Filament de Development Portfolio

Development Portfolio posee actualmente:

- Laravel 13;
- Filament 5 como backoffice en `/admin`;
- Mission Control custom implementado con React 19 y Vite;
- Laravel como autoridad de reglas, estado y acciones;
- navegación y sesión administrativas gobernadas por Filament.

El destino adecuado no es crear otra `/console` ni insertar Vue dentro del árbol React existente. El perfil de adaptación recomendado es:

```text
Filament Admin Panel
  owns authentication, global navigation and outer layout
        ↓
Filament Custom Page: MINA
        ↓
Blade mount + server-authored MINA bootstrap
        ↓
isolated Vue entrypoint
        ↓
MINA cognitive workspace
  Idea · Project Context · Execution Intent
  MinaResolution · Crystal Set · Coverage · Gaps
        ↓
Portfolio approvals remain governed by Laravel/Filament
```

### Responsabilidades preservadas

| Componente | Responsabilidad en la adaptación |
|---|---|
| Filament | Autenticación, navegación global, layout exterior, permisos de acceso a la página y gobierno administrativo. |
| Laravel Portfolio | Project Context, contratos, persistencia referencial, approvals, evidencia y bootstrap autorizado. |
| Vue workspace | Interacción cognitiva, presentación de resolución y componentes visuales específicos de MINA. |
| MINA | Selección, composición y explicación del conocimiento; no vive en el frontend. |
| React Mission Control | Continúa como superficie operacional existente; no se mezcla con el árbol Vue. |

### Elementos de Floulabs que sí pueden adaptarse

- entrypoint Vue aislado;
- bootstrap tipado generado por Laravel;
- patrón de endpoints explícitos;
- componentes de datos, status, confirmación y page header después de remover marca/licencias inciertas;
- carga diferida de vistas internas;
- manejo común de sesión expirada;
- build separado o entrypoint explícito dentro de Vite;
- tests deterministas de lógica de presentación.

### Elementos que Filament reemplaza

- login Vue independiente;
- `ConsoleLayout` como shell global;
- menú global de `/console`;
- user menu y logout propios;
- router base fijo `/console`;
- home operacional de Floulabs;
- branding y theme Materialize.

### Riesgos técnicos del destino

1. Portfolio ya carga React; incorporar Vue crea dos runtimes y exige entrypoints completamente aislados.
2. Vuetify y los estilos de Filament pueden colisionar; el experimento debe comenzar con estilos scoped y sin `mt-vendor`.
3. Filament debe seguir controlando el acceso a la página; Vue no puede convertirse en policy engine.
4. La bootstrap payload debe contener sólo referencias y acciones autorizadas, nunca el Patrimonio completo.
5. La integración no debe forzar que futuras interfaces MINA dependan de Filament o Vue.

### Decisión experimental

Para demostrar reutilización se prefiere una **Filament Custom Page con mount Vue aislado** sobre dos alternativas:

- copiar `/console`, porque duplicaría shell, autenticación y navegación;
- reescribir inmediatamente la materialización en React, porque probaría reinterpretación conceptual pero no reutilización de la implementación Vue.

Después del experimento deberá compararse el costo real de mantener Vue aislado frente a proyectar el mismo Crystal Set sobre el runtime React existente. La decisión productiva se tomará con esa evidencia.

## Evidencia pendiente

- confirmar licencias y procedencia de todos los assets reutilizables;
- ejecutar typecheck, tests frontend y build mediante un flujo autorizado por el proyecto de origen;
- identificar el conjunto mínimo de archivos después de parametrización;
- probar un mount sintético sin dominios Floulabs;
- comparar dependencias y restricciones tecnológicas con Development Portfolio;
- probar una Filament Custom Page sintética con entrypoint Vue aislado, sin modificar Mission Control;
- comprobar que otro actor puede reconstruir el shell desde la representación entregada;
- registrar qué conocimiento faltó durante la reutilización.

## Decisión provisional

La implementación Vue de `/console` es una **Known Materialization candidata reutilizable**, no un Crystal y no un paquete listo para copiar.

Su valor para el primer experimento MINA consiste en demostrar que el Patrimonio puede relacionar conocimiento, implementación, evidencia, restricciones de licencia y adaptaciones contextuales sin confundir ninguno de esos elementos.
