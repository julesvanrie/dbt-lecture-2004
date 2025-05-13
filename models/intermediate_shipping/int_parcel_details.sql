select
    *
    , date_diff(date_delivery, date_purchase, DAY) as time_to_deliver
    , if(date_diff(date_delivery, date_purchase, DAY) > 5, 1, 0) as delayed

from
    {{ ref('stg_raw__parcel') }}
join
    {{ ref('stg_raw__parcel_product') }}
using
    (parcel_id)

