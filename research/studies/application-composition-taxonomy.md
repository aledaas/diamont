# Investigación — Application Composition Taxonomy

## Estado

**Diseño conceptual experimental · no cristalizado.**

Esta taxonomía organiza necesidades de producción para que MINA pueda proyectar el Crystal Graph como árboles de solución. No define todavía entidades persistentes, relaciones normativas ni una jerarquía universal.

## Intención

Permitir que una Software Factory responda rápidamente:

> ¿Qué clase de solución se solicita, qué estructura completa necesita, qué conocimiento disponible satisface cada parte y qué gaps impiden producirla con calidad?

## Principio estructural

El Patrimonio permanece relacional. La jerarquía aparece como una proyección contextual:

```text
Idea + Context + Execution Intent
              ↓
             MINA
              ↓
         Solution Tree
              ↓
    Crystal Set + Materializations
              ↓
          Production Plan
```

Un nodo de conocimiento puede participar en muchos árboles. La posición no define su identidad.

## Niveles candidatos

### L0 — Software Factory Offering

Capacidad comercial o productiva declarable por la fábrica.

Ejemplos:

- producir aplicaciones administrativas web;
- producir aplicaciones móviles nativas;
- producir APIs transaccionales;
- producir plataformas de integración.

No describe todavía una aplicación particular.

### L1 — Application Family

Familia determinada principalmente por medio, runtime y forma de interacción.

Ejemplos iniciales:

- Web Administration;
- Native Mobile Application;
- Public Web Experience;
- Backend Service;
- Event-driven Integration.

### L2 — Solution Archetype

Composición recurrente que responde a una clase reconocible de producto.

Ejemplos:

- Operational Dashboard;
- SaaS Administration;
- Mobile Wallet;
- Mobile Commerce;
- Logistics Companion.

Un producto real puede combinar varios arquetipos.

### L3 — Solution Domain

Área mayor de responsabilidad dentro de la solución:

- Experience;
- Business;
- Identity and Access;
- Data;
- Integration;
- Security;
- Quality;
- Operations;
- Delivery and Lifecycle.

### L4 — Subsystem

Componente coherente del sistema con frontera propia:

- Application Shell;
- Navigation;
- Authentication;
- Notification Center;
- Local Persistence;
- Observability.

### L5 — Capability

Efecto que el sistema debe poder producir.

Ejemplos:

- presentar navegación contextual;
- conservar sesión;
- filtrar colecciones;
- operar sin conectividad;
- recibir una notificación remota.

`Capability` permanece como hipótesis del lado de la demanda. No se declara todavía ontología DIAMONT.

### L6 — Required Virtue

Cualidad exigida a una capacidad en un contexto:

- accessible;
- responsive;
- fail-closed;
- auditable;
- offline-safe;
- tenant-isolated;
- locale-aware.

La virtud requerida expresa necesidad. Una Face expresa cómo un Crystal puede satisfacer una virtud.

### L7 — Knowledge Satisfaction

Resolución mediante:

- Crystal;
- Face;
- relación;
- composición conocida;
- evidencia contextual.

Una necesidad puede requerir varios Crystals y un Crystal puede satisfacer varias necesidades.

### L8 — Technology Materialization

Realización técnica aplicable:

- package;
- library adapter;
- source template;
- configuration;
- generator;
- implementation pattern;
- executable tool.

Las Materializations pueden tener releases, compatibilidades, licencias y digests. Los Crystals y Faces no se versionan.

## Dimensiones transversales

Todo árbol debe poder incorporar dimensiones que no pertenecen a una única rama:

| Dimensión | Pregunta |
|---|---|
| Context | ¿En qué proyecto, dominio, organización y jurisdicción aplica? |
| Actor | ¿Quién utiliza, administra, integra o mantiene la solución? |
| Authority | ¿Quién puede observar, decidir y producir efectos? |
| Platform | ¿Qué runtimes, dispositivos y restricciones técnicas existen? |
| Quality | ¿Qué nivel de accesibilidad, seguridad, rendimiento y confiabilidad se exige? |
| Evidence | ¿Qué observaciones respaldan suficiencia y compatibilidad? |
| Classification | ¿Qué conocimiento y artefactos puede recibir cada actor? |
| Lifecycle | ¿Cómo se instala, actualiza, retira, observa y recupera la solución? |

