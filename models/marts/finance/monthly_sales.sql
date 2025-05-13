with tmp as (
    select
        date_trunc(date_date, month) as year_month
        ,total_revenue

    from
        {{ ref('int_daily_sales') }}
)
select
    year_month
    ,sum(total_revenue) as total_revenue

from
    tmp

group by
    year_month

order by
    year_month desc
