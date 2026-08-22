# MINA Analyze — Experimental Interoperability Profile

## Estado

**Perfil técnico candidato para el primer experimento.**

Este documento concreta el [MINA Universal Knowledge Protocol](mina-universal-knowledge-protocol.md) lo suficiente para que dos implementaciones independientes puedan intercambiar una solicitud y una resolución verificable.

No autoriza todavía implementación productiva, persistencia del Patrimonio, exposición pública, migración ni acceso a información sensible.

## Alcance

El perfil implementa únicamente:

```text
project bootstrap
      ↓
capability discovery
      ↓
KnowledgeRequest (analyze, read-only)
      ↓
MinaResolution
      ↓
Compilation Receipt verification
```

No implementa ejecución de Suggested Actions, escritura canónica, búsqueda externa, aprendizaje, recristalización ni administración de proyectos.

## Decisiones técnicas candidatas

| Dimensión | Decisión para el experimento |
|---|---|
| Transporte | HTTPS con recursos JSON; loopback HTTP sólo en desarrollo local aislado. |
| Codificación | UTF-8 e I-JSON. |
| Validación | JSON Schema Draft 2020-12. |
| Identidades de interacción | UUIDv7 conforme a RFC 9562. |
| Identidades de conocimiento | UUID permanente declarado por el Patrimonio; no se regenera. |
| Timestamps | RFC 3339 en UTC. |
| Canonicalización | JSON Canonicalization Scheme (JCS), RFC 8785. |
| Integridad | SHA-256 de la representación JCS del `payload`. |
| Firma | Fuera del primer proceso local; el contrato reserva identidad de issuer y mecanismo de firma. |
| Lifecycle | Asíncrono, consultable e idempotente. |
| Compatibilidad | Revisión fechada del contrato técnico; no Semantic Versioning ni versión de conocimiento. |

