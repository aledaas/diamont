# Campaign History

## 2026-09-05 — Commercial thesis and delivery package reframed

Alejandro retains control of publication timing. The campaign is responsible for analyzing DIAMONT, sequencing the message, validating evidence and preparing each delivery—not for imposing a calendar.

The commercial center is now explicit: Alejandro created DIAMONT to let one responsible professional coordinate multiple AI workers while preserving intent, knowledge, authority and traceability, and this capability leads to Alejandro's architecture and engineering-production services.

Provider independence is supported as a design law. The claim that one person produces the workforce capacity of five developers is not yet supported by a reproducible measurement and must remain a hypothesis until a bounded case establishes a baseline, intervention cost, quality and outcomes. `STRATEGY.md` defines the revised delivery package and validation gate.

## 2026-09-05 — Four-day reception observed

### Evidence

- The newsletter reached 145 subscribers, with 144 new subscribers reported in the last seven days.
- LinkedIn's newsletter aggregate reported 238 impressions, 3 engagements and 12 article views.
- Edition 01 reported 118 impressions, 71 members reached, 3 article views and 2 reactions; 51% of impressions came from outside the author's network.
- Edition 02 reported 129 impressions, 67 members reached, 10 article views and 3 reactions; 41% of impressions came from outside the author's network.
- Neither edition had comments, reposts, saves, sends or followers attributed to it. Edition 01 produced one profile view.

### Interpretation

Subscriber acquisition is encouraging, but article readership and substantive interaction remain early. Edition 02's problem-led contrast converted similar reach into more article views than edition 01, so pieces 03 and 04 should keep a concrete, recognizable problem at the beginning and avoid opening with an abstract product definition.

The subscriber sample includes software and recruiting roles but does not yet establish reach among the primary fintech founder and CTO audience. Subscriber growth is therefore an audience-building signal, not evidence of commercial intent.

### Data quality

Aggregate and per-edition totals differ slightly across the screenshots. Both are preserved in `observations/2026-09-05-four-day-observation.yaml` without artificial reconciliation because LinkedIn metrics are estimated and the captures may have different refresh times or counting scopes.

### Next

Prepare pieces 03 and 04 using the observed editorial signal. Record the seven-day measurement on 2026-09-08.

## 2026-09-01 — Campaign foundation

### Intent

Preservar la campaña de LinkedIn como trabajo continuable y medible dentro del repositorio de DIAMONT, evitando que artículos, portadas, decisiones y aprendizaje queden dispersos en conversaciones.

### Decisions

- La campaña conduce a `alejandrodaas.site/diamont.html`, no directamente a GitHub.
- Las primeras dos piezas comienzan por problemas reconocibles antes de explicar el producto.
- Cada pieza posee versión española, adaptación inglesa, copy corto de distribución, CTA, fuentes y portada.
- La identidad visual usa negro, azul eléctrico, blanco hielo, verde ácido, geometría orbital y un Crystal luminoso.
- GitHub es evidencia técnica secundaria.
- Ninguna pieza se considera publicada sin URL verificable.

### Materialized

- Guía de campaña y protocolo de continuidad.
- Estado operativo legible por personas y workers.
- Artículos 01 y 02 en español e inglés.
- Dos portadas raster almacenadas en el repositorio.

### Next

Revisar tono y afirmaciones del artículo 01 con Alejandro. Publicarlo, registrar URL y comenzar la ventana de observación de 48 horas. No avanzar automáticamente al artículo 03 antes de observar al menos la recepción inicial de las dos primeras piezas.

## 2026-09-01 — LinkedIn article safe area correction

### Observation

El editor real de artículos de LinkedIn recortó lateralmente la portada 01 aun con el navegador alejado. La causa fue la relación más panorámica del activo original y la proximidad del título al borde izquierdo; el zoom del navegador no modifica el recorte aplicado por el contenedor de LinkedIn.

### Decision

- Reencuadrar las portadas 01 y 02 a `16:9`.
- Mantener todo contenido esencial dentro de una zona segura de `12%` lateral y `8%` vertical.
- Conservar las portadas originales como evidencia y adoptar variantes `-v2.png` para publicación.
- Incorporar el contrato de portada al protocolo de continuidad de la campaña.

### Result

