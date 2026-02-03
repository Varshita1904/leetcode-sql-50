(select u.name as results
from MovieRating m join Users u
on m.user_id=u.user_id
group by u.name
order by count(*) desc, u.name asc
limit 1)

union all

(select mo.title as results from
MovieRating m join Movies mo
on m.movie_id=mo.movie_id 
and year(created_at)=2020 and month(created_at)=02
group by mo.title
order by avg(rating) desc, mo.title asc
limit 1)
