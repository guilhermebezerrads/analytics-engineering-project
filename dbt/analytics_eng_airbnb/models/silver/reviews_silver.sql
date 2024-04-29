{{ config(order=1) }}
with source_reviews as (
    select * from {{source('reviews_bronze','reviews_bronze')}}
),

source_reviews_cleaned as (
    select 
        id,
        listing_id,
        CAST(date AS DATE) AS date,
        reviewer_id,
        reviewer_name, 
        REPLACE(comments, '<br/>', ' ') as comments
    from source_reviews
),

final as (
    select 
        id,
        listing_id,
        date,
        reviewer_id,
        reviewer_name, 
        comments
    from source_reviews_cleaned)

select * from final
