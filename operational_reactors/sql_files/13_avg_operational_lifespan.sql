SELECT
	AVG(shutdown_date- commercial_operation_date)/ 365.25 AS avg_operational_lifespan
FROM
	all_reactors
WHERE
	shutdown_date IS NOT NULL AND
	commercial_operation_date IS NOT NULL AND
	status = 'Shutdown'