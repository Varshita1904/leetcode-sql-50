select Signups.user_id, 
round(coalesce(sum(case when action="confirmed" then 1 else 0 end),0)/count(*),2) as confirmation_rate
from Signups left join Confirmations
on Signups.user_id=Confirmations.user_id
group by Signups.user_id
