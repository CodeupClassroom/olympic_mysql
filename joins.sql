USE employees;

-- Show hows each department along with the name of the current manager for that department.
SELECT departments.dept_name, e.first_name, e.last_name
FROM employees e
JOIN dept_manager ON e.emp_no = dept_manager.emp_no
JOIN departments ON dept_manager.dept_no = departments.dept_no
WHERE dept_manager.to_date > now();

-- Find the name of all departments currently managed by women.
SELECT departments.dept_name
FROM employees e
JOIN dept_manager ON dept_manager.emp_no = e.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE dept_manager.to_date > now()
AND e.gender = "F";

-- Find the current titles of employees currently working in the Customer Service department.
SELECT title, count(title)
FROM titles
JOIN dept_emp ON dept_emp.emp_no = titles.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.to_date > now()
AND titles.to_date > now()
AND departments.dept_name = "Customer Service"
GROUP BY title;

-- Find the current salary of all current managers.
SELECT concat(first_name, " ", last_name) AS NAME, departments.dept_name AS "department name", salaries.salary
FROM employees
JOIN salaries ON salaries.emp_no = employees.emp_no
JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_manager.dept_no
WHERE salaries.to_date > now()
AND dept_manager.to_date > now();

-- Find the names of all current employees, their department name, and their current manager's name.
-- employees table to get current employee names
-- dept_employees table get employees and the dept they work for
-- department table get the dept name
-- dept_manager table to get the relationship data for the manager of a dept
-- employees table as managers to get manager.first_name manager.last_name


-- Historic average salary of female managers vs. male managers
	-- M 72810.9489
	-- F 62037.2170

-- Current average salary of female managers vs. male managers

-- Historic average salary of female workers vs. male workers
	-- M 63838.1769
	-- F 63769.6032

-- Current average salary of female workers vs. male workers
	-- M 72044.6570
	-- F 71963.5708

-- Current count of female managers vs male managers
	-- M 5
	-- F 4

-- Current count of female engineers vs. male engineers
	-- M 18571
	-- F 12412
