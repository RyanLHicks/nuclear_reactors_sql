SELECT
	reactor_type,
	COUNT(model) AS model_type,
	model
FROM
	operational_reactors
GROUP BY
	reactor_type,
	model
ORDER BY
	model_type DESC