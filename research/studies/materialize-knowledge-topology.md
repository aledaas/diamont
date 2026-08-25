# Estudio — Materialize como evidencia de topología de conocimiento reusable

## Estado

**Investigación observacional · hipótesis no cristalizada.**

Este estudio no crea Crystals, Faces, relaciones normativas ni una ontología DIAMONT. Tampoco autoriza copiar o redistribuir Materialize. Observa cómo un producto mantenido por un equipo experimentado organiza conocimiento recurrente para producir múltiples familias de aplicaciones y múltiples implementaciones técnicas.

## Intención de la investigación

Comprender qué existe conceptualmente por encima, por debajo y alrededor de un componente reusable cuando una Software Factory necesita responder:

> ¿Qué sabemos producir, qué composición de conocimiento lo hace posible y qué parte puede materializarse inmediatamente en un contexto nuevo?

El episodio OPS-F35 demostró que una Materialization de workspace Vue pudo incorporarse en Portfolio. La nueva pregunta no es si el package puede instalarse, sino qué topología de conocimiento permitiría a MINA decidir si ese mismo conocimiento alcanza para transformar un dashboard completo, una aplicación móvil de wallet, una experiencia de comercio u otra clase de solución.

## Fuente observada

| Campo | Valor observado |
|---|---|
| Producto | Materialize — Material Design Admin Template |
| Distribución local | `materialize-admin-v13.11.1 2` |
| Ubicación de inspección | `/Users/alejandrodaas/Downloads/materialize-admin-v13.11.1 2` |
| Fecha de inspección | 2026-08-25 |
| Modalidad | Lectura local, sin ejecución ni modificación |

La distribución contiene implementaciones completas y starter kits para varias plataformas:

- Vue;
- Vue + Laravel;
- Next.js;
- Nuxt;
- HTML;
- HTML + Laravel;
- Django;
- ASP.NET Core MVC y Razor Pages.

También contiene configuraciones de demos y archivos de diseño. Esta multiplicidad resulta especialmente valiosa: permite observar qué conceptos sobreviven al cambio de framework y cuáles pertenecen solamente a una realización técnica.

## Restricción de licencia

La distribución declara una licencia mixta: PHP y HTML integrado bajo GPL, mientras que CSS, imágenes, diseño y otras partes quedan sujetos a la licencia adquirida en Envato.

Por lo tanto:

- el conocimiento conceptual puede estudiarse y formularse con procedencia;
- el código, estilos, assets y diseño no deben convertirse automáticamente en Patrimonio redistribuible;
- cualquier Known Materialization derivada requiere clasificación y autorización explícitas;
- aprender una virtud no equivale a adquirir derechos sobre su implementación fuente.

## Before Create, Search

Se comparó esta investigación con el Patrimonio y estudios actuales:

| Conocimiento existente | Coincidencia | Resultado |
|---|---|---|
| Crystal Graph | Fundamenta la representación relacional. | No describe clases de soluciones ni composición visual. |
| Knowledge Topology | Rechaza ubicación y jerarquía física como modelo del conocimiento. | Este estudio aporta evidencia concreta para una topología de composición. |
| Crystal Orchestration | Propone seleccionar Crystal Sets contextuales. | No identifica todavía cómo representar una familia recurrente de necesidades. |
| Floulabs Vue Operational Console Materialization | Estudia la adaptación de `/console` a Portfolio. | Se concentra en una implementación y un destino; no compara un producto multi-framework. |
| MINA Analyze Portfolio–Filament | Demuestra resolución y entrega de una Materialization. | No explica todavía la estructura cognitiva que antecede a la selección. |
| Glosario provisional | Define Crystal, Face, Crystal Set y Materialization. | No contiene `Solution Archetype`; el término permanece aquí como hipótesis. |

No existe un estudio que observe Materialize con este propósito. Corresponde crear investigación, no un Crystal.

## Hallazgo principal

Materialize no está organizado solamente como una colección de componentes. La repetición entre tecnologías revela capas de conocimiento diferenciables:

