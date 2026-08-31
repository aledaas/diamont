# Runner

## Purpose

Connect approved production work with the local execution environment.

## Definition

The Runner is the local execution component that hosts local tools, connects Portfolio with the machine, and dispatches approved actions without reasoning about the Patrimony or deciding which knowledge is correct.

## Responsibilities

- Host local execution tools.
- Connect Portfolio with the local machine.
- Dispatch only approved actions.
- Return execution results to Portfolio.

## Relationships

- Receives approved actions from [Mission Control](MISSION_CONTROL.md).
- Dispatches work to [Workers](WORKER.md).
- May host local [MINA](MINA.md) tooling without owning MINA.

## Used By

- Portfolio.
- Workers.
- MINA Local experiments.

## Status

Current Specification

