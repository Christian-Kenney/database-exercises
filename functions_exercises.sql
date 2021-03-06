SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name ;

SELECT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no ;
SELECT CONCAT( first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%e' LIMIT 10 ;

SELECT * FROM employees WHERE hire_date LIKE '199%';

SELECT * FROM employees WHERE birth_date LIKE '%12-25';

SELECT * FROM employees WHERE last_name LIKE '%q%';

SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya' AND gender = 'M');
SELECT * FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25' ORDER BY birth_date, hire_date DESC;

SELECT hire_date FROM employees WHERE hire_date LIKE '199%' AND birth_date LIKE '%12-25';

SELECT *, CONCAT('Days at company: ', DATEDIFF(NOW(), hire_date))
FROM employees WHERE hire_date LIKE '199%'
                                                                                       AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC;


SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';