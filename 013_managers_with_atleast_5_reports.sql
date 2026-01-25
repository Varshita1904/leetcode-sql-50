with cte as(select e1.managerId, e2.name, count(*) as no
from Employee e1 inner join 
Employee e2
on e1.managerId = e2.id
group by e1.managerId, e2.name)

select name
from cte
where no>=5 
