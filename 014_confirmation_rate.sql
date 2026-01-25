WITH total as (
select s.user_id, count(*) as no 
from Signups s left join
Confirmations c
on s.user_id=c.user_id
group by user_id),

confirm as (
select s.user_id, count(*) as num 
from Signups s left join
Confirmations c
on s.user_id=c.user_id 
group by user_id, action
having action="confirmed"
)

select total.user_id, 
round((coalesce(num,0)/no),2)
as confirmation_rate 
from total left join confirm
on total.user_id=confirm.user_id
