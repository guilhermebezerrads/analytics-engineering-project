{{ config(order=1) }}
with source_reviews as (
    select * from {{source('reviews_bronze','reviews_bronze')}}
)
select * from source_reviews

