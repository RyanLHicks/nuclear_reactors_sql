SELECT
	AVG(grid_connection_date - construction_start_date) / 365.25 AS avg_construction_time
FROM
	all_reactors
WHERE
	grid_connection_date IS NOT NULL
	AND construction_start_date IS NOT NULL
	AND status != 'Under Construction';
	