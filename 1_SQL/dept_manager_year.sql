SELECT d.dept_name, e.gender, t.title FROM employees e
	JOIN salaries s ON e.emp_no = s.emp_no
	JOIN titles t ON e.emp_no = t.emp_no
	JOIN dept_emp de ON e.emp_no = de.emp_no
	JOIN departments d ON de.dept_no = d.dept_no
	WHERE t.title = 'Finance'
		AND e.gender = 'F'
		AND EXTRACT(YEAR FROM s.from_date) = 1985
	GROUP BY d.dept_name, e.gender, t.title
	ORDER BY d.dept_name
	