# Reusable Public Web Presence

## Problema

Las webs de presentación suelen mezclar cuatro cosas distintas: el propósito comunicacional, el contenido de una identidad concreta, el diseño visual y la tecnología elegida. Esa mezcla vuelve costoso actualizar el relato, reutilizar la solución o cambiar de framework. También favorece datos duplicados, enlaces ficticios, afirmaciones difíciles de comprobar y formularios inseguros.

## Intención

Producir una presencia pública que permita a una audiencia comprender rápidamente:

1. quién o qué se presenta;
2. cuál es su propuesta y orientación actual;
3. qué experiencia o capacidades la respaldan;
4. qué evidencia puede explorar;
5. cómo puede continuar la relación.

El orden puede variar, pero esas preguntas deben permanecer respondidas por una composición suficiente.

## Identidad conceptual

Una **Public Web Presence** es un sistema de comunicación navegable, verificable, accesible y adaptable que proyecta una identidad y su trabajo hacia una audiencia pública.

No es una plantilla visual ni una colección obligatoria de secciones. Es conocimiento para componer un recorrido público a partir de contenido estructurado, evidencia y acciones legítimas.

## Principios

### La orientación actual gobierna el relato

La portada y la navegación deben expresar lo que la identidad es hoy. La historia, experiencia y tecnologías anteriores aportan procedencia, pero no deben desplazar el propósito vigente.

Para Aledaas, la orientación vigente observada es DIAMONT y su modelo de ingeniería; los proyectos y roles históricos actúan como evidencia de recorrido.

### El contenido es independiente de la presentación

Identidad, propuesta, experiencia, capacidades, proyectos, referencias, enlaces y contacto deben poder cambiar sin reescribir la estructura visual. Las traducciones deben compartir las mismas identidades de contenido y no duplicar componentes completos.

### La evidencia prevalece sobre la autoafirmación

Repositorios, documentos, productos, resultados y referencias verificables comunican capacidad mejor que porcentajes arbitrarios. Una métrica debe indicar fuente, alcance y fecha; de lo contrario debe presentarse como narración cualitativa o eliminarse.

### Cada acción debe ser real

No se muestran redes vacías, enlaces hacia la propia página simulando destinos externos, proyectos sin destino ni formularios que no puedan completar su promesa. Toda llamada a la acción debe tener un resultado comprobable.

### La implementación es reemplazable

HTML estático, un generador, un framework o un CMS pueden materializar el mismo Crystal. Bibliotecas de animación, carruseles, iconos y CSS no forman parte de su identidad.

## Modelo de contenido mínimo

```text
Web Presence
├── Identity
│   ├── name
│   ├── public designation
│   ├── location or operating context
│   └── portrait, mark or visual signature
├── Current Proposition
│   ├── concise statement
│   ├── supporting explanation
│   └── primary action
├── Proof
│   ├── selected work
│   ├── repositories or documents
│   ├── experience
│   ├── capabilities
│   └── references or outcomes
├── Continuation
│   ├── next destinations
│   ├── social or professional profiles
│   └── contact channel
└── Governance
    ├── locale variants
    ├── provenance and freshness
    ├── publication state
    └── privacy classification
```

Cada entidad reutilizable debe poseer una clave estable. El orden visual, los rótulos y el idioma son proyecciones, no identidad.

## Composición de experiencia

### Apertura

La primera vista comunica identidad, orientación actual y una acción primaria. Debe ser comprensible sin animación, sin esperar carga diferida y sin recorrer toda la página.

### Navegación

La navegación representa el recorrido real disponible. En una página única puede enlazar regiones; en un sitio compuesto puede enlazar rutas. Debe informar ubicación, funcionar con teclado y conservar destinos válidos sin JavaScript.

### Relato y trayectoria

El relato conecta origen, experiencia y dirección actual. Una cronología sólo incluye hitos relevantes y separa hechos verificables de interpretación personal.

### Capacidades

Las capacidades se expresan mediante problemas que pueden resolverse, prácticas aplicadas y evidencia asociada. Logos o nombres de tecnologías pueden complementar el relato, pero no sustituirlo.

### Trabajo seleccionado

Cada caso debe poder declarar:

- nombre y síntesis;
- responsabilidad o contribución;
- contexto y período cuando sean públicos;
- tecnologías cuando aporten comprensión;
- estado actual;
- evidencia o destino verificable;
- restricciones de confidencialidad.

El sitio no debe inferir que un repositorio, cliente o producto pertenece a la identidad cuando sólo hubo participación parcial.

### Confianza

Referencias, testimonios, empresas y resultados necesitan consentimiento y procedencia. La presentación debe distinguir relación laboral, colaboración, cliente, producto propio y contribución técnica.

### Continuación y contacto

El cierre ofrece pocas acciones claras: explorar la especificación o producto principal, revisar trabajo verificable y contactar. Un enlace `mailto:` puede ser suficiente. Un formulario sólo se incorpora si existe operación real y controles adecuados.

