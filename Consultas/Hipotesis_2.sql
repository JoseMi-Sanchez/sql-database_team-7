-- Contar los alojamientos por cada categoría y calcular el porcentaje
SELECT 
    CASE 
        WHEN accommodates = 1 THEN '1'
        WHEN accommodates = 2 THEN '2'
        ELSE '>2'
    END AS capacity_classification,
    COUNT(*) AS total_listings,
    (COUNT(*) * 100.0 / (SELECT COUNT(*) FROM listing)) AS percentage
FROM listing
GROUP BY capacity_classification;