```text
Product Family
  ├─ Experience Architecture
  ├─ Visual System
  ├─ Application Shell
  ├─ Interaction Primitives
  ├─ Recurrent Application Capabilities
  ├─ Example Solution Archetypes
  └─ Technology-specific Materializations
```

La jerarquía de archivos cambia entre Vue, React/Next, HTML, Laravel, Django y ASP.NET, pero las responsabilidades reaparecen. La persistencia física no es la topología; la repetición conceptual entre representaciones sí constituye evidencia de conocimiento estable.

## La distinción starter kit / full version

La distribución separa sistemáticamente dos productos:

### Starter kit

Conserva la infraestructura mínima para comenzar una aplicación:

- configuración de theme;
- layouts vertical, horizontal y blank;
- navbar y footer;
- navegación y menús;
- responsive behavior;
- skins;
- light/dark/system mode;
- contenido boxed, compact o fluid según implementación;
- iconografía;
- internacionalización y RTL en implementaciones aplicables;
- componentes transversales como búsqueda, notificaciones, shortcuts, perfil y selector de theme;
- adaptadores del framework y sistema visual subyacente.

### Full version

Agrega un catálogo amplio de problemas resueltos:

- dashboards de analytics, CRM y e-commerce;
- usuarios, roles y permisos;
- calendar, chat, email y kanban;
- commerce, invoice, logistics y academy;
- formularios, validación y wizards;
- tablas y data presentation;
- charts y mapas;
- autenticación y account settings;
- front pages, landing y help center;
- ejemplos extensos de componentes e interacción.

### Interpretación

El starter kit expresa un **kernel de experiencia de aplicación**. La full version expresa un **catálogo de composiciones conocidas** sobre ese kernel.

Esto sugiere que la capacidad de una Software Factory no debe medirse sólo por componentes disponibles. Debe distinguir:

1. conocimiento estructural mínimo para una clase de experiencia;
2. capacidades recurrentes combinables;
3. composiciones conocidas que resuelven familias de productos;
4. Materializations compatibles con un stack concreto.

## Invariantes aparentes entre implementaciones

Los siguientes conceptos reaparecen con nombres y mecanismos distintos:

### 1. Application Shell

Responsabilidad de ordenar el espacio persistente de la aplicación:

- header o navbar;
- navegación vertical u horizontal;
- contenido principal;
- footer;
- layout blank para experiencias excepcionales;
- comportamiento de overlay o colapso según breakpoint.

En Vue aparece mediante layouts y componentes dedicados. En Next.js reaparece como `VerticalLayout`, `HorizontalLayout`, `LayoutWrapper`, header, navbar, footer y wrappers estilizados. En HTML se expresa mediante templates verticales/horizontales y variantes sin customizer.

La virtud estable no es un componente Vue ni una plantilla Blade. Es preservar una estructura operativa coherente mientras cambia su representación.

### 2. Configurable Layout Policy

La configuración observada separa decisiones que un producto puede variar sin reescribir su shell:

- navegación vertical u horizontal;
- expansión o colapso;
- navbar sticky, fixed, static u hidden;
- footer sticky, fixed, static u hidden;
- contenido boxed, compact, wide o fluid;
- navbar attached, detached, floating o blurred según plataforma;
- breakpoint de transición a navegación overlay;
- padding y ancho máximo;
- dirección LTR/RTL.

Estas alternativas no son componentes independientes: forman un espacio de políticas relacionadas con el shell.

### 3. Visual Semantics before concrete widgets

Los themes definen primero semántica transversal:

- primary y secondary;
- success, info, warning y error;
- background, surface y contraste sobre ambos;
- escalas neutrales;
- bordes y opacidad;
- estados hover, focus, selected, activated, pressed, dragged y disabled;
- sombras y elevación;
- light y dark;
- skins default y bordered.

Después los componentes concretos heredan o adaptan esa semántica. Esto sugiere que color, densidad, estado y elevación no deben modelarse como decisiones aisladas de cada pantalla.

