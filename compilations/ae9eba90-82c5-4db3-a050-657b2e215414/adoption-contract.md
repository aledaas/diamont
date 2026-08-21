# Contrato de adopción — Portfolio + MINA

## Propósito

Esta Compilation entrega a Development Portfolio una materialización reproducible del conocimiento DIAMONT necesario para iniciar su adopción y preparar MINA, sin convertir Portfolio en fuente canónica del Patrimonio.

## Autoridad

- El repositorio DIAMONT conserva el conocimiento canónico.
- Esta Compilation conserva una selección inmutable y verificable de ese conocimiento.
- Portfolio conserva referencias, contexto, decisiones, approvals, usos y evidencia producida.
- MINA comprenderá y compondrá el Patrimonio; no será su propietaria.
- Runner podrá hospedar MINA Local; esa ubicación física no transfiere identidad ni autoridad.
- Worker ejecutará solamente acciones aprobadas.

## Reglas de consumo

1. Portfolio debe identificar esta Compilation mediante su UUID y hash de integridad.
2. Portfolio no debe editar, reinterpretar como propia ni importar como tablas autoritativas las fuentes compiladas.
3. Los Crystals se referencian exclusivamente mediante UUID; no poseen versiones.
4. Los hashes fijan la materialización utilizada, no una versión conceptual del Crystal.
5. Un Crystal candidato o Discovery incluido no adquiere estado de conocimiento activo.
6. Toda propuesta de ejecución requiere approval explícito.
7. Toda incorporación al Patrimonio requiere un approval de cristalización separado.
8. Evidencia y observaciones de Portfolio deben regresar como propuestas, nunca como verdad automática.

## Primer alcance operativo

La primera capacidad futura será `MINA Analyze`, local, read-only y Patrimony-first:

```text
Idea + Project Context + Compilation
                ↓
             MINA
                ↓
Required Virtues
Candidate Crystals
Relevant Faces
Coverage
Knowledge Gaps
Known Implementations
Suggested Composition
Suggested Actions
Approval Requirements
Sources
Uncertainties
```

Esta Compilation no implementa esa capacidad ni autoriza cambios en Runner.

## Fuera de alcance

- copiar el Patrimonio a la base de datos de Portfolio;
- crear entidades autoritativas `Crystal`, `Face` o `Genealogy` en Portfolio;
- implementar MINA, Runner o Runtime API;
- ejecutar acciones o instalar packages;
- mutar Crystals;
- cristalizar automáticamente resultados;
- resolver la revisión constitucional de `CR-DIAMONT-001`.
