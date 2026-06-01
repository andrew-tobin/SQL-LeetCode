# Write your MySQL query statement below
select 
employee_id,
case
    when count(department_id) = 1 
    then max(department_id)
    else max(case when primary_flag='Y' then department_id else null end)
    end as department_id

from Employee
group by employee_id