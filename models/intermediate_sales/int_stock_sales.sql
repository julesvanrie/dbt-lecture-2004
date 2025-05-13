select
    *

from 
    {{ ref("stg_raw__sales") }} as sales
join 
    {{ ref('stg_raw__stock') }} as stock
using
    (pdt_id)

