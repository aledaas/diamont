# Investigación — Web Administration Solution System

## Estado

**Árbol de solución candidato · no cristalizado.**

Este perfil utiliza Materialize como evidencia primaria y Portfolio/Filament como primer contexto de contraste. No prescribe un framework ni autoriza implementación.

## Identidad provisional

Sistema de conocimiento capaz de componer aplicaciones web destinadas a observar, administrar y operar dominios mediante navegación persistente, presentación de datos, acciones gobernadas y feedback trazable.

## Arquetipos iniciales

- Operational Dashboard;
- SaaS Administration;
- Backoffice;
- Control Center;
- Tenant Administration;
- Knowledge Operations Workspace.

## Árbol candidato

```text
Web Administration
├── Experience Architecture
│   ├── Application Shell
│   │   ├── Header / Navbar
│   │   ├── Primary Navigation
│   │   ├── Main Content Region
│   │   ├── Footer
│   │   ├── Blank Layout
│   │   └── Responsive Shell Adaptation
│   ├── Visual System
│   │   ├── Semantic Color Tokens
│   │   ├── Typography
│   │   ├── Spacing and Density
│   │   ├── Borders and Radius
│   │   ├── Elevation and Shadows
│   │   ├── Interaction States
│   │   ├── Light / Dark / System
│   │   └── Brand Adaptation
│   ├── Navigation Experience
│   │   ├── Links, Groups and Sections
│   │   ├── Vertical / Horizontal Projection
│   │   ├── Collapsed / Overlay Behavior
│   │   ├── Breadcrumb and Wayfinding
│   │   ├── Search and Shortcuts
│   │   └── Capability-bounded Presentation
│   └── Global Feedback
│       ├── Loading
│       ├── Empty State
│       ├── Error State
│       ├── Notification
│       └── Confirmation
├── Interaction Primitives
│   ├── Actions and Buttons
│   ├── Forms and Inputs
│   ├── Validation
│   ├── Dialogs and Drawers
│   ├── Tabs and Expansion
│   ├── Pagination
│   ├── Selection
│   └── Drag and Drop
├── Data Experience
│   ├── Cards and Metrics
│   ├── Tables and Lists
│   ├── Filtering and Search
│   ├── Sorting and Grouping
│   ├── Charts
│   ├── Timelines
│   ├── Detail Views
│   └── Export and Import
├── Identity and Authority
│   ├── Authentication
│   ├── Session
│   ├── User Profile
│   ├── Roles and Permissions
│   ├── Context-bound Authority
│   └── Auditability
├── Operational Capabilities
│   ├── CRUD
│   ├── Bulk Actions
│   ├── Workflows and Status
│   ├── Approval
│   ├── Activity and History
│   ├── Notifications
│   └── Background Operation Feedback
├── Cross-cutting Quality
│   ├── Accessibility
│   ├── Responsive Behavior
│   ├── Internationalization
│   ├── RTL
│   ├── Performance
│   ├── Security
│   ├── Privacy
│   ├── Observability
│   └── Testability
├── Host Integration
│   ├── Routing
│   ├── Server-authored Bootstrap
│   ├── API Contract
│   ├── Asset Delivery
│   ├── Theme Adapter
│   ├── Component Adapter
│   └── Authority Preservation
└── Lifecycle
    ├── Starter Composition
    ├── Installation
    ├── Configuration
    ├── Build
    ├── Upgrade
    ├── Compatibility
    ├── Rollback
    └── Retirement
```

## Variantes configurables observadas en Materialize

Materialize aporta evidencia para modelar como políticas, no como productos separados:

- navegación vertical u horizontal;
- expandida, colapsada u overlay;
- navbar sticky, fixed, static u hidden;
- footer sticky, fixed, static u hidden;
- contenido boxed, compact, wide o fluid;
- layout attached, detached o floating donde aplica;
- theme light, dark o system;
- skin default o bordered;
- LTR o RTL;
- full version o starter composition.

## Arquetipo — Operational Dashboard

### Núcleo requerido

- shell persistente;
- navegación contextual;
- identidad y sesión;
- resumen de estado;
- presentación de métricas;
- listas o tablas operativas;
- filtros y búsqueda;
- detail view;
- acciones gobernadas;
- feedback de resultado;
- responsive y accesibilidad;
- observabilidad y auditoría adecuadas al riesgo.

### Extensiones frecuentes

- charts;
- calendario;
- activity feed;
- approvals;
- notificaciones;
- exportación;
- colaboración;
- personalización del workspace.

## Arquetipo — SaaS Administration

Agrega normalmente:

- tenant context;
- membresías;
- roles y permissions;
- billing y plan visibility;
- configuración por tenant;
- usage presentation;
- soporte y audit trail;
- límites y entitlement.

No se presume que billing o tenancy pertenezcan al mismo Crystal que el shell.

## Aplicación a Portfolio

### Cobertura observada en OPS-F35

- Custom Page Filament;
- mount Vue aislado;
- server-authored bootstrap;
- shell cognitivo;
- navegación interior básica;
- métricas contextuales;
- Materialization resuelta y verificada;
- autoridad exterior preservada por Laravel/Filament.

### Cobertura no demostrada

- Visual System aplicado al host completo;
- tokens compartidos;
- theme adapter de Filament;
- primitive overrides de Filament;
- navegación global coherente;
- formularios, tablas, modales y notifications tematizados;
- accesibilidad del sistema completo;
- responsive integral;
- composición desde el Patrimonio sin coordinación manual elevada.

## Resolución que MINA debería producir antes del cambio de Filament

1. Reconocer `Web Administration / Operational Dashboard`.
2. Compilar el árbol requerido para Portfolio.
3. Marcar qué ramas satisface OPS-F35.
4. Identificar Crystals y Faces candidatos por rama.
5. Resolver Materializations compatibles con Laravel y Filament.
6. Separar conocimiento reusable de assets Materialize restringidos.
7. Detectar gaps en theme y component adapters.
8. Proponer el corte mínimo que produzca coherencia integral.
9. Explicar costo, riesgo y evidencia.

## Primer entregable de capacidad

La fábrica podrá declarar `Web Administration` como capacidad únicamente cuando pueda reconstruir un starter funcional sin depender de conocimiento tácito del actor:

- shell;
- theme;
- navegación;
- identidad;
- data presentation;
- interaction primitives;
- quality baseline;
- instalación y configuración reproducibles.

Los arquetipos especializados ampliarán esa base.

## Preguntas abiertas

- ¿El Application Shell constituye un Crystal, una composición o varias identidades relacionadas?
- ¿Visual System y Theme Adapter pertenecen al mismo conocimiento?
- ¿Qué parte de CRUD es transversal y qué parte depende del dominio?
- ¿Cómo expresa el árbol que Filament ya aporta capacidades que no deben reemplazarse?
- ¿Cómo mide MINA coherencia visual sin reducirla a semejanza de píxeles?
- ¿Qué evidencia permite declarar un starter kit reusable?

## Criterio del primer experimento

El cambio integral de Filament podrá comenzar cuando MINA entregue un árbol cuya cobertura y gaps sean comprensibles por un humano y cada hoja productiva esté vinculada a conocimiento, Materialization o decisión explícita.

