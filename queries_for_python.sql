-- INICIAR LA BASE DE DATOS
USE civitatis_airbnb;

-- Hipótesis 1 / Mayor nota media habitaciones vs apartamentos
-- Tabla % habitaciones vs apartamentos
SELECT 
    cal.room_type, 
    COUNT(cal.listing_id) AS total_listings,
    COUNT(cal.listing_id) * 100.0 / (SELECT COUNT(listing_id) FROM civitatis_airbnb.listing) AS percentage
FROM civitatis_airbnb.listing AS cal
GROUP BY cal.room_type;

-- Tabla para mapa localización airbnb según type room.
SELECT cal.listing_id, cal.room_type, cal.longitude, cal.latitude
FROM civitatis_airbnb.listing as cal;

-- Tabla con nota media por room_type.
SELECT
	cal.room_type,
    AVG(car.review_scores_rating) AS reviews_avg
FROM civitatis_airbnb.listing as cal
JOIN civitatis_airbnb.reviews as car ON cal.listing_id = car.listing_id
GROUP BY cal.room_type;

-- Hipótesis 3 / El mercado malagueño está controlado por grandes propietarios/empresas en más de un 50%.
-- Tabla con host por número de anuncios (1,3, de 3 a 5, de 6 a 10, de 11 a 25, +25)
SELECT 
    CASE
        WHEN cah.host_listings_count = 1 THEN '1'
        WHEN cah.host_listings_count = 2 THEN '2'
        WHEN cah.host_listings_count BETWEEN 3 AND 5 THEN '3-5'
        WHEN cah.host_listings_count BETWEEN 6 AND 10 THEN '6-10'
        WHEN cah.host_listings_count > 10 THEN '+10'
        ELSE 'Sin categoría'
    END AS host_category,
    COUNT(cah.host_id) AS total_hosts,
    (COUNT(cah.host_id) * 100 / (SELECT COUNT(*) FROM civitatis_airbnb.host)) AS percentage
FROM civitatis_airbnb.host AS cah
GROUP BY host_category;

-- Tabla con TOP 10 host según número de inmuebles (host_listings_count no sirve porque 
SELECT cah.host_name, COUNT(cal.listing_id) AS total_listings
FROM civitatis_airbnb.listing AS cal
JOIN civitatis_airbnb.host AS cah ON cal.host_id = cah.host_id
GROUP BY cah.host_name
ORDER BY total_listings DESC;