{{ config(order=1) }}
with source_listings as (
    select * from {{source('listings_raw','listings_raw')}}
)
select * from source_listings

