.headers on

WITH inputCoordinatesTemp AS (
    SELECT 
        37.8715 AS lat,
        23.6267 AS long
)
SELECT 
    m.id,
    m.name,
    m.lat,
    m.long,
    (
        -- 6378 is earth's equatorial radius.
        --  source : https://en.wikipedia.org/wiki/Earth_radius
        6378 * acos(
            cos(radians(ic.lat)) * cos(radians(m.lat)) * cos(radians(m.long) - radians(ic.long)) +
            sin(radians(ic.lat)) * sin(radians(m.lat))
        )
    ) AS distance
FROM 
    monuments AS m, inputCoordinatesTemp AS ic
ORDER BY 
    distance
LIMIT 1