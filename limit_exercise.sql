USE employees;

-- List the first 10 distinct last name sorted in descending order. Your result should look like this:
SELECT last_name
FROM employees
GROUP BY last_name DESC
LIMIT 10 OFFSET 0;

-- Find the first 5 employees born on Christmas and hired in the 90s
-- order by birth_date ASC, hire_date DESC
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;
 	
-- Update the query to find the tenth batch of results.
SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25'
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45;
