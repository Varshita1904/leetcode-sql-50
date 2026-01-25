with cte as(select p.product_id, units*price as no, u.units
from  Prices p left join
UnitsSold u
on u.product_id=p.product_id
and (u.purchase_date between p.start_date and p.end_date))

select product_id, coalesce(round(sum(no)/sum(units),2),0) as average_price
from cte 
group by product_id
