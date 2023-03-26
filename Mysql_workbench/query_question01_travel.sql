
select * from  travel
group by city1, city2
having count(*) = 1
order by price desc
