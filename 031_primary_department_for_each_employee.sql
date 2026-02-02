with cte as(
    select employee_id, department_id,primary_flag,
count(*) over (partition by employee_id) as c
from Employee)

select employee_id, department_id
from cte
where (c=1 and primary_flag="N") or (c>1 and primary_flag="Y")
