

-- deleting entries in database when they have foreign keys associated to them

/*
Say if we delete the scott from the the databse, but the manager id is also there.
Which is the foreign key, so issus will be there in the database.

SO here comes two things
-> on delete set null -> will set the foreign key as NULL
-> on delete cascade -> will delete the entire database of that foreign key appears anywhere

*/

/*
-- This is how we crated the branch table:

CREATE TABLE sql_bootcamp.sql_bootcamp.branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY (mgr_id) REFERENCES sql_bootcamp.employee(emp_id) ON DELETE SET NULL
);

*/

-- lets delete scott things from the database
DELETE FROM sql_bootcamp.employee
WHERE emp_id = 102;

-- now lets see the branch thing
SELECT * FROM sql_bootcamp.branch
-- scrantons mng_id got set to null

SELECT * FROM sql_bootcamp.employee
-- super_id also gets set to NULL: snce super id is also an foreign key

 

-- on delete cascade: means any of the foreign_key stuff gets deleted: delete the entire row

DELETE FROM sql_bootcamp.branch
WHERE branch_id = 2;

-- now branch is the foreign key in the branch supplier
-- lets see the branch_ids wit 2 rows get delete or NOT
SELECT * FROM sql_bootcamp.branch_supplier


/*
When to use on delete set NULL and on delete cascade: means

when the foreign key isn't that importan, like even after removing that foreign key we can find the info, we will use on delete set Null

else

if the foreign key acts as the crucial or as also primary key:
we will use on delete cascasde

*/