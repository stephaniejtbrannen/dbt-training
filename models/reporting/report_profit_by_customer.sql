select
    o.customerid,
    o.segment,
    o.country,
    sum(orderprofit) as profit
from {{ ref('stg_orders') }} as o
group by 
    o.customerid,
    o.segment,
    o.country

