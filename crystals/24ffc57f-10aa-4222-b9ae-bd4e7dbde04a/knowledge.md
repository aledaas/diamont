# DIAMONT — Especificación de reestructuración del repositorio

## Naturaleza

Este Crystal constituye una especificación de implementación física, no una conversación ni un Discovery. Define una acción concreta para convertir el repositorio DIAMONT en el primer proyecto persistido bajo su propio protocolo de conocimiento.

La estructura es una primera implementación física compatible con el protocolo. No implementa el Crystal Graph ni congela la especificación definitiva de sus formatos.

## Objetivo

Reestructurar el repositorio para que su organización física soporte el protocolo de producción de conocimiento de DIAMONT.

El objetivo no es meramente reorganizar documentación. El repositorio debe comportarse como el primer proyecto construido bajo la metodología, utilizando su modelo de conocimiento sin confundir persistencia física con topología conceptual.

## Principios de implementación

### El conocimiento no pertenece a las carpetas

Las carpetas existen únicamente como mecanismo de persistencia compatible con Git. La ubicación física de un Crystal no forma parte de su identidad. Su identidad está dada exclusivamente por su UUID.

### El Crystal es la unidad fundamental del conocimiento

Todo conocimiento cristalizado debe representarse mediante un Crystal. Cada Crystal contempla:

- identidad permanente;
- autoría;
- origen;
- genealogía;
- relaciones o dependencias de conocimiento;
- conocimiento cristalizado;
- evidencia;
- observaciones.

### Git no representa el modelo conceptual

Git continúa siendo un mecanismo de persistencia, colaboración, auditoría y transporte. La topología conceptual pertenece a las relaciones entre Cristales.

### DIAMONT no recibe una estructura excepcional

El proyecto DIAMONT adopta la misma estructura física base propuesta para Portfolio y cualquier otro proyecto construido bajo la metodología. Su carácter fundacional no justifica una representación protocolar especial.

## Estructura física inicial

```text
diamont/
├── diamont.yaml
├── docs/
│   ├── CONSTITUTION.md
│   ├── MANIFESTO.md
│   └── FOUNDATION.md
├── crystals/
│   └── <uuid>/
│       ├── crystal.yaml
│       ├── knowledge.md
│       ├── evidence/
│       └── observations/
├── discoveries/
├── research/
│   ├── questions/
│   ├── protocols/
│   └── studies/
├── compilations/
└── README.md
```

`docs/` preserva temporalmente los documentos constitucionales e identitarios fuera de `crystals/` mientras se investiga si constituyen Cristales de naturaleza especial. No contiene documentación operativa o de investigación después de esta migración.

## `diamont.yaml`

El manifiesto principal identifica el proyecto y enumera los Cristales que utiliza. Sus entradas representan dependencias de conocimiento, no dependencias técnicas.

La especificación definitiva del formato se desarrollará posteriormente. En esta etapa sólo se establece el archivo, su propósito y la referencia al primer Crystal.

## `crystals/`

Cada Crystal se persiste en una carpeta cuyo nombre es exclusivamente su UUID. No se utilizan nombres descriptivos como `architecture`, `workflow`, `glossary` o `manifesto`. La semántica pertenece al descriptor interno, no a la ruta.

### `crystal.yaml`

Descriptor de identidad protocolar. Su esquema provisional contempla:

- `id`;
- `name`;
- `kind`;
- `created_at`;
- `authors`;
- `origin`;
- `genealogy`;
- `dependencies`;
- `sharing`;
- `status`.

El descriptor no contiene el conocimiento cristalizado. Los nombres, cardinalidades y semántica de estos campos deberán investigarse antes de convertirse en estándar.

### `knowledge.md`

Contiene el conocimiento cristalizado. No repite metadatos de identidad pertenecientes al descriptor YAML.

### `evidence/`

Espacio reservado para evidencia objetiva que respalde el Crystal: resultados, validaciones, pruebas, documentos o referencias. Su estructura interna permanece deliberadamente indefinida.

### `observations/`

Espacio reservado para observaciones obtenidas durante la utilización del Crystal. Las observaciones pueden originar futuros Discoveries. Su estructura interna permanece deliberadamente indefinida.

## `discoveries/`

Los Discoveries permanecen separados de los Cristales. Representan conocimiento emergente y no se asume que todo Discovery se convierta automáticamente en Crystal.

## `research/`

El espacio de investigación se organiza inicialmente en `questions/`, `protocols/` y `studies/`. Esta jerarquía es un mecanismo físico de persistencia y navegación humana, no la topología del conocimiento.

## `compilations/`

Espacio reservado para futuras compilaciones de Crystal Sets destinadas a producir prompts, documentación, implementaciones u otros artefactos. Esta especificación no implementa mecanismos automáticos.

## Migración documental

Cada documento preexistente debe evaluarse individualmente como Crystal, Discovery, Research o documento constitucional/identitario. No se realizan conversiones automáticas ni se elimina información.

En esta primera migración:

- Constitución, Manifiesto y Carta Fundacional permanecen como documentos identitarios;
- los tres Discoveries existentes conservan su clasificación;
- protocolo, preguntas, glosario y estudios pasan al espacio de investigación;
- esta especificación se convierte en el primer Crystal de implementación.

## Fuera de alcance

Esta especificación no implementa:

- Crystal Graph;
- base de datos de grafos;
- blockchain;
- resolución distribuida;
- compartición entre organizaciones;
- Package Registry;
- Crystal Registry;
- compilación automática;
- esquema definitivo de `diamont.yaml` o `crystal.yaml`.

## Criterios de aceptación

La aplicación de este Crystal se considera completa cuando:

- existe `diamont.yaml` en la raíz;
- existe `crystals/`;
- existe un Crystal identificado exclusivamente por UUID;
- el Crystal contiene `crystal.yaml`, `knowledge.md`, `evidence/` y `observations/`;
- existen `discoveries/`, `research/` y `compilations/`;
- la documentación existente fue clasificada y migrada individualmente sin pérdida;
- los documentos fundacionales permanecen fuera de los Cristales;
- el README permite navegar la nueva estructura;
- no se implementó ningún mecanismo fuera de alcance.

## Resultado esperado

El repositorio DIAMONT se convierte en el primer caso de uso físico de su protocolo. Los futuros proyectos podrán adoptar la misma estructura y transportar Cristales mediante identidad y relaciones, mientras Git continúa actuando exclusivamente como mecanismo físico de persistencia y colaboración.
