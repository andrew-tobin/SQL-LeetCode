# Write your MySQL query statement below
select 
customer_id,
count(distinct v.visit_id) as count_no_trans

from Visits as v
    left join Transactions as t
    on v.visit_id = t.visit_id
where isnull(t.transaction_id)
group by v.customer_id
