# LinkedIn Campaign — DIAMONT: Knowledge to Production

## Purpose

Convertir el desarrollo real de DIAMONT, MINA, Portfolio, Mission Control y Runner en una narrativa pública coherente que:

1. genere identificación con problemas reales de producción de software;
2. construya autoridad alrededor de arquitectura, fintech e ingeniería asistida por agentes;
3. permita comprender progresivamente el ecosistema sin exigir leer el repositorio;
4. conduzca prospectos calificados a `https://alejandrodaas.site/diamont.html`;
5. produzca aprendizaje editorial trazable para futuras campañas.

## Source of truth and boundaries

- La fuente normativa de DIAMONT permanece en `docs/`, `discoveries/`, `research/` y `crystals/`.
- Esta carpeta es la fuente de verdad de **la campaña**, no del modelo DIAMONT.
- Toda afirmación técnica debe poder rastrearse a una fuente del repositorio o a evidencia autorizada.
- No se publican credenciales, datos financieros, infraestructura privada, código de clientes ni métricas no autorizadas.
- Floulabs, Finance Engines y FavorX sólo se mencionarán con el nivel de detalle expresamente autorizado.

## Audience

Audiencia primaria:

- founders y CTOs de fintech;
- responsables de plataformas financieras;
- engineering leaders incorporando agentes de IA;
- equipos que modernizan sistemas críticos o coordinan múltiples repositorios y workers.

Posicionamiento técnico:

> Platform Architect | AI-assisted Software Engineering | Engineering Production Systems | Laravel · Kotlin · Fintech Platforms

Posicionamiento comercial:

> Software Architect | Fintech Platforms | Agentic Engineering | Founder @ DIAMONT

## Narrative arc

```text
Problem recognition
    ↓
Why documentation and code are insufficient
    ↓
DIAMONT and Crystals
    ↓
MINA discovers applicable knowledge
    ↓
Portfolio and Mission Control govern production
    ↓
Runner executes approved work
    ↓
Financial cases demonstrate application
    ↓
Commercial invitation
```

## Publishing rhythm

- Cadencia inicial: 2 publicaciones semanales.
- Alternar artículos conceptuales, diagramas/carruseles, producto real y casos.
- Publicar una invitación comercial aproximadamente cada cuatro piezas.
- Idioma editorial principal: inglés. Español se conserva como adaptación selectiva para expansión regional.
- Enlace primario: landing DIAMONT; GitHub permanece como evidencia secundaria, no como destino de campaña.
- Índice público recomendado: newsletter de LinkedIn `Knowledge → Production`; ver [PUBLICATION.md](PUBLICATION.md).

## Current state

Leer [status.yaml](status.yaml) para el estado operativo, [HISTORY.md](HISTORY.md) para las decisiones y avances, y [STRATEGY.md](STRATEGY.md) para la tesis comercial, el paquete de entregas y sus reglas de evidencia.

| ID | Pieza | Estado | Activo |
|---|---|---|---|
| 01 | [Software Doesn't Begin With Code](posts/01-software-does-not-begin-with-code/article.en.md) | `published` | [Cover 16:9](assets/covers/01-software-does-not-begin-with-code-v2.png) |
| 02 | [Documentation Is Not Knowledge](posts/02-documentation-is-not-knowledge/article.en.md) | `published` | [Cover 16:9](assets/covers/02-documentation-is-not-knowledge-v2.png) |
| 03 | [DIAMONT: Knowledge → Production](posts/03-diamont-knowledge-to-production/article.en.md) | `ready_for_review` | [Cover 16:9](assets/covers/03-diamont-knowledge-to-production-v2.png) |
| 04 | [The Shortest Path From Intent to Software](posts/04-shortest-path-intent-to-software/article.en.md) | `ready_for_review` | [Cover 16:9](assets/covers/04-shortest-path-intent-to-software-v2.png) |
| 05 | The DIAMONT Stack: How an AI Software Factory Operates | `planned` | Pendiente |
| 06 | MINA no es otro chatbot | `planned` | Pendiente |
| 07 | Mission Control + Portfolio: gobierno de la producción | `planned` | Pendiente |
| 08 | Runner: de acción aprobada a ejecución local | `planned` | Pendiente |
| 09 | Floulabs: autoridad contextual | `blocked_by_publication_scope` | Pendiente |
| 10 | Caso medido de capacidad productiva | `blocked_by_measurement` | Pendiente |
| 11 | Evidencia de dominio: Finance Engines / FavorX / Floulabs | `blocked_by_publication_scope` | Pendiente |
| 12 | Trabajar con Alejandro / diagnóstico | `planned` | Pendiente |

## Worker continuation protocol

Un worker que se incorpore debe:

1. leer este archivo completo;
2. leer `status.yaml` y la última entrada de `HISTORY.md`;
3. abrir la última pieza terminada y la siguiente pieza planificada;
4. verificar las afirmaciones contra las fuentes declaradas en el front matter;
5. no marcar una pieza como `published` sin URL y fecha reales;
6. después de publicar, registrar métricas en tres ventanas: `+48h`, `+7d` y `+30d`;
7. añadir decisiones o cambios de dirección a `HISTORY.md`;
8. actualizar `next_action` en `status.yaml` antes de terminar.
9. conservar la navegación entre ediciones y el índice público según `PUBLICATION.md`.

La campaña debe continuar por su próxima acción explícita, no por inferencia del worker.

## LinkedIn article cover contract

Toda portada nueva debe:

- usar relación exacta o prácticamente equivalente a `16:9`;
- mantener texto, numeración y Crystal dentro de una zona segura con al menos `12%` de margen lateral y `8%` vertical;
- conservar fondo prescindible alrededor de la zona segura para absorber el recorte aplicado por LinkedIn;
- verificar legibilidad después de cargarla en el editor real del artículo;
- crear una nueva variante versionada si cambia el encuadre; no sobrescribir la evidencia visual anterior.

## Success signals

Priorizar calidad sobre volumen:

- conversaciones iniciadas por personas del público objetivo;
- clics con intención hacia la landing;
- solicitudes de diagnóstico o conversación;
- guardados y comentarios sustantivos;
- temas que revelen objeciones, preguntas o nuevo conocimiento.

Las impresiones y reacciones se registran, pero no prueban por sí solas interés comercial.
