SELECT DISTINCT title FROM titles;

SELECT DISTINCT * FROM employees WHERE last_name LIKE '%e%' ORDER BY emp_no ;
SELECT CONCAT( first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'e%e' GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'e%e';

SELECT DISTINCT last_name FROM employees WHERE last_name LIKE '%q%'AND last_name NOT LIKE '%qu%';

SELECT first_name, count(first_name) FROM employees group by first_name;
select first_name FROM employees GROUP BY first_name;

SELECT DISTINCT first_name, COUNT(first_name)
FROM employees
GROUP BY first_name;