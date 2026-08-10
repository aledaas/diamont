# Protocolo de investigación

Este documento se preserva como material de investigación y no como Crystal.

## Unidad de observación

La unidad de observación es un episodio real de producción: desde la aparición de una intención hasta que sus efectos son observados y generan —o no— aprendizaje reutilizable.

No se seleccionan episodios sólo porque encajen con la secuencia hipotética. Los abandonos, retrocesos, malentendidos y resultados fallidos son evidencia de igual valor.

## Registro mínimo de un episodio

Cada caso debe conservar:

| Campo | Pregunta que responde |
|---|---|
| Contexto | ¿Dónde y bajo qué restricciones ocurrió? |
| Participantes | ¿Qué personas, agentes y sistemas intervinieron? |
| Intención original | ¿Qué cambio o resultado se buscaba y quién lo expresó? |
| Evidencia fuente | ¿Qué documentos, datos, código u observaciones se consultaron? |
| Razonamiento | ¿Qué alternativas, desacuerdos y supuestos fueron relevantes? |
| Comprensión candidata | ¿Qué afirmaciones parecieron compartidas y cómo se comprobó? |
| Cristalizaciones candidatas | ¿Qué conocimiento durable emergió? |
| Transformaciones | ¿Cómo se convirtió ese conocimiento en instrucciones o artefactos? |
| Producción | ¿Qué acción o salida ocurrió? |
| Observación | ¿Qué sucedió realmente y con qué evidencia? |
| Aprendizaje | ¿Qué conocimiento fue confirmado, corregido, reemplazado o descartado? |
| Incertidumbres | ¿Qué continúa sin resolverse? |

## Clasificación de afirmaciones

Todo documento de investigación debe distinguir:

- **Observación:** registro comprobable de algo ocurrido.
- **Interpretación:** lectura posible de una o más observaciones.
- **Hipótesis:** explicación provisional que puede ser refutada.
- **Decisión:** elección explícita, con autor, fecha y fundamento.
- **Definición vigente:** concepto aceptado temporalmente, fechado y trazable. Su revisión editorial no debe confundirse con versiones de un Crystal.
- **Pregunta abierta:** vacío reconocido que impide cerrar una definición.

Una hipótesis no se transforma en principio por repetición textual. Necesita evidencia contrastable.

## Criterio de repetibilidad

Un comportamiento es candidato a formar parte de DIAMONT cuando:

1. aparece en al menos dos episodios independientes;
2. puede describirse sin depender del nombre de una herramienta o agente;
3. tiene entradas, transformación y resultado observables;
4. admite al menos un contraejemplo o condición de falla;
5. mejora la capacidad de comprender, reproducir o aprender del trabajo.

El número de casos no sustituye el juicio. Dos casos habilitan una hipótesis comparativa, no una verdad universal.

## Experimentos iniciales

1. Reconstruir retrospectivamente tres ejecuciones de Portfolio y localizar qué conocimiento existía antes, durante y después de producir.
2. Entregar la misma cristalización candidata a dos agentes diferentes y comparar interpretaciones, preguntas, acciones y resultados.
3. Recompilar una cristalización después de cambiar una política sin alterar su contenido fuente; observar qué debe versionarse.
4. Registrar una producción fallida y comprobar si la observación puede corregir una afirmación concreta en vez de quedar sólo como reporte.
5. Identificar un caso donde una `Task` se complete sin producir conocimiento reutilizable y otro donde emerja conocimiento sin una `Task` asociada.

## Regla para cambios en Portfolio

La investigación puede recomendar cambios, pero no los ejecuta. Toda propuesta deberá especificar evidencia, responsabilidad actual reemplazada, compatibilidad, migración, reversión y criterio de éxito antes de convertirse en trabajo productivo.