Las referencias normativas externas son [RFC 8785](https://www.rfc-editor.org/rfc/rfc8785.html), [RFC 9562](https://www.rfc-editor.org/rfc/rfc9562.html) y [JSON Schema 2020-12](https://json-schema.org/draft/2020-12).

## Revisión del contrato

El primer identificador candidato es:

```text
mina.analyze/2026-08-21
```

Representa una revisión técnica del contrato de intercambio. No identifica una generación de MINA y no crea versiones de Crystals, Faces, Crystal Sets o Patrimonio.

Una implementación debe rechazar explícitamente una revisión que no comprenda. No puede intentar interpretarla silenciosamente.

## Bootstrap del proyecto

Un proyecto adoptante incorpora en su raíz un archivo candidato `mina.yaml`. Su función es descubrir MINA y declarar política local; no contiene conocimiento ni credenciales.

Ejemplo conceptual:

```yaml
diamont:
  adopted: true
  methodology: DIAMONT

project:
  id: development-portfolio

mina:
  endpoint: https://mina.example.internal
  required_capability: analyze
  protocol_revision: mina.analyze/2026-08-21

trust:
  patrimony_authority: urn:diamont:patrimony
  accepted_integrity:
    - sha256

policy:
  external_search: prohibited
  canonical_writes: prohibited
  evidence_return: approval_required
  on_unavailable: fail_explicitly
```

Reglas:

- el endpoint puede inyectarse por ambiente, pero el resultado resuelto debe ser auditable;
- secretos y tokens nunca se guardan en `mina.yaml`;
- un adaptador de agente puede derivar instrucciones desde este bootstrap, pero no cambiar su semántica;
- la ausencia del bootstrap significa que el proyecto no declara adopción operacional mediante este perfil;
- descubrir MINA no concede autoridad de ejecución ni acceso irrestricto al Patrimonio.

## Capability Document

Antes de solicitar conocimiento, el consumidor obtiene un documento de capacidades desde el endpoint configurado. Para el experimento se propone:

```http
GET /capabilities
Accept: application/json
```

Contenido conceptual mínimo:

```json
{
  "service": "mina",
  "service_instance_id": "019f...",
  "supported_protocol_revisions": ["mina.analyze/2026-08-21"],
  "capabilities": ["analyze"],
  "patrimony_authority": "urn:diamont:patrimony",
  "integrity_algorithms": ["sha256"],
  "external_search": false,
  "canonical_writes": false,
  "authentication": ["local-development"]
}
```

El consumidor debe comprobar revisión, capability, autoridad del Patrimonio, integridad y políticas antes de enviar contexto.

## Envelope común

Solicitudes y resoluciones utilizan una envoltura común:

```json
{
  "protocol_revision": "mina.analyze/2026-08-21",
  "message_id": "019f...",
  "message_type": "knowledge_request",
  "created_at": "2026-08-21T18:00:00Z",
  "issuer": {
    "type": "project",
    "id": "development-portfolio"
  },
  "payload": {},
  "integrity": {
    "canonicalization": "jcs-rfc8785",
    "algorithm": "sha256",
    "payload_digest": "sha256:..."
  }
}
```

El digest se calcula exclusivamente sobre `payload` canonicalizado mediante JCS. La envoltura preserva su propio `message_id`, issuer y timestamp; la autenticidad criptográfica de la envoltura completa queda reservada para el perfil posterior con firmas.

## KnowledgeRequest Analyze

### Creación

```http
POST /knowledge-requests
Content-Type: application/json
Idempotency-Key: <request UUID>
```

El `Idempotency-Key` debe coincidir con `payload.request_id`. Repetir exactamente la misma solicitud devuelve la misma identidad y estado. Reutilizar la clave con otro digest produce conflicto explícito.

### Payload mínimo

```json
{
  "request_id": "019f...",
  "capability": "analyze",
  "idea": {
    "statement": "Necesito administrar pacientes",
    "origin_reference": "portfolio:idea:..."
  },
  "shared_understanding": {
    "status": "sufficient_for_analysis",
    "statements": [],
    "uncertainties": []
  },
  "project_context": {
    "project_id": "development-portfolio",
    "objective": "...",
    "scope": [],
    "out_of_scope": [],
    "constraints": [],
    "authorized_references": []
  },
  "execution_intent": {
    "mode": "analyze",
    "purpose": "Descubrir conocimiento reutilizable antes de diseñar trabajo",
    "target_reference": null,
    "expected_outcome": "explainable_knowledge_resolution"
  },
  "actor_capability": {
    "role": "software_development_worker",
    "can_interpret": ["structured_json", "markdown"],
    "can_execute": false
  },
  "authority_context": {
    "allowed": ["read_knowledge", "receive_proposal"],
    "prohibited": ["execute", "external_search", "write_patrimony", "crystallize"]
  },
  "knowledge_policy": {
    "maximum_classification": "project_shared",
    "external_search": false,
    "include_materializations": "references_only"
  }
}
```

### Validación previa

MINA rechaza antes de analizar cuando:

- la revisión no es compatible;
- el envelope o digest son inválidos;
- falta Idea, Project Context o Execution Intent;
- `capability` no es `analyze`;
- el actor solicita ejecución o escritura;
- el contexto excede la política declarada;
- el Patrimonio no puede verificarse;
- la misma clave idempotente posee otro contenido.

Una comprensión marcada como insuficiente puede producir `NEEDS_SHARED_REASONING` en lugar de una resolución cognitiva normal.

## Lifecycle asíncrono

La creación puede responder:

- `202 Accepted`: solicitud aceptada y pendiente;
- `200 OK`: solicitud idempotente ya conocida;
- `400 Bad Request`: forma inválida;
- `401/403`: identidad o autoridad insuficiente;
- `409 Conflict`: conflicto de idempotencia o estado;
- `422 Unprocessable Content`: contrato válido pero intención/contexto insuficientes;
- `503 Service Unavailable`: MINA o el Patrimonio no están disponibles.

Consulta candidata:

```http
GET /knowledge-requests/{request_id}
```

Estados técnicos mínimos:

```text
ACCEPTED → ANALYZING → RESOLVED
              ├──────→ NEEDS_SHARED_REASONING
              ├──────→ FAILED
              └──────→ CANCELLED
```

Un retry crea un intento auditable bajo la misma solicitud cuando el payload no cambia. Cambiar Idea, contexto o intención exige una nueva identidad.

## MinaResolution Analyze

Una solicitud `RESOLVED` devuelve un envelope con `message_type: mina_resolution` y payload mínimo:

```json
{
  "resolution_id": "019f...",
  "request_id": "019f...",
  "request_payload_digest": "sha256:...",
  "outcome": "SUFFICIENT",
  "intent_alignment": {
    "idea_preserved": true,
    "execution_intent": "analyze",
    "explanation": "..."
  },
  "required_virtues": [],
  "crystal_set": {
    "crystals": [],
    "faces": [],
    "relations": []
  },
  "selection_rationale": [],
  "coverage": [],
  "contradictions": [],
  "knowledge_gaps": [],
  "context_limits": [],
  "epistemological_assertions": [],
  "suggested_composition": [],
  "suggested_actions": [],
  "approval_requirements": [],
  "sources": [],
  "uncertainties": [],
  "compilation_receipt": {}
}
```

Las colecciones obligatorias pueden estar vacías, pero deben explicar por qué. Toda referencia a Crystal usa UUID permanente. Toda Face conserva identidad o referencia canónica estable dentro de su Crystal; nunca una versión.

`outcome` utiliza únicamente:

- `SUFFICIENT`;
- `PARTIALLY_SUFFICIENT`;
- `INSUFFICIENT`;
- `CONTRADICTORY`;
- `UNRESOLVABLE`.

## Compilation Receipt experimental

El recibo queda embebido en la resolución:

```json
{
  "compilation_id": "019f...",
  "patrimony_authority": "urn:diamont:patrimony",
  "patrimony_materialization": {
    "kind": "operational_store_snapshot",
    "identity": "..."
  },
  "request_id": "019f...",
  "resolution_id": "019f...",
  "crystal_set_digest": "sha256:...",
  "representation": {
    "media_type": "application/json",
    "digest": "sha256:..."
  },
  "generated_at": "2026-08-21T18:00:01Z",
  "generator": {
    "capability": "mina.analyze"
  }
}
```

El consumidor verifica:

1. correlación con su request;
2. digest del request original;
3. autoridad de Patrimonio esperada;
4. digest del Crystal Set;
5. digest de la representación;
6. identidades y estados epistemológicos;
7. restricciones y omisiones declaradas.

El snapshot operacional no se expone como autoridad conceptual. Identifica la materialización consultada para reproducibilidad.

## Errores contractuales

Los errores usan un envelope verificable con:

```json
{
  "error_code": "MINA_CONTEXT_INSUFFICIENT",
  "message": "...",
  "request_id": "019f...",
  "retryable": false,
  "required_information": [],
  "diagnostics": [],
  "occurred_at": "2026-08-21T18:00:01Z"
}
```

Códigos iniciales:

- `MINA_PROTOCOL_UNSUPPORTED`;
- `MINA_INTEGRITY_INVALID`;
- `MINA_IDEMPOTENCY_CONFLICT`;
- `MINA_CONTEXT_INSUFFICIENT`;
- `MINA_SHARED_REASONING_REQUIRED`;
- `MINA_AUTHORITY_DENIED`;
- `MINA_PATRIMONY_UNAVAILABLE`;
- `MINA_PATRIMONY_UNVERIFIABLE`;
- `MINA_RESOLUTION_FAILED`.

Errores internos no deben revelar secretos, estructura física del Patrimonio ni contenido fuera de la política del actor.

## Proyección Portfolio

Portfolio puede transformar una `MinaResolution` válida en `MinaProposal` sin alterar la respuesta original:

```text
MinaResolution
      ↓ lossless reference + original digest
Portfolio MinaProposal projection
      ↓
human presentation and approval governance
```

La proyección conserva `resolution_id`, `request_id`, digest, Sources, Uncertainties, Crystal Set y Compilation Receipt. Portfolio puede agregar presentación, lifecycle y approvals propios, pero no reescribir silenciosamente la resolución.

## Evidencia fuera del primer endpoint

`EvidenceSubmission` pertenece al protocolo universal, pero no al primer endpoint implementable de Analyze. El experimento debe conservar localmente la correlación necesaria para incorporarlo después sin rediseñar request, resolution o receipt.

## Seguridad del primer experimento

- ejecución sólo en red local o ambiente de desarrollo autorizado;
- sin exposición pública;
- autenticación local explícita, aunque inicialmente sea una credencial de desarrollo;
- logs sin Idea completa ni secretos por defecto;
- límites de tamaño y timeout definidos por la implementación;
- allowlist de proyectos;
- sólo lectura del Patrimonio;
- sin URLs arbitrarias suministradas por el request;
- sin búsqueda externa;
- sin materializaciones ejecutables en la respuesta.

## Conformidad experimental

Una implementación cumple este perfil cuando demuestra:

- bootstrap y capability negotiation;
- validación mediante JSON Schema;
- UUIDv7 para nuevas interacciones;
- idempotencia por identidad y digest;
- canonicalización JCS y SHA-256 reproducible;
- lifecycle asíncrono y errores explícitos;
- resolución con todas las secciones obligatorias;
- referencias permanentes sin versionado de Crystal o Face;
- Compilation Receipt verificable;
- proyección Portfolio sin pérdida ni reescritura;
- ausencia de ejecución, escritura, búsqueda externa y cristalización;
- funcionamiento equivalente con dos consumidores o adaptadores distintos.

## Siguiente evidencia requerida

Antes de declarar estable cualquier parte del perfil deben existir:

1. [schemas ejecutables de request, resolution, capability y error](mina-analyze/README.md) — disponibles;
2. fixtures válidos e inválidos validados por una implementación independiente de Draft 2020-12 — verificados el 2026-08-21;
3. un Crystal real con Faces, relaciones, evidencia y materialización conocida;
4. una implementación MINA mínima que lo seleccione por contexto;
5. un consumidor distinto de la implementación MINA;
6. verificación independiente del receipt;
7. registro de gaps y cambios aprendidos durante el episodio.