## Internacionalización

- El idioma se declara en el documento y cambia junto con el contenido visible.
- La preferencia puede persistirse localmente, pero debe existir un idioma predeterminado completo.
- Los textos, etiquetas accesibles, metadatos y mensajes de validación cambian de forma coherente.
- La ausencia de una traducción no debe producir contenido vacío ni claves visibles.
- Fechas, números, dirección del texto y nombres propios se modelan según su naturaleza, no mediante reemplazos literales indiscriminados.

## Movimiento e interacción

- El contenido esencial existe antes de aplicar animación.
- Se respeta `prefers-reduced-motion`.
- El movimiento orienta jerarquía o continuidad; no bloquea lectura ni navegación.
- Carruseles y lightboxes requieren controles accesibles y alternativa sin gesto.
- La navegación, el cambio de idioma y el contacto no dependen exclusivamente de bibliotecas de terceros.

## Calidad transversal

### Accesibilidad

- estructura semántica y un encabezado principal claro;
- navegación por teclado y foco visible;
- contraste suficiente;
- texto alternativo significativo;
- nombres accesibles para controles de icono;
- landmarks y orden de lectura coherentes;
- zoom y reflow sin pérdida de contenido.

### Responsive

El contenido conserva prioridad, legibilidad y acciones en pantallas pequeñas. El diseño no se limita a ocultar una navegación de escritorio: adapta jerarquía, densidad, medios y controles.

### Rendimiento

- presupuestar peso y cantidad de recursos;
- optimizar imágenes y fuentes;
- cargar progresivamente lo no esencial;
- evitar dependencias completas para una interacción menor;
- no bloquear la primera lectura con loaders artificiales.

### Descubrimiento y enlaces compartidos

Cada página pública define título, descripción, URL canónica y representación social apropiados. El contenido principal es indexable y los destinos externos explican qué se abrirá.

### Privacidad y seguridad del contacto

Un formulario público debe incluir, según riesgo:

- validación de servidor y normalización de entradas;
- protección contra inyección de encabezados;
- límites de tamaño y tipos permitidos para adjuntos;
- rate limiting y mitigación de abuso automatizado;
- protección CSRF cuando aplique;
- encoding seguro de respuestas;
- minimización y retención explícita de datos;
- mensajes de éxito basados en entrega comprobada, no sólo en intentar enviar.

Los valores del visitante nunca se insertan directamente como cabeceras de correo. Si no pueden garantizarse estos controles, se utiliza un canal externo confiable o un enlace de correo.

### Mantenibilidad

- una sola fuente para datos repetidos como correo, perfiles y copyright;
- contenido y configuración separados de componentes y estilos;
- dependencias justificadas y actualizables;
- enlaces y assets comprobables automáticamente;
- ausencia de contenido de demostración en producción.

## Orientación para Aledaas

Una materialización actual debe priorizar este recorrido:

```text
DIAMONT engineering specification
    ↓
Engineering model and official language
    ↓
Components and production stack
    ↓
Repository map and verifiable implementations
    ↓
Selected prior experience
    ↓
Contact / continuation
```

La presencia no debe presentarse principalmente como una lista genérica de servicios si el trabajo actual está orientado a formalizar DIAMONT. La experiencia previa conserva valor como evidencia que explica el origen de esa dirección.

## Criterios de aceptación

Una materialización satisface este Crystal cuando:

- la orientación vigente es identificable en la primera vista;
- cada sección responde una pregunta comunicacional necesaria;
- el contenido puede actualizarse sin modificar la arquitectura visual;
- todos los enlaces y acciones expuestos son reales;
- los casos distinguen autoría, participación y procedencia;
- el recorrido funciona con teclado, móvil, reducción de movimiento y sin animaciones;
- todas las variantes de idioma están completas y sincronizadas;
- el contacto cumple los controles de seguridad o delega en un canal adecuado;
- metadatos, rendimiento y accesibilidad poseen una validación reproducible;
- no se requiere una tecnología específica para reconstruir la solución.

## Fuera de alcance

- identidad visual específica de una marca;
- textos biográficos o comerciales concretos;
- administración autenticada o backoffice;
- CMS obligatorio;
- ecommerce, pagos o cuentas de usuario;
- analítica o tracking por defecto;
- proveedor de hosting;
- framework, biblioteca de UI o servicio de formularios específico.

## Preguntas abiertas

1. ¿Qué evidencia mínima permite declarar una materialización conforme al Crystal?
2. ¿Qué modelo transportable debe expresar contenido localizado y procedencia?
3. ¿Cuándo una publicación editorial deja de ser una Face coherente y requiere otro Crystal?
4. ¿Cómo se registran observaciones de audiencia sin incorporar tracking invasivo?
5. ¿Qué políticas de actualización permiten detectar que la orientación pública quedó desfasada?
