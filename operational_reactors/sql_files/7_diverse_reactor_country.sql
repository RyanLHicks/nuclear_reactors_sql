SELECT 
	country,
	COUNT(DISTINCT reactor_type) AS diverse_country
FROM
	operational_reactors
GROUP BY
	country
ORDER BY
	diverse_country DESC

	