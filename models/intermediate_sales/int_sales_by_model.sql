select
    model
    ,sum(qty) as total_qty
    ,sum(qty * price) as total_revenue

from
    {{ ref('int_stock_sales') }}

group by
    model