	--Each reactor type for each country
SELECT 
	 COUNT(reactor_type) AS reactor_type_count,
	 country,
	 reactor_type
FROM
	operational_reactors
GROUP BY
	country,
	reactor_type
ORDER BY
	reactor_type_count DESC

	-- Counts total nucelar reactor per country
SELECT
	COUNT(type_id) AS reactor_count,
	country
FROM
	operational_reactors
GROUP BY
	country
ORDER BY 
	reactor_count DESC
	
-- CTE to find the % that USA has in nuclear reactors for the world
