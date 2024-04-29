{{ config(order=1) }}
with source_calendar as (
    select * from {{source('calendar_bronze','calendar_bronze')}}
)
select  listing_id,
        CAST(date AS DATE) AS date,
        CASE 
            WHEN available = 't' THEN TRUE
            WHEN available = 'f' THEN FALSE
            ELSE NULL 
        END AS available,
        CAST(REGEXP_REPLACE(REPLACE(price, ',', ''), '\$', '') AS FLOAT) as price,
        CAST(minimum_nights AS int) as minimum_nights,
        CAST(maximum_nights AS int) as maximum_nights
from source_calendar

