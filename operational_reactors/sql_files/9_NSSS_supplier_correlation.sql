SELECT
	COUNT(*) AS pairing_count,
	ns.full_name AS sup_name,
	op.full_name AS op_name,
	onr.country
FROM
	operational_reactors AS onr
JOIN
	nsss_suppliers AS ns ON onr.supplier_id = ns.id
JOIN
	operators AS op ON onr.OPERATOR_id = op.id
GROUP BY
	sup_name,
	op_name,
	onr.country
ORDER BY
	pairing_count DESC
	

	