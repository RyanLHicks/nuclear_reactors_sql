SELECT
	reactor_type_code,
	full_outage_hours_per_unit
FROM
	outage_statistics_2023
ORDER BY
	full_outage_hours_per_unit DESC