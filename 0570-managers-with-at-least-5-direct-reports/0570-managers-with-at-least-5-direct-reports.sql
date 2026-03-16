# Write your MySQL query statement below
with five_report_mgers as (
    select managerId
    from Employee
    group by managerId
    having count(managerId)>=5
)
select name
from Employee e
join five_report_mgers f 
on e.id = f.managerId
