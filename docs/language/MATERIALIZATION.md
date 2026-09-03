# Materialization

## Purpose

Make crystallized knowledge usable in a concrete technical context.

## Definition

A Materialization is an implementation of knowledge under a specific technical context; when a request says to install a Crystal, MINA must resolve and install an authorized compatible Materialization that satisfies the requested outcome, while the Crystal itself remains knowledge and is never installed.

## Responsibilities

- Implement referenced Crystals and Faces under an explicit context.
- Declare capabilities, compatibility, provenance, authority, license, and integrity.
- Preserve the requested outcome and expose uncovered capabilities as gaps.
- Be distributed through an immutable package representation when installation is required.

## Relationships

- Implements knowledge from a [Crystal](CRYSTAL.md) and its [Faces](FACE.md).
- Is discovered, evaluated, and resolved by [MINA](MINA.md).
- Is consumed by a [Worker](WORKER.md) through a derived representation.
- Does not crystallize knowledge by itself; that remains governed by [Crystallization](CRYSTALLIZATION.md).

## Used By

- MINA.
- Portfolio.
- Runner.
- DIAMONT consumer projects.

## Status

Current Specification
