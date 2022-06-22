-- they are written so as to get the particular peice of info from the DBMS
--  * means to gather all the information

--  <> is the operator used for not equal to, in c++ its !
SELECT * from sql_bootcamp.student;

SELECT name 
from sql_bootcamp.student;

SELECT name, major 
from sql_bootcamp.student;


-- another way of writing it
SELECT student.name 
from sql_bootcamp.student;


-- ordering by the name column
-- by default are in ascending order
-- DESC for descending
-- ASC for ascending order
SELECT name,major
from sql_bootcamp.student
ORDER BY name DESC;


-- though not printing the student_id, still we can use it to sort the table
SELECT name,major
from sql_bootcamp.student
ORDER BY student_id DESC;


-- order by major first and if any majors are same, then order by student_id
SELECT *
from sql_bootcamp.student
ORDER BY major,student_id;
-- Null is given first priority while ascendings


-- just the first 3 entries after sorting: USe LIMIT
SELECT *
from sql_bootcamp.student
ORDER BY student_id DESC
LIMIT 3;

---------------------------------------------------------------
-- FILTER command
SELECT * 
from sql_bootcamp.student
WHERE major='Biology' OR name='Kate';


SELECT * FROM sql_bootcamp.student


-- print all where major is not biology
SELECT * 
FROM sql_bootcamp.student
WHERE major <> 'Biology';
-- results are somewhat astonishing
-- the major with null is also not printed

SELECT * 
FROM sql_bootcamp.student
WHERE student_id <> 1;

-- multiple conditions

SELECT * FROM sql_bootcamp.student
WHERE name IN ('Shankii','Kate','Mike'); 


SELECT * FROM sql_bootcamp.student
WHERE name IN ('Shankii','Kate','Mike') AND major in ("Biology","Sociology");