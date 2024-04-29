{{ config(order=1) }}
with source_listings as (
    select * from {{source('listings_bronze','listings_bronze')}}
)
select * from source_listings

