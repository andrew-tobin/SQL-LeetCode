# Write your MySQL query statement below
with managers as (
    select
    reports_to as mger,
    round(avg(age)) as average_age,
    count(employee_id) as reports_count
    from Employees
    where reports_to is not null
    group by reports_to
)

select 
mger as employee_id,
name,
reports_count,
average_age
from Employees e inner join managers m on e.employee_id = m.mger
order by employee_id