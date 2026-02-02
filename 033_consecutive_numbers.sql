select distinct ConsecutiveNums from 
(select case when (num=LAG(num) over (order by id) and 
num=lead(num) over (order by id)) then num end as ConsecutiveNums
from Logs)t
where ConsecutiveNums is not null
