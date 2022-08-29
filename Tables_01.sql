
DROP TABLE sql_bootcamp.student;

CREATE TABLE sql_bootcamp.student(
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(20),
    major VARCHAR(20)
);

SELECT * FROM sql_bootcamp.student;

-- add gpa column
ALTER TABLE sql_bootcamp.student ADD gpa DECIMAL(3,2);

DESCRIBE sql_bootcamp.student

ALTER TABLE sql_bootcamp.student DROP COLUMN gpa;

DESCRIBE sql_bootcamp.student

-- inserting data
Select * from sql_bootcamp.student;

INSERT INTO sql_bootcamp.student VALUES(1,'Jack','Biology');

INSERT INTO sql_bootcamp.student VALUES(2,'Kate','Sociology');

-- say if the student has no major, so selected column entries must be inserted
INSERT INTO sql_bootcamp.student(student_id,name) VALUES(3,'Claire');
 -- since we didnt show any major, the major will be displayed as NULL 

INSERT INTO sql_bootcamp.student VALUES(4,'Jack','Biology');
INSERT INTO sql_bootcamp.student VALUES(5,'Mike','Computer Science');

SELECT * FROM sql_bootcamp.student;

-- if you repeat the primary key, you won't be able to repeat it, since the record with that key already EXISTS
 
INSERT INTO sql_bootcamp.student VALUES(5,'sanket','sql')