### 4. Navigation as structured knowledge

La navegación no se reduce a una lista de enlaces. El modelo observado distingue:

- links;
- groups anidados;
- section titles;
- iconos y badges;
- disabled state;
- destinos internos y externos;
- relación con permisos o ACL;
- presentación vertical y horizontal del mismo significado.

La estructura semántica de navegación puede permanecer estable mientras su Materialization visual cambia.

### 5. Cross-cutting experience capabilities

El starter kit considera transversales:

- búsqueda;
- notificaciones;
- shortcuts;
- perfil del usuario;
- selección de idioma;
- cambio de theme;
- scroll-to-top;
- loading indicators;
- route transitions;
- responsive sidebars;
- autorización de presentación;
- persistencia de preferencias.

No todas son obligatorias en cada producto. Su repetición indica un catálogo de capacidades candidatas que el contexto debe seleccionar.

### 6. Component adaptation layer

Materialize no utiliza sin mediación el design system subyacente. Incluye overrides o adaptadores para botones, tablas, campos, chips, diálogos, listas, tabs, tooltips, alerts, pagination y otros elementos.

La coherencia visual completa requiere al menos:

```text
Semantic Tokens
      ↓
Framework Theme Adapter
      ↓
Primitive Overrides
      ↓
Composite Components
      ↓
Application Views
```

OPS-F35 transportó principalmente un shell visual aislado. No transportó todavía toda esta cadena hacia los componentes nativos de Filament.

### 7. Composition examples as operational knowledge

Dashboards, e-commerce, roles, invoice o logistics no son meras categorías de archivos. Cada una constituye una composición demostrativa de:

- layout;
- navegación;
- widgets;
- flujos;
- estados;
- componentes;
- datos simulados;
- feedback;
- patrones de interacción.

Su existencia aporta evidencia de que un equipo puede conservar soluciones conocidas por encima del nivel de componente sin convertirlas en una única aplicación monolítica.

## Capas candidatas de una topología DIAMONT

La observación sugiere investigar las siguientes capas. Los nombres son provisionales y no constituyen entidades aprobadas.

### A. Solution Archetype

Descripción relacional de una clase recurrente de solución y de las virtudes que normalmente exige.

Ejemplos candidatos:

- Operational Web Dashboard;
- Mobile Wallet;
- Mobile Commerce;
- SaaS Administration;
- Public Content Experience.

Un arquetipo no es un Crystal padre, un directorio, una Feature ni una implementación. Podría ser una composición conocida, una proyección del Graph o conocimiento cristalizado específico; la evidencia actual todavía no permite elegir.

### B. Experience Architecture

Conocimiento sobre cómo se organiza una experiencia completa:

- shell;
- navegación;
- jerarquía visual;
- regiones persistentes y variables;
- comportamiento responsive;
- estados globales;
- feedback y continuidad de interacción.

### C. Capability Topology

Mapa de capacidades necesarias o frecuentes para una clase de solución.

En un dashboard administrativo podrían aparecer búsqueda, navegación contextual, data presentation, filtros, formularios, acciones, permisos y auditoría. En una wallet aparecerían además ledger, saldos, transferencias, autorización fuerte y recuperación. Las capacidades compartidas no deben duplicarse por arquetipo.

### D. Visual System

Conocimiento relacional sobre tokens semánticos, tipografía, spacing, densidad, elevación, estados, theming y adaptación de primitivas.

### E. Interaction and Component Knowledge

Conocimiento sobre virtudes de interacción y componentes individuales o compuestos. No todo componente justifica un Crystal: puede ser una Face, una Materialization, parte de una composición o evidencia de conocimiento todavía no delimitado.

### F. Technology Materialization

Realización concreta para Vue/Vuetify, React/MUI, Bootstrap/HTML, Blade/Laravel, Django o ASP.NET. Puede tener releases técnicos, dependencias, matrices de compatibilidad, digests y restricciones de licencia. No cambia la identidad de los Crystals que materializa.

