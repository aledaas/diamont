BEGIN;

INSERT INTO patrimony_objects (object_id, canonical_key, object_kind, name, classification, created_at) VALUES
('019f49e0-4000-7000-8000-000000000001', 'urn:diamont:study:floulabs-context-bound-operational-authority', 'study', 'Context-Bound Operational Authority in Floulabs', 'project_shared', '2026-08-21T21:10:00Z'),
('019f49e0-4000-7000-8000-000000000002', 'urn:diamont:materialization:floulabs-vue-operational-console', 'materialization', 'Floulabs Vue Operational Console', 'project_shared', '2026-08-21T21:10:00Z');

INSERT INTO research_artifacts (object_id, artifact_type, research_status, source_path, source_digest) VALUES
('019f49e0-4000-7000-8000-000000000001', 'study', 'candidate_for_crystallization', 'research/studies/floulabs-context-bound-operational-authority.md', 'sha256:d0ec08e25a06080470cd10b7416be60753b50d1c53d2ec29e79217246dcd1928');

INSERT INTO materializations (object_id, source_project, source_commit, portability_status, license_status, source_reference) VALUES
('019f49e0-4000-7000-8000-000000000002', 'meta-gateway-2.0', '7554dcd201d1eac55faed5b92ca780ef0eeab513', 'candidate', 'partial', 'research/studies/floulabs-vue-operational-console-materialization.md');

INSERT INTO materialization_assets (asset_id, materialization_id, source_path, asset_role, digest, classification, license_status, distributable) VALUES
('019f49e0-4100-7000-8000-000000000001', '019f49e0-4000-7000-8000-000000000002', 'resources/floulabs-console/vite.config.ts', 'isolated_build_boundary', 'sha256:8e7d88c6329c09533e4dbfefb6a16e60509d247579f722c46e7ac1ae234e1b31', 'project_shared', 'confirmed', true),
('019f49e0-4100-7000-8000-000000000002', '019f49e0-4000-7000-8000-000000000002', 'resources/floulabs-console/types/bootstrap.ts', 'server_authored_bootstrap_contract', 'sha256:06e77974bdfafd95c0885accc869f8b89dac8912cbfcb84735004cd0791f3fc8', 'project_shared', 'confirmed', true),
('019f49e0-4100-7000-8000-000000000003', '019f49e0-4000-7000-8000-000000000002', 'resources/floulabs-console/mt-vendor', 'vendor_visual_foundation_manifest', 'sha256:d6779b093b03fb74c3a4a3fd174b5576c4cadba24334350e29c3e335f9cf3685', 'project_shared', 'unknown', false);

INSERT INTO object_virtues (virtue_assertion_id, object_id, virtue_key, description, assertion_status, source_reference) VALUES
('019f49e0-4200-7000-8000-000000000001', '019f49e0-4000-7000-8000-000000000001', 'context_bound_authority', 'Resuelve y aplica autoridad contextual explícita.', 'observed', 'research/studies/floulabs-context-bound-operational-authority.md'),
('019f49e0-4200-7000-8000-000000000002', '019f49e0-4000-7000-8000-000000000001', 'capability_bounded_presentation', 'La presentación refleja capacidades autorizadas sin convertirse en autoridad.', 'observed', 'research/studies/floulabs-context-bound-operational-authority.md'),
('019f49e0-4200-7000-8000-000000000003', '019f49e0-4000-7000-8000-000000000002', 'embedded_modern_frontend', 'Integra un runtime Vue dentro de una aplicación Laravel existente.', 'observed', 'research/studies/floulabs-vue-operational-console-materialization.md'),
('019f49e0-4200-7000-8000-000000000004', '019f49e0-4000-7000-8000-000000000002', 'server_authored_bootstrap', 'Laravel entrega sesión, endpoints y navegación mediante bootstrap tipado.', 'observed', 'research/studies/floulabs-vue-operational-console-materialization.md'),
('019f49e0-4200-7000-8000-000000000005', '019f49e0-4000-7000-8000-000000000002', 'isolated_frontend_build', 'Vite usa entrypoints, output y hot file separados.', 'observed', 'research/studies/floulabs-vue-operational-console-materialization.md'),
('019f49e0-4200-7000-8000-000000000006', '019f49e0-4000-7000-8000-000000000002', 'filament_embedded_workspace', 'Puede adaptarse como Custom Page sin sustituir el shell Filament.', 'candidate', 'research/studies/floulabs-vue-operational-console-materialization.md');

