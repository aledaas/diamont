-- Cobertura explicable de virtudes para la primera KnowledgeRequest.
WITH requested AS (
    SELECT rv.request_id, rv.virtue_key, rv.description, rv.required
    FROM request_virtues rv
    WHERE rv.request_id = '019f49e0-3400-7a11-8c20-2f4fb6f8a901'
), candidates AS (
    SELECT
        r.virtue_key,
        ov.object_id,
        po.canonical_key,
        po.object_kind,
        ov.assertion_status,
        ov.description AS observed_virtue,
        ea.epistemological_state,
        row_number() OVER (
            PARTITION BY r.virtue_key, ov.object_id
            ORDER BY ea.asserted_at DESC
        ) AS assertion_rank
    FROM requested r
    LEFT JOIN object_virtues ov ON ov.virtue_key = r.virtue_key
    LEFT JOIN patrimony_objects po ON po.object_id = ov.object_id
        AND po.classification IN ('public', 'project_shared')
    LEFT JOIN epistemological_assertions ea ON ea.subject_object_id = po.object_id
        AND ea.context_key IN ('global', 'portfolio-filament')
)
SELECT jsonb_build_object(
    'request_id', requested.request_id,
    'coverage', jsonb_agg(
        jsonb_build_object(
            'virtue', requested.virtue_key,
            'required', requested.required,
            'status', CASE
                WHEN candidates.object_id IS NULL THEN 'GAP'
                WHEN candidates.assertion_status = 'candidate' THEN 'PARTIAL'
                ELSE 'COVERED'
            END,
            'object', candidates.canonical_key,
            'object_kind', candidates.object_kind,
            'epistemological_state', candidates.epistemological_state,
            'explanation', COALESCE(candidates.observed_virtue, requested.description)
        ) ORDER BY requested.virtue_key
    ),
    'outcome', CASE
        WHEN count(*) FILTER (WHERE candidates.object_id IS NULL OR candidates.assertion_status = 'candidate') = 0
            THEN 'SUFFICIENT'
        WHEN count(*) FILTER (WHERE candidates.object_id IS NOT NULL) = 0
            THEN 'INSUFFICIENT'
        ELSE 'PARTIALLY_SUFFICIENT'
    END
) AS experimental_coverage
FROM requested
LEFT JOIN candidates
    ON candidates.virtue_key = requested.virtue_key
    AND candidates.assertion_rank = 1
GROUP BY requested.request_id;
