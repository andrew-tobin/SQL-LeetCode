# Write your MySQL query statement below
select w1.id
from Weather as w1 
    join 
        (select id,
        temperature as yday_temp,
        date_add(recordDate, interval +1 day) as shifted_date
        from Weather)
        as w2 
    on w1.recordDate=w2.shifted_date
 where w2.yday_temp < w1.temperature