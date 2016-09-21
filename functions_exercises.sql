SELECT * FROM employees;

SELECT DISTINCT CONCAT(COUNT(*),' ', gender)  FROM employees WHERE (first_name IN ('Irena', 'Vidya') OR first_name = 'Maya') GROUP BY gender;

SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';

SELECT CONCAT(first_name,' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E' ORDER BY emp_no DESC;

SELECT datediff(curdate(), hire_date) FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25'
	ORDER BY birth_date, hire_date DESC;

SELECT * FROM employees WHERE birth_date LIKE '%-12-25';

SELECT CONCAT(first_name, ' ', last_name, ' ', COUNT(CONCAT(first_name,' ', last_name)))FROM employees 
	WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY first_name, last_name;gg