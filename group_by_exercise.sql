USE employees;

-- use DISTINCT to find the unique titles in the titles table.
-- Update the previous query to sort the results alphabetically.
select title
from titles
group by title;

-- Find your query for employees whose last names start and end with 'E'.
-- Update the query find just the unique last names that start and end with 'E' using GROUP BY. 
-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.
select * 
from employees
where last_name like 'e%e'
group by last_name;

-- Find the unique last names with a 'q' but not 'qu'. You may use either DISTINCT or GROUP BY. Your results should be:
SELECT * 
from employees
where last_name like '%q%' AND last_name NOT LIKE '%qu%'
group by last_name;