## Grafo candidato, no jerarquía propietaria

La forma conceptual observada podría expresarse así:

```text
[Operational Web Dashboard]
   requires ──> [Application Shell]
   requires ──> [Structured Navigation]
   requires ──> [Visual Semantics]
   commonly_uses ──> [Data Presentation]
   commonly_uses ──> [Forms and Validation]
   constrained_by ──> [Responsive Experience]
   constrained_by ──> [Accessibility]

[Mobile Wallet]
   requires ──> [Structured Navigation]
   requires ──> [Visual Semantics]
   requires ──> [Identity and Authorization]
   requires ──> [Ledger]
   constrained_by ──> [Mobile Interaction]
   constrained_by ──> [Security]

[Structured Navigation]
   materialized_by ──> [Vue Vertical/Horizontal Nav]
   materialized_by ──> [Next MUI Menu]
   materialized_by ──> [HTML Bootstrap Menu]
```

El mismo nodo participa en varias composiciones. Ningún arquetipo posee de forma exclusiva a sus partes. Lo “más grande” es contexto de composición, no necesariamente una identidad superior.

## Lectura del caso Portfolio

La pantalla `/admin/mina` demuestra:

- mount Vue aislado dentro de un host Filament;
- shell cognitivo reusable;
- bootstrap producido por el servidor anfitrión;
- adaptación de identidad y métricas al contexto Portfolio;
- resolución y entrega verificable mediante MINA.

No demuestra todavía:

- tematización integral de Filament;
- adaptación de sus componentes nativos;
- design tokens compartidos entre Filament y el workspace;
- navegación global derivada del mismo sistema;
- coherencia visual en forms, tables, modals, notifications y estados;
- suficiencia del Crystal Set para un dashboard administrativo completo.

La nueva intención propuesta —cambiar integralmente el look and feel de Filament— requiere evaluar al menos:

1. Application Shell;
2. Visual Semantics;
3. Filament Theme Adapter;
4. Primitive Overrides;
5. Navigation Integration;
6. Responsive Behavior;
7. Accessibility;
8. Host Authority Preservation.

MINA debería explorar primero el Patrimonio y explicar cuáles de estas virtudes están cubiertas, cuáles cuentan con Materialization compatible y cuáles constituyen gaps.

## Consecuencia para la Software Factory

El inventario útil no es una lista de Crystals. Es una vista explicable de capacidad productiva:

```text
Idea
  ↓
Candidate Solution Archetype
  ↓
Required Virtues and Capabilities
  ↓
Known Compositions in the Patrimony
  ↓
Applicable Crystal Set
  ↓
Compatible Materializations
  ↓
Coverage, Evidence and Gaps
  ↓
Fastest justified production path
```

Una respuesta futura de MINA debería poder declarar:

- qué clase de solución reconoce;
- qué supuestos utilizó;
- qué sabe producir inmediatamente;
- qué Crystals y Faces satisfacen cada necesidad;
- qué Materializations son compatibles con el stack objetivo;
- qué evidencia respalda esa compatibilidad;
- qué falta y qué riesgo introduce;
- por qué recomienda una composición frente a alternativas.

La rapidez no proviene de omitir razonamiento, sino de reutilizar composiciones conocidas y receipts verificables sin repetir validaciones ya resueltas.

## Observación sobre costo metodológico

OPS-F34 y OPS-F35 mostraron que repetir verificaciones remotas, revisiones integrales y transferencias textuales puede consumir más esfuerzo que el cambio producido. Ese comportamiento no debe normalizarse.

Materialize ofrece una pista operativa: separa un kernel reutilizable, variantes configurables y catálogos de solución. DIAMONT/MINA debería poder separar de forma equivalente:

- conocimiento ya validado;
- resolución contextual nueva;
- compatibilidad técnica por comprobar;
- producción experimental;
- gates de alto riesgo.

Cada actor debería verificar únicamente lo que cambió o lo que su contexto todavía no puede confiar. Una Compilation Receipt validada debe evitar reconstruir el Patrimonio o reauditar fuentes en cada consumo.

