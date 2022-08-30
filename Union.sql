
-- union: used to combine results of multiple select statements into one
-- there must be same number of cols selected in each select statemet for the union to take place
-- both should have similar data type


-- find the list of employees and branch name

SELECT first_name
FROM sql_bootcamp.employee
UNION
SELECT branch_name
FROM sql_bootcamp.branch
UNION
SELECT last_name
FROM sql_bootcamp.employee;

-------------------------

SELECT first_name AS company_name
FROM sql_bootcamp.employee
UNION
SELECT branch_name
FROM sql_bootcamp.branch
UNION
SELECT last_name
FROM sql_bootcamp.employee;

-- list of all clients and branch supplier names
SELECT client_name
FROM sql_bootcamp.client
UNION
SELECT supplier_name
FROM sql_bootcamp.branch_supplier

-- above query, both have branch_id col

SELECT client_name, branch_id
FROM sql_bootcamp.client
UNION
SELECT supplier_name, branch_id
FROM sql_bootcamp.branch_supplier


-- find all money spent or earned by the company


-- spent on salary, earned on sales
SELECT SUM(total_sales)
FROM sql_bootcamp.works_with
UNION
SELECT SUM(salary)
FROM sql_bootcamp.employee;