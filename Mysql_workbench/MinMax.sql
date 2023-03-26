
drop table email_ids;

CREATE TABLE email_ids (
  user_id INT,
  personal VARCHAR(40),
  business VARCHAR(40),
  recovery VARCHAR(40)
);

INSERT INTO email_ids VALUES(101,'abc_p.gmail',null,null);
INSERT INTO email_ids VALUES(101,null,'abc_b.gmail',null);
INSERT INTO email_ids VALUES(101,null,null,'abc_r.gmail');

INSERT INTO email_ids VALUES(102,'xyz_p.gmail',null,null);
INSERT INTO email_ids VALUES(102,null,'xyz_b.gmail',null);
INSERT INTO email_ids VALUES(102,null,null,'xyx_r.gmail');

select * from email_ids;

select user_id, min(personal), min(business), min(recovery) 
from email_ids
group by user_id;

select coalesce(personal,business,recovery) from email_ids
group by user_id;