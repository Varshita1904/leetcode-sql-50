select p.product_name, s.year,s.price
from Product p right join 
Sales s on p.product_id=s.product_id
