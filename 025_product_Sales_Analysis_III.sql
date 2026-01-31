with cte as
(select product_id, min(year) as first_year 
from Sales group by product_id)

select cte.product_id, first_year, quantity, price
from cte join Sales
on cte.product_id=Sales.product_id
and cte.first_year=Sales.year