Las variantes v2 reducen el contenido, agregan fondo prescindible y protegen título, numeración, Crystal y relaciones visuales frente al recorte de LinkedIn.

## 2026-09-01 — English-first and public series index

### Observation

La campaña poseía `distribution.es.md`, pero no el equivalente inglés, aunque la decisión editorial posterior estableció inglés como idioma principal. Los artículos aislados tampoco ofrecían un índice público para descubrir otras entregas.

### Decision

- Inglés pasa a ser el idioma editorial principal.
- Se agregan copies de distribución ingleses para las piezas 01 y 02.
- La serie debe publicarse como newsletter de LinkedIn bajo el nombre `Knowledge → Production`, siempre que la cuenta permita crearla.
- La newsletter funciona como índice editorial y suscripción; la landing permanece como destino comercial.
- Cada edición incluye navegación a la serie, edición anterior y próxima entrega.

### Next

Crear la newsletter en LinkedIn, persistir su URL real y publicar la edición 01 en inglés. No reemplazar marcadores de URL con valores inferidos.

### Newsletter identity asset

Se materializó un logo cuadrado de `300 × 300 px` desde el Crystal de DIAMONT para el formulario de creación de la newsletter: `assets/newsletter/knowledge-to-production-logo-300.png`.

## 2026-09-01 — Standalone article published before newsletter edition

### Evidence

- Standalone article: `https://www.linkedin.com/pulse/software-doesnt-begin-code-alejandro-ibrahin-daas-xrfff`
- Newsletter: `https://www.linkedin.com/newsletters/knowledge-%E2%86%92-production-7500406433772097537/`
- LinkedIn newsletter administration reports `0 ediciones` and offers `Crear edición` / `Escribir artículo`.

### Interpretation

The published article is not edition 01 of the newsletter. The newsletter exists and has a subscriber, but its edition sequence has not started.

### Next

Create edition 01 from inside the newsletter administration surface. Use the same approved English content and cover. Persist the new edition URL separately before deciding whether to retain, redirect through copy, or remove the standalone article.

## 2026-09-01 — Newsletter edition 01 published

### Evidence

- Official edition 01: `https://www.linkedin.com/pulse/software-doesnt-begin-code-alejandro-ibrahin-daas-sdpff/`
- Newsletter index: `https://www.linkedin.com/newsletters/knowledge-%E2%86%92-production-7500406433772097537/`
- Earlier standalone article remains recorded separately with suffix `xrfff`.

### Campaign state

- Newsletter is active.
- Piece 01 is published as an official edition.
- English distribution copy and edition-to-series navigation now contain real URLs.
- Piece 02 points back to edition 01.

### Next

Observe edition 01 at `+48h`, record qualitative and quantitative reception, and decide what to do with the earlier standalone article before preparing publication of edition 02.

## 2026-09-01 — Newsletter edition 02 published

### Evidence

- Official edition 02: `https://www.linkedin.com/pulse/documentation-knowledge-alejandro-ibrahin-daas-wfzlf/`
- Edition 01 and edition 02 are now connected in the repository navigation.

### Campaign state

- Two English editions are published.
- Both English distribution copies contain their real publication URLs.
- Edition 01 links forward to edition 02; edition 02 links back to edition 01 and to the newsletter index.

### Next

Observe both editions at `+48h`; record subscribers, impressions, article views, reactions, comments, reposts, landing visits and qualitative signals. Use those observations to refine piece 03 rather than publishing it immediately.

### Publication baseline confirmed

LinkedIn newsletter administration visibly reports `2 ediciones`, confirming that both pieces belong to `Knowledge → Production`. The same observation reports `1 suscriptor`; edition 02 was approximately two minutes old. Evidence was persisted in `observations/2026-09-01-publication-baseline.yaml` without drawing performance conclusions.

## 2026-09-01 — LinkedIn About alignment

The previous About positioned Alejandro primarily around blockchain, tokenization, and financial infrastructure. A new English-first version expands the positioning to platform architecture, fintech, reusable engineering knowledge, and governed AI-assisted production. It introduces DIAMONT through client value, identifies the operational ecosystem, defines target collaborators, and uses the DIAMONT landing as the primary CTA.

LinkedIn profile localization is preserved through two independent About versions: English as primary and Spanish as localized profile content. The languages must not be concatenated into one field.
