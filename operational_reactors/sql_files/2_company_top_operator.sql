SELECT
	COUNT(onr.operator_id) AS nuclear_reactor_count,
	o.full_name
FROM
	operational_reactors AS onr
LEFT JOIN
	operators AS o ON onr.operator_id = o.id 
GROUP BY 
	o.full_name
ORDER BY
	nuclear_reactor_count DESC