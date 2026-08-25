# Investigación — Native Mobile Application Solution System

## Estado

**Árbol de solución candidato · no cristalizado.**

Este perfil describe necesidades conceptuales de aplicaciones móviles. No selecciona todavía Kotlin, Compose, Swift, una estrategia multiplataforma ni una arquitectura técnica definitiva.

## Identidad provisional

Sistema de conocimiento capaz de componer aplicaciones instalables que operan bajo restricciones de dispositivo, movilidad, conectividad intermitente, distribución controlada y ciclos de vida administrados por plataformas móviles.

## Arquetipos iniciales

- Mobile Wallet;
- Mobile Commerce;
- Logistics Companion;
- Healthcare Companion;
- Field Operations;
- Consumer Account Application.

## Árbol candidato

```text
Native Mobile Application
├── Mobile Experience Architecture
│   ├── Application Shell
│   ├── Navigation
│   │   ├── Stack
│   │   ├── Tabs
│   │   ├── Drawer
│   │   ├── Deep Links
│   │   └── Back Behavior
│   ├── Screen Composition
│   ├── Adaptive Layout
│   ├── Orientation
│   ├── System Insets
│   ├── Keyboard Interaction
│   └── Lifecycle-aware Experience
├── Mobile Visual System
│   ├── Semantic Tokens
│   ├── Typography
│   ├── Spacing and Density
│   ├── Light / Dark / System
│   ├── Platform Adaptation
│   ├── Motion
│   ├── Iconography
│   └── Brand Adaptation
├── Interaction
│   ├── Touch Targets
│   ├── Gestures
│   ├── Forms and Validation
│   ├── Lists and Collections
│   ├── Dialogs and Bottom Sheets
│   ├── Pull to Refresh
│   ├── Loading and Skeletons
│   ├── Empty / Error / Offline States
│   └── Haptic and System Feedback
├── Identity and Security
│   ├── Authentication
│   ├── Session and Token Handling
│   ├── Biometrics
│   ├── Secure Local Storage
│   ├── Device Binding
│   ├── Authorization
│   ├── Privacy
│   ├── Screenshot / Clipboard Policy
│   └── Compromise Response
├── Data and Connectivity
│   ├── API Client
│   ├── Serialization
│   ├── Local Persistence
│   ├── Cache
│   ├── Offline-first Policy
│   ├── Synchronization
│   ├── Conflict Resolution
│   ├── Retry and Backoff
│   └── Connectivity Observation
├── Device Capabilities
│   ├── Camera
│   ├── Media and Files
│   ├── Location
│   ├── Contacts
│   ├── Sensors
│   ├── NFC / Proximity
│   ├── Biometrics
│   ├── Share Sheet
│   └── Permissions
├── Engagement
│   ├── Push Notifications
│   ├── Local Notifications
│   ├── Deep-link Routing
│   ├── In-app Messaging
│   └── Background Work
├── Cross-cutting Quality
│   ├── Accessibility
│   ├── Internationalization
│   ├── Performance
│   ├── Battery and Network Efficiency
│   ├── Reliability
│   ├── Security
│   ├── Privacy
│   ├── Observability
│   └── Testability
├── Platform Integration
│   ├── Android Adaptation
│   ├── iOS Adaptation
│   ├── Shared / Platform-specific Boundary
│   ├── Native Services
│   └── Compatibility Matrix
└── Delivery and Lifecycle
    ├── Project Bootstrap
    ├── Environment Configuration
    ├── Signing
    ├── Build Variants
    ├── CI/CD
    ├── Store Distribution
    ├── Staged Rollout
    ├── Crash Monitoring
    ├── Upgrade and Migration
    └── Retirement
```

## Kernel móvil candidato

El equivalente móvil del starter kit de Materialize debería poder producir, como mínimo:

- proyecto instalable;
- shell y navegación;
- visual system adaptable;
- screen states comunes;
- API client;
- persistencia local;
- sesión segura;
- manejo de conectividad;
- deep links;
- notifications básicas;
- observabilidad;
- testing baseline;
- build y distribución reproducibles.

Este kernel no contiene todavía wallet, commerce ni healthcare. Permite que esos arquetipos se compongan sobre una base conocida.

## Arquetipo — Mobile Wallet

```text
Mobile Wallet
├── Customer Identity
├── Account Portfolio
├── Balances
├── Ledger Projection
├── Transaction History
├── Money Movement
│   ├── Recipient
│   ├── Amount and Currency
│   ├── Fees
│   ├── Review
│   ├── Strong Authorization
│   ├── Receipt
│   └── Failure / Reversal
├── Funding and Withdrawal
├── Security Center
├── Device Trust
├── Recovery
├── Notifications
├── Auditability
├── Support and Disputes
└── Regulatory Context
```

### Virtudes críticas candidatas

- exactitud monetaria;
- idempotencia;
- autorización fuerte;
- fail-closed;
- auditabilidad;
- privacidad;
- claridad irreversible antes de confirmar;
- recuperación segura;
- consistencia entre estado local y autoridad remota.

No se asume que ledger, pagos, identidad y UI pertenezcan a un mismo Crystal.

## Arquetipo — Mobile Commerce

