select b.id
from Weather a 
join Weather b
on a.recordDate=b.recordDate - Interval 1 day 
and a.temperature<b.temperature
