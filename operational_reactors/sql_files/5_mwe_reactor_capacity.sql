SELECT
	DENSE_RANK () OVER (ORDER BY net_capacity_mwe DESC) AS ranked_energy_capacity,
	net_capacity_mwe,
	reactor_name,
	reactor_type,
	country
FROM 
	operational_reactors
	
SELECT
	SUM(net_capacity_mwe) AS net_mwe,
	reactor_type
FROM 
	operational_reactors
GROUP BY
	reactor_type
ORDER BY
	net_mwe DESC

	
SELECT
	SUM(net_capacity_mwe) AS net_mwe,
	country
FROM 
	operational_reactors
GROUP BY
	country
ORDER BY
	net_mwe DESC
