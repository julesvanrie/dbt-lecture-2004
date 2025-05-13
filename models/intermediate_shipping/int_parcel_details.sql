select
    *

from
    {{ ref('stg_raw__parcel') }}
join
    {{ ref('stg_raw__parcel_product') }}
using
    (parcel_id)

