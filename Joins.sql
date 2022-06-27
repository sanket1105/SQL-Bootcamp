
-- joins : used to combine rows from two or more tables based on the related column between them

-- first insert extra brnch name
INSERT INTO sql_bootcamp.branch VALUES (4,'Buffalo',NULL,NULL);



/*

Four types of joins:

1. Inner join: Combines rows of 2 tables when they have shared columns in common

2. Left Join: includes all the ros from the left table
            -> Left table is the one that is included in the from statement

3. Right join -> all the rows that are in the right table
            -> right table is the one that is included in the join statement

4. Full outer join -> Left and right join is combined        

*/


-- Normal Join
-- find all branches and names of their managers

--mgr id and emp_id are the column shared between branch and employee
SELECT employee.emp_id,employee.first_name, branch.branch_name
FROM sql_bootcamp.employee
JOIN sql_bootcamp.branch
ON sql_bootcamp.employee.emp_id = sql_bootcamp.branch.mgr_id;

-- Left join 
SELECT employee.emp_id,employee.first_name, branch.branch_name
FROM sql_bootcamp.employee
LEFT JOIN sql_bootcamp.branch
ON sql_bootcamp.employee.emp_id = sql_bootcamp.branch.mgr_id;

-- right join
SELECT employee.emp_id,employee.first_name, branch.branch_name
FROM sql_bootcamp.employee
RIGHT JOIN sql_bootcamp.branch
ON sql_bootcamp.employee.emp_id = sql_bootcamp.branch.mgr_id;



-- Nested Queries : Multiple select statements to get the info

-- find names of all employees who have sold over 30000 to a single client

SELECT employee.emp_id, employee.first_name
from sql_bootcamp.employee
WHERE employee.emp_id IN(
    SELECT works_with.emp_id
    FROM sql_bootcamp.works_with
    WHERE works_with.total_sales > 30000
    );


-- find all clients who are handled by the branch that Scott manages
-- assume you know micheals ID

SELECT client.client_name
FROM sql_bootcamp.client
WHERE client.branch_id IN (
    SELECT branch.branch_id
    FROM sql_bootcamp.branch
    WHERE branch.mgr_id = 102
);

-- now scott may be manager at many firms
-- as soon as you see scoot as the manager of 1st firm, return its client
SELECT client.client_name
FROM sql_bootcamp.client
WHERE client.branch_id IN (
    SELECT branch.branch_id
    FROM sql_bootcamp.branch
    WHERE branch.mgr_id = 102
    LIMIT 1
);
-- not supported yet by the sql version
