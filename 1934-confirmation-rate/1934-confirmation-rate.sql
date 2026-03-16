# Write your MySQL query statement below
select
    x.user_id,
    round((x.confirms / x.requests),2) as confirmation_rate
from
(
Select 
    s.user_id,
    count(*) as requests,
    count(case when action = 'confirmed' then 1 end) as confirms
From Signups s
Left Join Confirmations c
    On s.user_id = c.user_id
Group by user_id) x