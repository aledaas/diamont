BEGIN;

CREATE TABLE patrimony_objects (
    object_id uuid PRIMARY KEY,
    canonical_key text NOT NULL UNIQUE,
    object_kind text NOT NULL CHECK (object_kind IN ('crystal', 'face', 'discovery', 'study', 'materialization')),
    name text NOT NULL CHECK (length(trim(name)) > 0),
    classification text NOT NULL CHECK (classification IN ('public', 'project_shared', 'restricted')),
    created_at timestamptz NOT NULL,
    UNIQUE (object_id, object_kind),
    CHECK (object_kind <> 'face' OR canonical_key LIKE 'urn:diamont:face:%')
);

CREATE TABLE research_artifacts (
    object_id uuid PRIMARY KEY REFERENCES patrimony_objects(object_id),
    artifact_type text NOT NULL CHECK (artifact_type IN ('discovery', 'study', 'learning_proposal')),
    research_status text NOT NULL CHECK (research_status IN ('hypothesis', 'observed', 'candidate_for_crystallization')),
    source_path text NOT NULL,
    source_digest text NOT NULL CHECK (source_digest ~ '^sha256:[0-9a-f]{64}$')
);

CREATE TABLE materializations (
    object_id uuid PRIMARY KEY REFERENCES patrimony_objects(object_id),
    source_project text NOT NULL,
    source_commit text NOT NULL CHECK (source_commit ~ '^[0-9a-f]{40}$'),
    portability_status text NOT NULL CHECK (portability_status IN ('observed', 'candidate', 'verified')),
    license_status text NOT NULL CHECK (license_status IN ('unknown', 'partial', 'confirmed')),
    source_reference text NOT NULL
);

CREATE TABLE materialization_assets (
    asset_id uuid PRIMARY KEY,
    materialization_id uuid NOT NULL REFERENCES materializations(object_id),
    source_path text NOT NULL,
    asset_role text NOT NULL,
    digest text NOT NULL CHECK (digest ~ '^sha256:[0-9a-f]{64}$'),
    classification text NOT NULL CHECK (classification IN ('public', 'project_shared', 'restricted')),
    license_status text NOT NULL CHECK (license_status IN ('unknown', 'partial', 'confirmed')),
    distributable boolean NOT NULL DEFAULT false,
    UNIQUE (materialization_id, source_path),
    CHECK (NOT distributable OR license_status = 'confirmed')
);

CREATE TABLE object_virtues (
    virtue_assertion_id uuid PRIMARY KEY,
    object_id uuid NOT NULL REFERENCES patrimony_objects(object_id),
    virtue_key text NOT NULL,
    description text NOT NULL,
    assertion_status text NOT NULL CHECK (assertion_status IN ('observed', 'candidate', 'validated')),
    source_reference text NOT NULL,
    UNIQUE (object_id, virtue_key, source_reference)
);

CREATE TABLE patrimony_relations (
    relation_id uuid PRIMARY KEY,
    from_object_id uuid NOT NULL REFERENCES patrimony_objects(object_id),
    to_object_id uuid NOT NULL REFERENCES patrimony_objects(object_id),
    relation_type text NOT NULL,
    rationale text NOT NULL,
    source_reference text NOT NULL,
    created_at timestamptz NOT NULL,
    CHECK (from_object_id <> to_object_id)
);

CREATE TABLE evidence_records (
    evidence_id uuid PRIMARY KEY,
    subject_object_id uuid NOT NULL REFERENCES patrimony_objects(object_id),
    evidence_kind text NOT NULL CHECK (evidence_kind IN ('source_commit', 'source_asset', 'test_report', 'architecture_decision', 'observation')),
    source_reference text NOT NULL,
    digest text CHECK (digest IS NULL OR digest ~ '^sha256:[0-9a-f]{64}$'),
    statement text NOT NULL,
    classification text NOT NULL CHECK (classification IN ('public', 'project_shared', 'restricted')),
    observed_at timestamptz NOT NULL
);

