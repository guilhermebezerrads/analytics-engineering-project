{{ config(order=1) }}
with source_calendar as (
    select * from {{source('calendar_bronze','calendar_bronze')}}
)
select  listing_id,
        date,
        available,
        (REGEXP_REPLACE(price, '\$', '') AS FLOAT) as price,
        minimum_nights,
        maximum_nights
from source_calendar
