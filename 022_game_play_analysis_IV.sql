with cte as(
    select player_id, min(event_date) as first
    from Activity 
    group by player_id
)

select round(count(*)/
(select count(distinct player_id) from Activity),2)
as fraction
from cte join Activity a2
on cte.player_id=a2.player_id
and a2.event_date = DATE_ADD(cte.first, INTERVAL 1 DAY)
