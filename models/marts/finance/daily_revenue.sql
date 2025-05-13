select
    date_date
    ,total_revenue

from
    {{ ref('int_daily_sales') }}

order by
    date_date desc
