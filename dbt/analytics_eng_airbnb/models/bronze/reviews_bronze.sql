{{ config(order=1) }}
with source_reviews as (
    select * from {{source('reviews_raw','reviews_raw')}}
)
select * from source_reviews

