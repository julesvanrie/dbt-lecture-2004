select
    *

from
    {{ ref('stg_raw__stock') }}

where
    color LIKE 'PU'