with cte as(select *
from MyNumbers 
group by num
having count(*)=1)

select max(num) as num 
from cte
