

/* 
Instead of writing the primary key number, let it auto increment
keep name default as shankii
major as unique
*/

DROP TABLE sql_bootcamp.student_03;

CREATE TABLE sql_bootcamp.student_03(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) DEFAULT "Shankii",
    major VARCHAR(20) UNIQUE NOT NULL
);


DESCRIBE sql_bootcamp.student_03


-- auto increment starts from index 01
INSERT INTO sql_bootcamp.student_03(name,major) VALUES('Jack','Biology');

INSERT INTO sql_bootcamp.student_03(name,major) VALUES('Kate','Sociology');

INSERT INTO sql_bootcamp.student_03(major) VALUES('Chemistry');

 INSERT INTO sql_bootcamp.student_03 VALUES (5,'sanket','Sql') 
 -- by default name will be written as shankii

INSERT INTO sql_bootcamp.student_03(name,major) VALUES('Jack','Bio');

INSERT INTO sql_bootcamp.student_03(name,major)
 VALUES('Mike','Computer Science');

SELECT * FROM sql_bootcamp.student_03;
 