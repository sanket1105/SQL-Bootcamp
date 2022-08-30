
-- joins : used to combine rows from two or more tables based on the related column between them

-- first insert extra brnch name
INSERT INTO sql_bootcamp.branch VALUES (4,'Buffalo',NULL,NULL);



/*

Four types of joins:

1. Normal or Inner join: Combines rows of 2 tables when they have columns in common though name of the shared cols may be different

2. Left Join: includes all the rows from the left table though they dont have matching in the right side
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
FROM sql_bootcamp.employee
WHERE employee.emp_id IN(
    SELECT emp_id
    FROM sql_bootcamp.works_with
    WHERE total_sales > 30000
);



-- find all clients who are handled by the branch that Scott manages
-- assume you know micheals mgr_ID and not the branch id
SELECT client_name 
FROM sql_bootcamp.client
WHERE branch_id IN
(SELECT branch_id
FROM sql_bootcamp.branch
WHERE mgr_id = 102
);



-- find all clients who are handled by the branch that Scott manages
-- assume you know micheals operated  branch id

SELECT client_name 
FROM sql_bootcamp.client
WHERE client_id IN (
    SELECT client_id
    FROM sql_bootcamp.client
    WHERE branch_id = 2
);


-- now scott may be manager at many firms
-- as soon as you see scoot as the manager of 1st firm, return its client
-- basically it means just return the first client name thats it

-- used inner SELECT * from (..) as t : since subquerry doesnt support the limit, in, all subfunctions in it
SELECT client_name 
FROM sql_bootcamp.client
WHERE client_id IN (
    SELECT * FROM
    (SELECT client_id
    FROM sql_bootcamp.client
    WHERE branch_id = 2
    LIMIT 1 ) as t
);


----------------------------------------------------------------SELECT client_name 
-- HERE ERROR WILL COME, Since
-- it has limit function in its subquerry 
SELECT client_name 
FROM sql_bootcamp.client
WHERE client_id IN(
    SELECT client_id
    FROM sql_bootcamp.client
    WHERE branch_id = 2
    LIMIT 1 
);
-- not supported yet by the sql version
