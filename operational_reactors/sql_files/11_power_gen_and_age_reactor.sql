SELECT 
	net_capacity_mwe,
	grid_connection_date,
	reactor_name
FROM
	operational_reactors
ORDER BY
	net_capacity_mwe DESC
	
	
SELECT 
	grid_connection_date,
	country,
	reactor_name
FROM
	operational_reactors
ORDER BY
	grid_connection_date ASC