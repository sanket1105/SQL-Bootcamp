
-- sql_bootcamp.EMPLOYEE TABLE


CREATE TABLE sql_bootcamp.sql_bootcamp.employee (
  emp_id INT PRIMARY KEY,
  first_name VARCHAR(40),
  last_name VARCHAR(40),
  birth_day DATE,
  sex VARCHAR(1),
  salary INT,
  super_id INT,
  branch_id INT
  -- though super_id and branch_id are foreign keys, but the sql_bootcamp.employee table isn't created yet
  -- so can't write foreign key as such
);


-- BRANCH TABLE
-- here, mgr_id is foreign key to emp_id

CREATE TABLE sql_bootcamp.sql_bootcamp.branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY (mgr_id) REFERENCES sql_bootcamp.employee(emp_id) ON DELETE SET NULL
);


-- now super_id and branch_id in sql_bootcamp.employee table as foreign keys

ALTER TABLE sql_bootcamp.sql_bootcamp.employee
ADD FOREIGN KEY(branch_id)
REFERENCES sql_bootcamp.branch(branch_id)
ON DELETE SET NULL;


ALTER TABLE sql_bootcamp.sql_bootcamp.employee
ADD FOREIGN KEY(super_id)
REFERENCES sql_bootcamp.employee(emp_id)
ON DELETE SET NULL;


-- sql_bootcamp.Client Table
CREATE TABLE sql_bootcamp.sql_bootcamp.client(
    sql_bootcamp.client_id INT PRIMARY KEY,
    sql_bootcamp.client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY(branch_id) REFERENCES sql_bootcamp.branch(branch_id) ON DELETE SET NULL
);

-- Works with table

CREATE TABLE sql_bootcamp.sql_bootcamp.works_with(
    emp_id INT,
    sql_bootcamp.client_id INT,
    total_sales INT,
    PRIMARY KEY(emp_id, sql_bootcamp.client_id),
    -- emp_id and sql_bootcamp.client_id are composite primary keys here
    -- so kinda declare foreign keys here
    FOREIGN KEY(emp_id) REFERENCES sql_bootcamp.employee(emp_id) ON DELETE CASCADE,
    FOREIGN KEY(sql_bootcamp.client_id) REFERENCES sql_bootcamp.client(sql_bootcamp.client_id) ON DELETE CASCADE
);

-- sql_bootcamp.Branch_supplier table

CREATE TABLE sql_bootcamp.branch_supplier(
    branch_id INT,
    supplier_name VARCHAR(40),
    supply_type VARCHAR(40),
    PRIMARY KEY(branch_id,supplier_name), 
    FOREIGN KEY(branch_id) REFERENCES sql_bootcamp.branch(branch_id) ON DELETE CASCADE
);



-- Inserting values into the table

-- Corporate

INSERT INTO sql_bootcamp.employee VALUES(100, 'David', 'Wallace', '1967-11-17', 'M', 250000, NULL, NULL);
-- putting branch_id as NULL : since its a foreign key and sql_bootcamp.branch hasn't been created yet

INSERT INTO sql_bootcamp.branch VALUES(1, 'Corporate', 100, '2006-02-09');
-- Since mgr_id is a foreign key to emp_id but we allready defined emp_id 100,  
-- so directly put the mgr_id as 100
 
UPDATE sql_bootcamp.employee
SET branch_id = 1
WHERE emp_id = 100;

INSERT INTO sql_bootcamp.employee VALUES(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 1);


-- Scranton

INSERT INTO sql_bootcamp.employee VALUES(102, 'Michael', 'Scott', '1964-03-15', 'M', 75000, 100, NULL);

INSERT INTO sql_bootcamp.branch VALUES(2, 'Scranton', 102, '1992-04-06');

UPDATE sql_bootcamp.employee
SET branch_id = 2
WHERE emp_id = 102;

INSERT INTO sql_bootcamp.employee VALUES(103, 'Angela', 'Martin', '1971-06-25', 'F', 63000, 102, 2);
INSERT INTO sql_bootcamp.employee VALUES(104, 'Kelly', 'Kapoor', '1980-02-05', 'F', 55000, 102, 2);
INSERT INTO sql_bootcamp.employee VALUES(105, 'Stanley', 'Hudson', '1958-02-19', 'M', 69000, 102, 2);


-- Stamford 
INSERT INTO sql_bootcamp.employee VALUES(106, 'Josh', 'Porter', '1969-09-05', 'M', 78000, 100, NULL);

INSERT INTO sql_bootcamp.branch VALUES(3, 'Stamford', 106, '1998-02-13');

UPDATE sql_bootcamp.employee
SET branch_id = 3
WHERE emp_id = 106;

INSERT INTO sql_bootcamp.employee VALUES(107, 'Andy', 'Bernard', '1973-07-22', 'M', 65000, 106, 3);
INSERT INTO sql_bootcamp.employee VALUES(108, 'Jim', 'Halpert', '1978-10-01', 'M', 71000, 106, 3);


-- BRANCH SUPPLIER
INSERT INTO sql_bootcamp.branch_supplier VALUES(2, 'Hammer Mill', 'Paper');
INSERT INTO sql_bootcamp.branch_supplier VALUES(2, 'Uni-ball', 'Writing Utensils');
INSERT INTO sql_bootcamp.branch_supplier VALUES(3, 'Patriot Paper', 'Paper');
INSERT INTO sql_bootcamp.branch_supplier VALUES(2, 'J.T. Forms & Labels', 'Custom Forms');
INSERT INTO sql_bootcamp.branch_supplier VALUES(3, 'Uni-ball', 'Writing Utensils');
INSERT INTO sql_bootcamp.branch_supplier VALUES(3, 'Hammer Mill', 'Paper');
INSERT INTO sql_bootcamp.branch_supplier VALUES(3, 'Stamford Lables', 'Custom Forms');

-- sql_bootcamp.CLIENT
INSERT INTO sql_bootcamp.client VALUES(400, 'Dunmore Highschool', 2);
INSERT INTO sql_bootcamp.client VALUES(401, 'Lackawana Country', 2);
INSERT INTO sql_bootcamp.client VALUES(402, 'FedEx', 3);
INSERT INTO sql_bootcamp.client VALUES(403, 'John Daly Law, LLC', 3);
INSERT INTO sql_bootcamp.client VALUES(404, 'Scranton Whitepages', 2);
INSERT INTO sql_bootcamp.client VALUES(405, 'Times Newspaper', 3);
INSERT INTO sql_bootcamp.client VALUES(406, 'FedEx', 2);

-- sql_bootcamp.WORKS_WITH
INSERT INTO sql_bootcamp.works_with VALUES(105, 400, 55000);
INSERT INTO sql_bootcamp.works_with VALUES(102, 401, 267000);
INSERT INTO sql_bootcamp.works_with VALUES(108, 402, 22500);
INSERT INTO sql_bootcamp.works_with VALUES(107, 403, 5000);
INSERT INTO sql_bootcamp.works_with VALUES(108, 403, 12000);
INSERT INTO sql_bootcamp.works_with VALUES(105, 404, 33000);
INSERT INTO sql_bootcamp.works_with VALUES(107, 405, 26000);
INSERT INTO sql_bootcamp.works_with VALUES(102, 406, 15000);
INSERT INTO sql_bootcamp.works_with VALUES(105, 406, 130000);



SELECT * FROM sql_bootcamp.branch_supplier 