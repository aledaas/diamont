DO $$
BEGIN
    BEGIN
        INSERT INTO epistemological_assertions (
            assertion_id, subject_object_id, subject_object_kind,
            epistemological_state, context_key, statement,
            asserted_by, asserted_at
        ) VALUES (
            '019f49e0-5000-7000-8000-000000000001',
            '019f49e0-4000-7000-8000-000000000001',
            'study', 'active_crystal', 'invalid-test',
            'A study must never become an active Crystal by persistence convenience.',
            'invariant-test', '2026-08-21T21:20:00Z'
        );
        RAISE EXCEPTION 'invariant failed: study accepted as active_crystal';
    EXCEPTION
        WHEN check_violation THEN
            RAISE NOTICE 'PASS: study cannot be active_crystal';
    END;
END $$;
DO $$
BEGIN
    BEGIN
        INSERT INTO materialization_assets (
            asset_id, materialization_id, source_path, asset_role,
            digest, classification, license_status, distributable
        ) VALUES (
            '019f49e0-5000-7000-8000-000000000002',
            '019f49e0-4000-7000-8000-000000000002',
            'unlicensed/example', 'invalid-test',
            'sha256:ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff',
            'project_shared', 'unknown', true
        );
        RAISE EXCEPTION 'invariant failed: unlicensed asset accepted as distributable';
    EXCEPTION
        WHEN check_violation THEN
            RAISE NOTICE 'PASS: unlicensed asset cannot be distributable';
    END;
END $$;

DO $$
BEGIN
    BEGIN
        INSERT INTO resolution_runs (
            resolution_id, request_id, outcome, status,
            explanation, created_at, issued_at
        ) VALUES (
            '019f49e0-5000-7000-8000-000000000003',
            '019f49e0-3400-7a11-8c20-2f4fb6f8a901',
            'PARTIALLY_SUFFICIENT', 'issued',
            'An issued resolution requires an issued timestamp.',
            '2026-08-21T21:20:00Z', NULL
        );
        RAISE EXCEPTION 'invariant failed: issued resolution accepted without issued_at';
    EXCEPTION
        WHEN check_violation THEN
            RAISE NOTICE 'PASS: issued resolution requires issued_at';
    END;
END $$;

DO $$
DECLARE
    forbidden_columns integer;
BEGIN
    SELECT count(*) INTO forbidden_columns
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND lower(column_name) IN ('crystal_version', 'face_version', 'crystal_generation', 'face_generation');

    IF forbidden_columns <> 0 THEN
        RAISE EXCEPTION 'invariant failed: forbidden knowledge version columns found';
    END IF;

    RAISE NOTICE 'PASS: no Crystal/Face version or generation columns';
END $$;

DO $$
DECLARE
    covered integer;
    partial integer;
    gaps integer;
BEGIN
    SELECT
        count(*) FILTER (WHERE ov.object_id IS NOT NULL AND ov.assertion_status <> 'candidate'),
        count(*) FILTER (WHERE ov.object_id IS NOT NULL AND ov.assertion_status = 'candidate'),
        count(*) FILTER (WHERE ov.object_id IS NULL)
    INTO covered, partial, gaps
    FROM request_virtues rv
    LEFT JOIN object_virtues ov ON ov.virtue_key = rv.virtue_key
    WHERE rv.request_id = '019f49e0-3400-7a11-8c20-2f4fb6f8a901';

    IF covered <> 5 OR partial <> 1 OR gaps <> 2 THEN
        RAISE EXCEPTION 'unexpected coverage: covered %, partial %, gaps %', covered, partial, gaps;
    END IF;

    RAISE NOTICE 'PASS: expected coverage is 5 covered, 1 partial, 2 gaps';
END $$;
