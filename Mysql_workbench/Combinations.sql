
create table country(countryName varchar(100));

insert into country values('India'),('Australia'),('NZ');

select * from country;

'''
CREATE TEMPORARY TABLE a SELECT * FROM country;
CREATE TEMPORARY TABLE b SELECT * FROM country;
'''

'''
select * from (select a.CountryName as a1, b.countryName as b1 from a,b where a.countryName <> b.countryName) k
group by a1,b1
having count(*)=1;
'''

SELECT a.countryName as country1, b.countryName as country2
FROM country a
JOIN country b
ON a.countryName < b.countryName


