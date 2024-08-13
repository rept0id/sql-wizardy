WITH input AS (
    SELECT 
        -- Theatre of Dionysus
        37.97062604308312 AS lat,
        23.728433202679277 AS long
)
SELECT 
    m.id,
    m.name,
    m.lat,
    m.long,
    (
        -- Spherical Law of Cosines
        --  formula : R * acos( cos(lat1) * cos(lat2) * cos(long2 - long1) + sin(lat1) * sin(lat2) )
        --  let R = 6378. 6378 is earth's equatorial radius.
        6378 * acos( 
            cos(radians(i.lat)) * cos(radians(m.lat)) * cos(radians(m.long) - radians(i.long)) + sin(radians(i.lat)) * sin(radians(m.lat)) 
        )
    ) AS dist
FROM 
    monuments AS m, input AS i
ORDER BY 
    dist
LIMIT 1
