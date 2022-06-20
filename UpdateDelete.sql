
-- update and delete the data inside the Dataset
-- change the name of major biology to bio
SELECT * FROM sql_bootcamp.student_03

UPDATE sql_bootcamp.student_03 
SET major = 'Bio'
WHERE major='Biology';
-- if where not written, then all major will be set to bio

UPDATE sql_bootcamp.student_03 
SET major = 'Comp Sci'
WHERE major='Computer Science';


-- with respect to student id
UPDATE sql_bootcamp.student_03 
SET major = 'Comp Sci'
WHERE student_id=2;


UPDATE sql_bootcamp.student_03 
SET major = 'Bio-Chemistry'
WHERE major='Bio' OR major='Chemistry';


UPDATE sql_bootcamp.student_03 
SET major = 'Undecided', name='Shankii'
WHERE student_id=1;




----------------------------------------------------------------
-- Delete in sql

DELETE from sql_bootcamp.student_03
where major='Undecided';

DELETE from sql_bootcamp.student_03
where name='Shankii' and major='Bio-Chemistry';

SELECT * FROM sql_bootcamp.student_03