## Tipos provisionales de nodo en un Solution Tree

| Tipo | Responsabilidad |
|---|---|
| `required` | Sin este nodo la intención no queda satisfecha. |
| `conditional` | Es requerido únicamente bajo una condición explícita. |
| `optional` | Aporta valor pero su ausencia no impide la intención. |
| `alternative` | Puede satisfacerse por una de varias ramas equivalentes. |
| `constraint` | Restringe cómo deben resolverse otros nodos. |
| `extension` | Amplía una composición base sin redefinirla. |

Estos tipos no son todavía relaciones oficiales del Crystal Graph.

## Estados provisionales de cobertura

MINA debería poder evaluar cada nodo como:

| Estado | Significado |
|---|---|
| `covered` | Existe conocimiento y Materialization aplicables con evidencia suficiente. |
| `knowledge_only` | Existe conocimiento, pero no Materialization compatible. |
| `materialization_unverified` | Existe implementación candidata sin evidencia contextual suficiente. |
| `partial` | Sólo algunas virtudes requeridas están satisfechas. |
| `contradicted` | La evidencia o restricciones son incompatibles. |
| `gap` | No se encontró conocimiento suficiente. |
| `not_applicable` | El contexto excluye justificadamente el nodo. |

La cobertura pertenece a una resolución contextual, nunca globalmente al Crystal.

## Completitud de un árbol

Un árbol está listo para producción cuando:

1. todos los nodos `required` están cubiertos o poseen una decisión explícita;
2. se resolvieron las ramas `alternative`;
3. se evaluaron las `constraints` contra cada Materialization;
4. las incertidumbres relevantes son visibles;
5. existe una ruta trazable desde cada decisión hasta conocimiento y evidencia;
6. los gaps aceptados tienen autoridad, alcance y riesgo explícitos;
7. la composición puede compilarse para el actor productor.

Completitud no significa que toda aplicación utilice todas las capacidades del Patrimonio.

## Respuesta mínima esperada de MINA

```text
Recognized family: Web Administration
Candidate archetype: Operational Dashboard
Required nodes: 42
Covered: 31
Partial: 5
Knowledge only: 2
Unverified materialization: 1
Gaps: 3
Recommended composition: [identities]
Estimated path: reuse 74%, adapt 19%, discover 7%
Primary risks: [contextual explanation]
```

Los porcentajes son ilustrativos. Cualquier métrica futura deberá explicar su cálculo y no fingir precisión.

## Capacidad declarable de la Software Factory

La capacidad no debe expresarse como cantidad de Crystals. Debe proyectarse por familia y arquetipo:

```text
Application Family
  ├─ covered archetypes
  ├─ supported contexts
  ├─ known compositions
  ├─ compatible materializations
  ├─ evidence strength
  ├─ unresolved gaps
  └─ observed production cost
```

Esto permite ofrecer al mercado una respuesta comprensible sobre qué puede producirse ahora.

## Reglas de investigación

- Before Create, Search en cada nodo terminal.
- New Crystal is the last resort.
- Una rama no obliga a crear un Crystal equivalente.
- Un directorio o componente no demuestra identidad cognitiva.
- La repetición entre contextos aporta evidencia de reusabilidad.
- Una implementación exitosa genera evidencia, no verdad automática.
- El árbol se puede descartar y recompilar; el Graph conserva conocimiento y genealogía.
- El costo de resolución y verificación debe ser proporcional al riesgo.

## Frentes iniciales

Esta taxonomía comienza con dos perfiles complementarios:

- [Web Administration Solution System](web-administration-solution-system.md);
- [Native Mobile Application Solution System](native-mobile-application-solution-system.md).

Ambos deben revelar conocimiento compartido y conocimiento específico antes de cristalizar una clasificación universal.