INSERT INTO patrimony_relations (relation_id, from_object_id, to_object_id, relation_type, rationale, source_reference, created_at) VALUES
('019f49e0-4300-7000-8000-000000000001', '019f49e0-4000-7000-8000-000000000002', '019f49e0-4000-7000-8000-000000000001', 'materializes_candidate_knowledge', 'El shell aplica navegación y presentación gobernadas por contexto.', 'research/studies/floulabs-vue-operational-console-materialization.md', '2026-08-21T21:10:00Z');

INSERT INTO evidence_records (evidence_id, subject_object_id, evidence_kind, source_reference, digest, statement, classification, observed_at) VALUES
('019f49e0-4400-7000-8000-000000000001', '019f49e0-4000-7000-8000-000000000001', 'source_commit', 'meta-gateway-2.0@28b687e656c8eb92351f6a46ce17bb85b1e38ac5', NULL, 'Commit originario del aislamiento operacional contextual.', 'project_shared', '2026-08-21T21:10:00Z'),
('019f49e0-4400-7000-8000-000000000002', '019f49e0-4000-7000-8000-000000000002', 'source_commit', 'meta-gateway-2.0@7554dcd201d1eac55faed5b92ca780ef0eeab513', NULL, 'Commit fundacional de la consola Vue embebida.', 'project_shared', '2026-08-21T21:10:00Z'),
('019f49e0-4400-7000-8000-000000000003', '019f49e0-4000-7000-8000-000000000002', 'test_report', 'meta-gateway-2.0:docs/reports/SK-M02/platform-operator-console-scope.md', NULL, 'Reporte de aislamiento con dos contextos y mutaciones restringidas.', 'project_shared', '2026-08-21T21:10:00Z');

INSERT INTO epistemological_assertions (assertion_id, subject_object_id, subject_object_kind, epistemological_state, context_key, statement, evidence_id, asserted_by, asserted_at, supersedes_assertion_id) VALUES
('019f49e0-4500-7000-8000-000000000001', '019f49e0-4000-7000-8000-000000000001', 'study', 'study_observed', 'global', 'Conocimiento observado pendiente de comprensión compartida y cristalización.', '019f49e0-4400-7000-8000-000000000001', 'diamont-research', '2026-08-21T21:10:00Z', NULL),
('019f49e0-4500-7000-8000-000000000002', '019f49e0-4000-7000-8000-000000000002', 'materialization', 'known_materialization_candidate', 'portfolio-filament', 'Materialización candidata; requiere parametrización y revisión de licencia.', '019f49e0-4400-7000-8000-000000000002', 'diamont-research', '2026-08-21T21:10:00Z', NULL);

INSERT INTO knowledge_requests (request_id, protocol_revision, issuer_id, execution_intent, payload_digest, artifact_reference, maximum_classification, received_at) VALUES
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'mina.analyze/2026-08-21', 'development-portfolio', 'analyze', 'sha256:7bc1c89e4e4eaf3bc87415f14d862df08427244e91e6c0d05a0402f9a0f9fc4c', 'research/experiments/mina-analyze-portfolio-filament/knowledge-request.json', 'project_shared', '2026-08-21T21:00:00Z');

INSERT INTO request_virtues (request_id, virtue_key, description, required, derived_from) VALUES
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'context_bound_authority', 'Preservar autoridad Filament y approvals Portfolio.', true, 'shared_understanding'),
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'capability_bounded_presentation', 'Mostrar sólo conocimiento y acciones autorizadas.', true, 'project_context'),
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'embedded_modern_frontend', 'Incorporar workspace Vue sin reemplazar Laravel.', true, 'idea'),
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'server_authored_bootstrap', 'Entregar contexto y endpoints desde autoridad server-side.', true, 'project_context'),
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'isolated_frontend_build', 'Evitar mezclar los árboles React y Vue.', true, 'constraints'),
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'filament_embedded_workspace', 'Montar Vue como Custom Page dentro de Filament.', true, 'target_reference'),
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'confirmed_asset_licensing', 'Distribuir únicamente assets con licencia confirmada.', true, 'knowledge_policy'),
('019f49e0-3400-7a11-8c20-2f4fb6f8a901', 'measured_dual_runtime_compatibility', 'Medir costo y colisiones React/Vue/Vite.', true, 'uncertainties');

COMMIT;
