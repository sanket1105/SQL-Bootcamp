

/* 
Name cannot be null no matter what
Major should be unique 
*/
DROP TABLE sql_bootcamp.student_02;

CREATE TABLE sql_bootcamp.student_02(
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) UNIQUE
);


INSERT INTO sql_bootcamp.student_02 VALUES(1,'Jack','Biology');

INSERT INTO sql_bootcamp.student_02 VALUES(2,'Kate','Sociology');

INSERT INTO sql_bootcamp.student_02 VALUES(3,NULL,'Chemistry');
-- here error: since name cannot be null

INSERT INTO sql_bootcamp.student_02 VALUES(4,'Jack','Biology');
-- error: major should be unique: repeated twice

INSERT INTO sql_bootcamp.student_02 VALUES(5,'Mike','Computer Science');

SELECT * FROM sql_bootcamp.student_02;
--- so whereever error comes: will not show that entry in the table
 