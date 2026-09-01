# Evidencia de origen

## Materializaciones observadas

### `alejandrodaas.site`

Carpeta local observada el 31 de agosto de 2026. La materialización contiene HTML, CSS, JavaScript, PHP y assets estáticos.

Capacidades observadas:

- navegación responsive y recorrido de una sola página;
- presentación de identidad y ubicación;
- apertura, relato, experiencia, servicios, habilidades, portfolio, testimonios y contacto;
- selector español/inglés con preferencia local;
- animaciones de entrada, carrusel y lightbox;
- enlaces profesionales y sociales;
- formulario de contacto con adjuntos.

Problemas que justifican separar conocimiento y materialización:

- contenido e identidad duplicados en HTML y JavaScript;
- orientación anterior centrada en portfolio y servicios, distinta del trabajo actual publicado;
- mezcla de español e inglés y errores de redacción;
- porcentajes de habilidades sin procedencia;
- enlaces sociales de demostración que regresan al propio sitio;
- dependencia de numerosas bibliotecas para una superficie pequeña;
- loader y animaciones sin una política visible de reducción de movimiento;
- formulario PHP que incorpora valores del visitante en cabeceras, acepta adjuntos sin límites explícitos, no muestra rate limiting ni mitigación de automatización y responde éxito sin verificar el resultado de `mail()`.

La carpeta no se incorpora al Crystal: permanece como materialización observada y conserva su propiedad y contexto originales.

### `aledaas/aledaas`

Repositorio público de perfil observado el 31 de agosto de 2026.

Orientación actual observada:

- DIAMONT como especificación de ingeniería;
- modelo desde Requirement hasta cristalización continua;
- lenguaje oficial de Software Factory, Requirement, MINA, Crystal, Face, Mission Control, Runner, Orfebre, Worker y Crystallization;
- mapa de DIAMONT, Development Portfolio y Portfolio Runner;
- stack visible de especificación, primera implementación y ejecución local;
- Web Administration y Native Mobile Application como líneas de investigación.

Esta orientación informa la materialización actual de Aledaas, pero sus nombres, repositorios y textos no forman parte del conocimiento reutilizable.

## Límite de la evidencia

La observación demuestra una composición real y sus tensiones, no demuestra todavía que todos los criterios de aceptación puedan automatizarse ni que una única estructura visual sirva para cada identidad pública.
