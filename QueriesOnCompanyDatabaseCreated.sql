
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

