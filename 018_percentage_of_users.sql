select r.contest_id, 
round(coalesce((count(r.user_id)*100)/(select count(*) from Users),0),2)
as percentage
FROM register r
group by r.contest_id
order by percentage desc, contest_id asc
