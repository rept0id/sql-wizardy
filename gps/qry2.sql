WITH input AS (
    SELECT 
        39.8715 AS lat,
        20.6267 AS long
)
SELECT 
    m.id,
    m.name,
    m.lat,
    m.long,
    (
        -- Spherical law of cosines
        --  source : https://en.wikipedia.org/wiki/Spherical_law_of_cosines
        --  6378 is earth's equatorial radius.
        --   source : https://en.wikipedia.org/wiki/Earth_radius
        6378 * acos(
            cos(radians(i.lat)) * cos(radians(m.lat)) * cos(radians(m.long) - radians(i.long)) +
            sin(radians(i.lat)) * sin(radians(m.lat))
        )
    ) AS dist
FROM 
    monuments AS m, input AS i
ORDER BY 
    dist
LIMIT 1
