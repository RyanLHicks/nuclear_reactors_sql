SELECT 
	country,
	reactor_type,
	SUM(net_capacity_mwe) AS reactor_type_output
FROM 
	operational_reactors
WHERE
	country = 'USA'
GROUP BY
	reactor_type,
	country
	
SELECT 
	country,
	reactor_type,
	SUM(net_capacity_mwe) AS reactor_type_output
FROM 
	operational_reactors
WHERE
	country IN ('France', 'China', 'USA')
GROUP BY
	reactor_type,
	country
ORDER BY 
	country,
	reactor_type_output DESC