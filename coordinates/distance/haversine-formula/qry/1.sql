WITH input AS (
    SELECT 
        -- Gate of Athena Archegetis
        37.974587330946335 AS lat,
        23.725578456480832 AS long
)
SELECT 
    m.id,
    m.name,
    m.lat,
    m.long,
    (
        -- Haversine formula
        --  formula : 2 * R * asin( sqrt( sin((lat2 - lat1) / 2)^2 + cos(lat1) * cos(lat2) * sin((long2 - long1) / 2)^2) )
        --  let R = 6378. 6378 is earth's equatorial radius.
        6378 * 2 * asin(
            sqrt(
                power(sin(radians((m.lat - i.lat) / 2)),2) +
                cos(radians(i.lat)) * cos(radians(m.lat)) * 
                power(sin(radians((m.long - i.long) / 2)),2)
            )
        )
    ) AS dist
FROM 
    monuments AS m, input AS i
ORDER BY 
    dist
LIMIT 1
