
-- find all employees

SELECT first_name, last_name from sql_bootcamp.employee

-- find all employees ordered by salary in descending order
Select first_name, last_name,salary
from sql_bootcamp.employee
ORDER BY salary DESC;

-- find all employees ordered by sex and then name
SELECT first_name, last_name,sex
from sql_bootcamp.employee
ORDER BY sex,first_name,last_name;
-- first ordered by sex, then ordered by first name in female and male section
-- if the first_name are same then it will order by the last name 



-- first 5 employees in the table
SELECT first_name, last_name 
FROM sql_bootcamp.employee
LIMIT 5;


-- Change the column name of firstname to forename and lastname to surname
SELECT first_name AS Forename, last_name AS Surname 
FROM sql_bootcamp.employee;


-- find out all different genders
SELECT DISTINCT sex
from sql_bootcamp.employee;



-- sql functions:

-- find the number of employees  
SELECT COUNT(emp_id) FROM sql_bootcamp.employee

-- find the number of super_ids 
SELECT COUNT(super_id) FROM sql_bootcamp.employee

-- female employees born after 1970
SELECT COUNT(emp_id)
FROM sql_bootcamp.employee
WHERE sex='F' AND birth_day > '1971-01-01';


-- find avg of all employee salaries
SELECT AVG(salary)
FROM sql_bootcamp.employee;

-- find avg of all employee salaries who are male
SELECT AVG(salary)
FROM sql_bootcamp.employee
WHERE sex="M";

-- find SUM of all employee salaries
SELECT SUM(salary)
FROM sql_bootcamp.employee;


-- find out how many males and females there are
SELECT COUNT(sex),sex
FROM sql_bootcamp.employee
GROUP BY sex;


-- total sales by each sales man in ascending order
SELECT SUM(total_sales), emp_id
from sql_bootcamp.works_with 
GROUP BY emp_id
ORDER BY total_sales;


-- total money spent by each client
SELECT SUM(total_sales),client_id
FROM sql_bootcamp.works_with
GROUP BY client_id;


