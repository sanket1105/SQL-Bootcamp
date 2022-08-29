

-- they are written so as to get the particular piece of info from the DBMS
--  * means to gather all the information

--  <> is the operator used for not equal to, in c++ its !

SELECT * from sql_bootcamp.student;

SELECT name from sql_bootcamp.student;

SELECT name, major from sql_bootcamp.student;


-- another way of writing it
SELECT student.name from sql_bootcamp.student;


-- ordering by the name column
-- by default ordering is done in the ascending order
-- DESC for descending
-- ASC for ascending order
SELECT name,major
from sql_bootcamp.student;
-----------------------------------------------
SELECT name,major
from sql_bootcamp.student
ORDER BY name DESC;

------------------------------------------------
SELECT name,major,student_id
from sql_bootcamp.student;

-------------------------------------------
-- though not printing the student_id, still we can use it to sort the table
SELECT name,major
from sql_bootcamp.student
ORDER BY student_id DESC;


-- order by major first and if any majors are same, then order by student_id
SELECT *
from sql_bootcamp.student
ORDER BY major,student_id;
-- Null is given first priority while ascendings


-- just the first 3 entries after sorting: USE LIMIT
SELECT *
from sql_bootcamp.student
ORDER BY student_id DESC
LIMIT 3;

---------------------------------------------------------------
-- FILTER command
SELECT * 
from sql_bootcamp.student
WHERE major='Biology' OR name='Kate'
ORDER BY student_id DESC;


SELECT * FROM sql_bootcamp.student

----------------------------------------------------------------------
-- print all where major is not biology
SELECT * 
FROM sql_bootcamp.student
WHERE major <> 'Biology';

-- results are somewhat astonishing
-- the major with null is also not printed
----------------------------------------------------------------------------
SELECT * 
FROM sql_bootcamp.student
WHERE student_id <> 1;

-- multiple conditions

SELECT * FROM sql_bootcamp.student
WHERE name IN ('Shankii','Kate','Mike'); 


SELECT * FROM sql_bootcamp.student
WHERE name IN ('Shankii','Kate','Mike') AND major in ("Biology","Sociology"); 