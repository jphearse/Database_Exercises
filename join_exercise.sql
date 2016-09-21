SELECT * AS u
JOIN roles AS roles
  ON r.id = u.role_id;

SELECT * AS u
LEFT JOIN roles AS roles
  ON r.id = u.role_id;
  
SELECT * AS u
RIGHT JOIN roles AS roles
  ON r.id = u.role_id;
  
  
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, e.gender
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';
  
SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, e.gender
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
WHERE e.gender = 'f'
	AND dm.to_date = '9999-01-01';


SELECT t.title, COUNT(e.first_name) AS 'Count with title'
FROM employees as e
JOIN dept_emp as de
  ON e.emp_no = de.emp_no
JOIN departments as d
  ON de.dept_no = d.dept_no
JOIN titles AS t
	on e.emp_no = t.emp_no
WHERE d.dept_name = "Customer Service"
AND de.to_date = '9999-01-01'
AND t.to_date = '9999-01-01'
GROUP BY title;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, salary
FROM employees as e
JOIN dept_manager as dm
  ON dm.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = dm.dept_no
JOIN salaries as s 
  ON s.emp_no = e.emp_no
WHERE dm.to_date = '9999-01-01'
AND s.to_date = '9999-01-01';
