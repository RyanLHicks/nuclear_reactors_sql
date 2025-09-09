SELECT 
	COUNT(type_id) AS reactor_country_count,
	country
FROM
	operational_reactors
GROUP BY
	country
ORDER BY
	reactor_country_count DESC