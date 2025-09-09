SELECT
	COUNT(onr.supplier_id) AS nuclear_supplier_count,
	s.full_name
FROM
	operational_reactors AS onr
LEFT JOIN
	nsss_suppliers AS s ON onr.supplier_id = s.id 
GROUP BY 
	s.full_name
ORDER BY
	nuclear_supplier_count DESC