CREATE TABLE epistemological_assertions (
    assertion_id uuid PRIMARY KEY,
    subject_object_id uuid NOT NULL,
    subject_object_kind text NOT NULL,
    epistemological_state text NOT NULL CHECK (epistemological_state IN ('active_crystal', 'candidate_crystal', 'discovery_observed', 'study_observed', 'known_materialization_candidate', 'known_materialization_verified')),
    context_key text NOT NULL,
    statement text NOT NULL,
    evidence_id uuid REFERENCES evidence_records(evidence_id),
    asserted_by text NOT NULL,
    asserted_at timestamptz NOT NULL,
    supersedes_assertion_id uuid REFERENCES epistemological_assertions(assertion_id),
    UNIQUE (subject_object_id, context_key, asserted_at),
    FOREIGN KEY (subject_object_id, subject_object_kind) REFERENCES patrimony_objects(object_id, object_kind),
    CHECK (
        (epistemological_state IN ('active_crystal', 'candidate_crystal') AND subject_object_kind = 'crystal')
        OR (epistemological_state = 'discovery_observed' AND subject_object_kind = 'discovery')
        OR (epistemological_state = 'study_observed' AND subject_object_kind = 'study')
        OR (epistemological_state IN ('known_materialization_candidate', 'known_materialization_verified') AND subject_object_kind = 'materialization')
    )
);

CREATE TABLE knowledge_requests (
    request_id uuid PRIMARY KEY,
    protocol_revision text NOT NULL,
    issuer_id text NOT NULL,
    execution_intent text NOT NULL,
    payload_digest text NOT NULL CHECK (payload_digest ~ '^sha256:[0-9a-f]{64}$'),
    artifact_reference text NOT NULL,
    maximum_classification text NOT NULL CHECK (maximum_classification IN ('public', 'project_shared', 'restricted')),
    received_at timestamptz NOT NULL,
    UNIQUE (issuer_id, payload_digest)
);

CREATE TABLE request_virtues (
    request_id uuid NOT NULL REFERENCES knowledge_requests(request_id),
    virtue_key text NOT NULL,
    description text NOT NULL,
    required boolean NOT NULL DEFAULT true,
    derived_from text NOT NULL,
    PRIMARY KEY (request_id, virtue_key)
);

CREATE TABLE resolution_runs (
    resolution_id uuid PRIMARY KEY,
    request_id uuid NOT NULL REFERENCES knowledge_requests(request_id),
    outcome text NOT NULL CHECK (outcome IN ('SUFFICIENT', 'PARTIALLY_SUFFICIENT', 'INSUFFICIENT', 'CONTRADICTORY', 'UNRESOLVABLE')),
    status text NOT NULL CHECK (status IN ('draft', 'issued', 'failed')),
    explanation text NOT NULL,
    created_at timestamptz NOT NULL,
    issued_at timestamptz,
    CHECK ((status = 'issued') = (issued_at IS NOT NULL))
);

CREATE TABLE resolution_selections (
    selection_id uuid PRIMARY KEY,
    resolution_id uuid NOT NULL REFERENCES resolution_runs(resolution_id),
    object_id uuid NOT NULL REFERENCES patrimony_objects(object_id),
    decision text NOT NULL CHECK (decision IN ('included', 'excluded', 'context_only')),
    role text NOT NULL,
    rationale text NOT NULL,
    epistemological_assertion_id uuid NOT NULL REFERENCES epistemological_assertions(assertion_id),
    UNIQUE (resolution_id, object_id)
);

CREATE TABLE compilation_receipts (
    compilation_id uuid PRIMARY KEY,
    resolution_id uuid NOT NULL UNIQUE REFERENCES resolution_runs(resolution_id),
    patrimony_authority text NOT NULL,
    patrimony_materialization_identity text NOT NULL,
    crystal_set_digest text NOT NULL CHECK (crystal_set_digest ~ '^sha256:[0-9a-f]{64}$'),
    representation_digest text NOT NULL CHECK (representation_digest ~ '^sha256:[0-9a-f]{64}$'),
    generated_at timestamptz NOT NULL
);

CREATE INDEX object_virtues_search_idx ON object_virtues (virtue_key, assertion_status);
CREATE INDEX relations_from_idx ON patrimony_relations (from_object_id, relation_type);
CREATE INDEX relations_to_idx ON patrimony_relations (to_object_id, relation_type);
CREATE INDEX epistemological_subject_idx ON epistemological_assertions (subject_object_id, context_key, asserted_at DESC);
CREATE INDEX evidence_subject_idx ON evidence_records (subject_object_id, evidence_kind);

COMMIT;
