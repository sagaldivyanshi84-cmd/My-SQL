USE sql_practice;
SELECT *
FROM employees;
SELECT *
FROM orders;
SELECT * 
FROM departments;
SELECT name,salary
FROM employees;
SELECT *
FROM employees
WHERE salary > 50000;
SELECT *
FROM employees
WHERE department = 'IT';
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT COUNT(*) AS total_emp
FROM employees;
SELECT AVG(salary) AS avg_salary
FROM employees;
SELECT MAX(salary) AS max_salary
FROM employees;
SELECT *
FROM employees
WHERE YEAR(hire_date) > 2022;
SELECT DISTINCT department 
FROM employees;
SELECT SUM(salary) AS total_salary,department
FROM employees
GROUP BY department ;
SELECT department, AVG(salary) avg_salary 
FROM employees
GROUP BY department
ORDER BY avg_salary DESC
LIMIT 1;
SELECT COUNT(*) AS total_emp,department
FROM employees
GROUP BY department;
SELECT name
FROM employees
WHERE name LIKE "A%";
SELECT *
FROM employees
WHERE salary BETWEEN 40000 AND 60000;
SELECT *
FROM employees AS e
JOIN orders AS o
ON e.emp_id=o.emp_id;
SELECT e.name,SUM(o.amount) AS total_amt
FROM employees AS e
JOIN orders AS o
ON e.emp_id=o.emp_id
GROUP BY e.name;
SELECT DISTINCT e.name
FROM employees AS e
JOIN orders AS o
ON e.emp_id=o.emp_id;
SELECT DISTINCT e.name
FROM employees AS e
JOIN orders AS o
ON e.emp_id=o.emp_id
WHERE e.emp_id IS NULL;
SELECT MAX(salary) AS sec_higest_saly
FROM employees
WHERE salary<(SELECT MAX(salary) 
			  FROM employees );
SELECT *,
RANK() OVER(ORDER BY salary DESC) AS ranking
FROM employees;
SELECT salary,COUNT(*)
FROM employees
GROUP BY salary
HAVING COUNT(*)>1;
SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 2;
SELECT *
FROM employees e
WHERE salary>(SELECT AVG(salary)
			  FROM employees 
			  WHERE department=e.department);
SELECT *,
SUM(salary) OVER (ORDER BY salary) AS total_salary
FROM employees;
SELECT *
FROM employees
WHERE salary IN (SELECT salary
				 FROM employees
                 GROUP BY salary
                 HAVING COUNT(*)>1);
SELECT MAX(salary)-MIN(salary) AS salary_diff
FROM employees;
SELECT MAX(salary)
FROM employees
WHERE salary<(SELECT MAX(salary) 
              FROM employees);
SELECT e.name
FROM employees AS e
LEFT JOIN orders  AS o              
ON e.emp_id=o.emp_id
WHERE o.emp_id IS NULL;
SELECT MAX(salary) AS higest_sal,department
FROM employees
GROUP BY department;