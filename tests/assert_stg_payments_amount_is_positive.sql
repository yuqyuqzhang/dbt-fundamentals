with

payment as (
    select * from {{ ref('stg_payments')}}
)

select 
    order_id,
    sum(amount) as total_amount
from stg_payments
group by order_id
having total_amount <0