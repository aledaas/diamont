# Contrato experimental — Custodia y resolución de Materializations

## Propósito

Esta Compilation permite a Development Portfolio implementar el primer corte vertical de resolución de una Materialization mediante MINA. No activa un nuevo Crystal ni declara portable la consola completa de Floulabs.

## Separación de responsabilidades

- DIAMONT define metodología y estados epistemológicos.
- El Patrimonio conserva conocimiento lógico y relaciones hacia Materializations.
- MINA registra, selecciona y resuelve Materializations según contexto, autoridad y compatibilidad.
- Una autoridad canónica de packages conserva los artefactos instalables.
- Portfolio aloja inicialmente la representación operacional de MINA y consume packages resueltos.
- El worker instala únicamente coordenadas entregadas por una Compilation verificable.

## Autorizaciones del experimento

1. Portfolio puede persistir identidades, relaciones, evidencia, compatibilidad, clasificación, licencia, coordenadas y digests de Materializations en tablas `mina_`.
2. MINA puede resolver un package canónico para un consumidor autorizado.
3. La frontera reusable de Floulabs puede extraerse a un package neutral cuando exista autorización interna verificable.
4. El package debe excluir marca, dominios Floulabs, datos, secretos, `mt-vendor` y assets sin autorización confirmada.
5. Portfolio puede instalar el package resuelto mediante el gestor normal de su ecosistema después de los approvals operativos aplicables.

## Prohibiciones

- Copiar la carpeta `/console` completa.
- Convertir el checkout de Floulabs en dependencia del consumidor.
- Guardar código del package como conocimiento canónico en PostgreSQL.
- Presentar un estudio, Materialization o package como Crystal activo.
- Crear versiones o generaciones de Crystals o Faces.
- Permitir que el worker elija manualmente un Crystal o una ruta fuente por conveniencia.
- Redistribuir `mt-vendor` o cualquier asset con derechos no confirmados.

## Condición de éxito

Un worker nuevo recibe una Knowledge Request y una Compilation generada desde MINA, instala una Materialization desde su autoridad canónica y produce una pantalla MINA dentro de Filament sin clonar DIAMONT ni Floulabs.

La producción devuelve evidencia; no cristaliza automáticamente el patrón ni convierte el package en conocimiento.

