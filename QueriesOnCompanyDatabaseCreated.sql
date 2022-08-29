
-- find all employees
-- find all employees ordered by salary in descending order
-- find all employees ordered by sex and then first and last name
-- first 5 employees in the table
--*** Change the column name of firstname to forename and lastname to surname
-- find out all different genders



SELECT first_name, last_name from sql_bootcamp.employee
----------------------------------------------------------------------

Select first_name, last_name,salary
from sql_bootcamp.employee
ORDER BY salary DESC;

---------------------------------------------------------------------
SELECT first_name, last_name,sex
from sql_bootcamp.employee
ORDER BY sex,first_name,last_name;
-- first ordered by sex, then ordered by first name
-- if the first_name are for any 2 inputs :  then those entries will be orderd by the last name 


-------------------------------------------------------------------------------
SELECT first_name, last_name 
FROM sql_bootcamp.employee
LIMIT 5;

---------------------------------------------------------------------------------------------------

SELECT first_name AS Forename, last_name AS Surname 
FROM sql_bootcamp.employee;

----------------------------------------------------------------------------------------------------
SELECT DISTINCT sex
from sql_bootcamp.employee;

----------------------------------------------------------------------------------------------------

-- sql functions:

-- find the number of employees and name that column as TOTAL
SELECT COUNT(emp_id) AS TOTAL FROM sql_bootcamp.employee


-- find the number of super_ids 
SELECT COUNT(super_id) FROM sql_bootcamp.employee


-- Number of female employees born after 1970
SELECT COUNT(emp_id)
FROM sql_bootcamp.employee
WHERE sex='F' AND birth_day >= '1971-01-01';


-- find avg of all employee salaries
SELECT AVG(salary)
FROM sql_bootcamp.employee;

-- find avg of all employee salaries who are male

SELECT AVG(salary)
FROM sql_bootcamp.employee
WHERE sex='M';


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


-- total money spent by each client in ascending order 
SELECT SUM(total_sales),client_id
FROM sql_bootcamp.works_with
GROUP BY client_id
ORDER BY total_sales;