```text
Mobile Commerce
├── Customer Identity
├── Catalog
├── Search and Discovery
├── Product Detail
├── Availability
├── Cart
├── Pricing
├── Promotions
├── Address
├── Fulfillment
├── Checkout
├── Payment
├── Order
├── Tracking
├── Returns and Refunds
├── Notifications
└── Customer Support
```

### Virtudes críticas candidatas

- consistencia de pricing;
- preservación del carrito;
- claridad de disponibilidad;
- checkout recuperable;
- idempotencia de órdenes y pagos;
- feedback de fulfillment;
- accesibilidad;
- rendimiento bajo redes móviles.

## Arquetipo — Field Operations

Agrega evidencia útil para capacidades móviles que wallet o commerce podrían no revelar:

- offline-first;
- sincronización diferida;
- resolución de conflictos;
- captura de fotos y documentos;
- ubicación;
- firma;
- background work;
- operación bajo conectividad y batería limitadas.

## Conocimiento compartido con Web Administration

Ambos sistemas pueden reutilizar conocimiento sobre:

- identidad;
- autorización contextual;
- semantic tokens;
- navegación como significado;
- forms y validation;
- data presentation;
- loading, empty, error y confirmation states;
- internacionalización;
- accesibilidad;
- observabilidad;
- testing;
- API contracts.

Las Materializations y algunas virtudes cambian. Por ejemplo, responsive web no equivale a adaptive mobile; session cookie no equivale a secure token storage; sidebar no equivale a mobile navigation.

## Frontera shared / platform-specific

Un sistema móvil comercialmente útil debe explicar para cada capacidad:

- qué conocimiento es independiente de plataforma;
- qué lógica puede compartirse;
- qué experiencia requiere adaptación por plataforma;
- qué servicio debe ser nativo;
- qué evidencia existe en Android;
- qué evidencia existe en iOS;
- qué costo introduce la divergencia.

La selección de una tecnología compartida debe derivar de esta evaluación y no definir anticipadamente el dominio.

## Materializations candidatas a investigar

Sin aprobar todavía ninguna:

- proyecto Android nativo;
- proyecto iOS nativo;
- UI declarativa por plataforma;
- runtime y lógica compartidos;
- adaptadores para almacenamiento seguro;
- networking;
- persistence;
- navigation;
- notifications;
- observability;
- build y distribución.

Cada Materialization necesitará licencia, procedencia, release técnico, digest, compatibilidad y evidencia contextual.

## Respuesta esperada de MINA para una Idea móvil

Ante “quiero una wallet móvil”, MINA no debería devolver directamente un template. Debería:

1. reconocer el arquetipo candidato;
2. identificar contexto financiero, jurisdicción, actores y riesgos;
3. compilar el kernel móvil;
4. agregar ramas específicas de wallet;
5. resolver Required Virtues críticas;
6. seleccionar conocimiento y Materializations compatibles;
7. distinguir Android, iOS y compartido;
8. exponer cobertura y gaps;
9. proponer opciones con costo, velocidad, riesgo y calidad;
10. detener producción si faltan decisiones de autoridad o seguridad esenciales.

## Capacidad comercial progresiva

La fábrica podría declarar niveles observables:

```text
Mobile Foundation
  → instala, navega, tematiza, conecta, persiste y observa

Mobile Commerce Ready
  → agrega composición verificada de commerce

Mobile Wallet Ready
  → agrega composición financiera y de seguridad verificada
```

Estos niveles son vistas de cobertura, no versiones de un super Crystal.

## Evidencia necesaria antes de declararlo reusable

- al menos una producción Android real;
- al menos una producción iOS real si se declara soporte iOS;
- construcción reproducible desde un worker nuevo;
- validación de navegación, lifecycle y estados offline;
- evidencia de accesibilidad;
- evidencia de performance y consumo bajo el contexto declarado;
- compatibilidad y actualización de dependencias observables;
- separación demostrada entre conocimiento compartido y adaptación nativa;
- evidencia del arquetipo específico que se ofrece.

## Preguntas abiertas

- ¿Qué constituye el kernel mínimo sin inflarlo con decisiones de un arquetipo?
- ¿Qué capacidades pueden compartir lógica y cuáles deben conservar comportamiento nativo?
- ¿Cómo modelar compatibilidad por dispositivo y versión de plataforma sin versionar Crystals?
- ¿Cómo representar permisos y hardware como restricciones contextuales?
- ¿Qué conocimiento de seguridad debe permanecer clasificado?
- ¿Cómo evita MINA recomendar una composición rápida pero inadecuada para riesgo financiero?
- ¿Qué árbol inicial aporta más aprendizaje: commerce, wallet o field operations?

## Próximo trabajo recomendado

1. Contrastar este árbol con dos aplicaciones móviles reales existentes.
2. Seleccionar un arquetipo inicial de menor riesgo para construir el kernel.
3. Investigar separadamente opciones técnicas para Android, iOS y código compartido.
4. Crear una matriz de cobertura sin inventar Crystals faltantes.
5. Elegir un corte vertical pequeño que pruebe navegación, theme, API, persistence y offline state.
6. Incorporar evidencia antes de declarar capacidad comercial.

## Conclusión provisional

Un “Materialize móvil” propio no debería ser un template enorme. Debería ser un Solution System capaz de compilar starters y arquetipos móviles desde conocimiento relacionado, escoger Materializations según contexto y explicar claramente qué parte está cubierta, qué parte requiere adaptación nativa y qué gaps permanecen.

