# --- WHERE CLAUSES


# Select the first name from all employees with a last name ending in z
SELECT first_name
FROM employees
WHERE last_name = '%z';


# Select distinct first names from emplyees where first name contains a z
SELECT DISTINCT first_name
FROM employees
WHERE first_name LIKE '%z%';


# Select all employee data where employee number is between 10001 and 10010
SELECT * 
FROM employees
WHERE emp_no BETWEEN 10001 AND 10010;


# Select all employee data for employees with a first name of Georgi or Parto
SELECT *
FROM employees
WHERE first_name LIKE 'Georgi' 
OR first_name LIKE 'Parto';

SELECT *
FROM employees
WHERE first_name IN ('Georgi', 'Parto');


# Select employee number, first name, last name for employees with a last name of Herber, Dredge, Lipner, or Baek
SELECT emp_no, first_name, last_name
FROM employees
WHERE last_name IN ('Herber', 'Dredge', 'Lipner', 'Baek');


# Select all employee data for employees with first name before Eban
SELECT *
FROM employees
WHERE first_name < 'Eban';

























# --- WHERE CONTINUED

# Select all employee data for all employees before employee number 10200
SELECT *
FROM employees
WHERE emp_no < 10200;


# Select all data from female employees where employee number is less than 10200
SELECT * 
FROM employees 
WHERE emp_no < 10200
	AND gender = 'F';


# Select all employee data from male or female employees with an id less than 10200
SELECT * 
FROM employees 
WHERE emp_no < 10200
	AND (gender = 'F'
	OR gender = 'M');


# Select all employee data from female employees with an id less than 10200 or are male employees
SELECT * 
FROM employees 
WHERE emp_no < 10200
	AND gender = 'F'
	OR gender = 'M';










# --- ORDER BY

# Select employee first and last names from highest to lowest employee number

SELECT first_name, last_name
FROM employees
ORDER BY emp_no DESC;

# Select employee data from all employees in ascending order by last name
SELECT *
FROM employees
ORDER BY last_name;


# Select employee data from all employees in decending order by last name
SELECT *
FROM employees
ORDER BY last_name DESC;


# Select all female then male employee data for all employees 
# with a first name of Leni with last names in decending alphabetical order
SELECT *
FROM employees
WHERE first_name = 'Leni'
ORDER by gender DESC, last_name DESC;


# Select first name and last name from employees 
# desending by last name and asending by first name 
# for employees with the same last name