## Hipótesis emergentes

1. Un **Solution Archetype** podría representar una composición conocida de virtudes y capacidades, sin convertirse en jerarquía propietaria.
2. El **starter kit** observado es evidencia de un kernel de experiencia reusable distinto de los casos de negocio demostrativos.
3. El **full version** es evidencia de composiciones conocidas sobre ese kernel, no de un único Crystal mayor.
4. Theme, shell, navegación, componentes y aplicaciones pertenecen a niveles de responsabilidad distintos aunque los sistemas de archivos los aniden.
5. La misma virtud puede participar en web, mobile y otras experiencias mediante Materializations diferentes.
6. La capacidad declarable de la Software Factory emerge de subgrafos resolubles y materializables, no de la cantidad de Crystals almacenados.
7. La topología debe poder expresar obligatoriedad, opcionalidad, alternativas, restricciones y evidencia contextual sin imponer un árbol.

Estas hipótesis permanecen abiertas. No deben incorporarse todavía al glosario normativo ni al modelo persistente.

## Preguntas de investigación

- ¿Un Solution Archetype es conocimiento cristalizado, una composición conocida, una consulta/proyección del Graph o una responsabilidad diferente?
- ¿Cómo expresa una composición partes requeridas, opcionales, alternativas e incompatibles?
- ¿Qué criterio distingue un Crystal, una Face, una composición y una Materialization?
- ¿Cómo representa MINA que una capacidad está cubierta parcialmente?
- ¿Cómo conserva compatibilidad por contexto sin convertirla en verdad global o versión de Crystal?
- ¿Qué evidencia permite afirmar que una composición funciona fuera del proyecto originador?
- ¿Cómo mide MINA costo, tiempo, calidad y riesgo para recomendar el camino productivo más conveniente?
- ¿Cómo se representa una familia de soluciones sin convertir el Graph en una taxonomía rígida?
- ¿Qué parte del conocimiento visual de Materialize puede formularse independientemente de su diseño protegido?
- ¿Cómo se adapta un Visual System a componentes nativos de Filament sin copiar la implementación fuente?

## Próximo experimento recomendado

Usar la intención real:

> Transformar integralmente el look and feel del panel Filament de Portfolio usando el conocimiento ya disponible y preservando la autoridad operacional del host.

Antes de implementar, producir una resolución experimental que:

1. identifique el arquetipo candidato;
2. enumere virtudes requeridas sin asumir que son ontología definitiva;
3. busque primero en el Crystal Set y Materializations existentes;
4. explique la cobertura del workspace entregado en OPS-F35;
5. identifique gaps concretos para theme, shell y componentes Filament;
6. proponga la composición mínima necesaria;
7. diferencie conocimiento reusable de assets o código restringidos por licencia;
8. estime el camino de producción más rápido justificable;
9. utilice aseguramiento proporcional al riesgo;
10. devuelva observaciones sin crear automáticamente Faces o Crystals.

El éxito del experimento no se medirá solamente por semejanza visual. También deberá mostrar que MINA pudo recorrer conocimiento relacionado, explicar su selección y reducir significativamente coordinación, verificaciones repetidas y costo de producción.

## Conclusión provisional

Materialize aporta evidencia fuerte de que una Software Factory madura opera sobre varias escalas simultáneas: kernel de experiencia, políticas configurables, primitives, composiciones funcionales, arquetipos demostrativos y Materializations tecnológicas.

No demuestra que DIAMONT deba copiar esa jerarquía. Demuestra que los Crystals aislados son insuficientes para expresar capacidad productiva. El conocimiento necesita relaciones y composiciones conocidas que permitan a MINA responder rápidamente qué puede producir, con qué evidencia y bajo qué restricciones.

La entidad “más grande” no está descubierta todavía. La hipótesis mejor respaldada es una **constelación contextual de conocimiento asociada a un Solution Archetype**, no un Crystal padre ni un árbol permanente.
