{{ config(order=1) }}
with source_calendar as (
    select * from {{source('calendar_bronze','calendar_bronze')}}
)
select  listing_id,
        CAST(date AS DATE) AS date,
        available,
        CAST(REGEXP_REPLACE(REPLACE(price, ',', ''), '\$', '') AS FLOAT) as price,
        minimum_nights,
        maximum_nights
from source_calendar