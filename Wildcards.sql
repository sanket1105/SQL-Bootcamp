
-- wildcards: defining diff patterns that we want to match the specicfic data to
            -- In short terms, grab a data that matches a specific pattern



/*

% -> any number of characters
_ -> one CHARACTER

*/

 -- Find client who are a LLC (Limited Liabiity Company)    

 SELECT *
 FROM sql_bootcamp.client
 WHERE client_name LIKE "%llc"; 
 -- just have LLC in the name so %
 -- even small alphabets will also be taken care of


------------------------------------------------------------------------
 -- find branch suppliers who are in label business
 SELECT *
 from sql_bootcamp.branch_supplier
 WHERE supplier_name LIKE "%label%";
 -- any number of charaters before and after the label word


 /*
 SQL is not case sensitive. "LABEL" is same as "label"
 */


SELECT * FROM sql_bootcamp.employee



-- TIL : Like can't be used in the date type column if date is not in dd/mm /yy format

/*
-- find any employees born in october
SELECT *
 FROM sql_bootcamp.employee
WHERE birth_day LIKE '%Oc%';
*/

-- so just change the date format

SELECT DATE_FORMAT(birth_day,'%d/%m/%Y') FROM sql_bootcamp.employee;

SELECT FORMAT(birth_day ,'dd, m, yyyy') AS birth_day FROM sql_bootcamp.employee;

SELECT * FROM sql_bootcamp.employee;

SELECT DATE_FORMAT(birth_day,"%m/%d/%Y"),first_name
FROM sql_bootcamp.employee
WHERE birth_day LIKE '%10%';


-- find any clients who are schools

SELECT * 
FROM sql_bootcamp.client
WHERE client_name LIKE "%school";

