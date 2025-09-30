SELECT EXTRACT(YEAR FROM GENERATE_SERIES(
	MIN(salaries.from_date), 
	CURRENT_DATE, 
	'1 year')
	) AS year
	FROM salaries
