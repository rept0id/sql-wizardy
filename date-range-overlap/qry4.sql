WITH input AS (
    SELECT '2020-08-16' AS start, '2020-08-16' AS end
)
SELECT 
    *
FROM 
    calendar, input
WHERE 
    -- the whole trick is to provide the opposite : start = input.End, end = Input.Start
    startD <= input.end
    AND 
    endD >= input.start
;
