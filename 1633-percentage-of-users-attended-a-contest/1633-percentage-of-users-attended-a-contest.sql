# Write your MySQL query statement below
select 
    contest_id,
    round(100*count(r.user_id) / max(x.user_count),2) as percentage
from Register r
join Users u on r.user_id = u.user_id
join (select count(*) as user_count from Users) x
group by contest_id
order by percentage desc, contest_id asc