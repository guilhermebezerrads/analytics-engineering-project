{{ config(order=1) }}
with source_listings as (
    select * from {{source('listings_bronze','listings_bronze')}}
),

source_listings_cleaned as (
    select 
        id,
        name,
        host_id,
        host_name,
        neighbourhood,
        room_type,
        CAST(REGEXP_REPLACE(REPLACE(price, ',', ''), '\$', '') AS FLOAT) as price,
        number_of_reviews,
        last_review,
        reviews_per_month,
        calculated_host_listings_count,
        availability_365,
        number_of_reviews_ltm
    from source_listings
),

final as (
    select 
        id,
        name,
        host_id,
        host_name,
        neighbourhood,
        room_type,
        price,
        number_of_reviews,
        last_review,
        reviews_per_month,
        calculated_host_listings_count,
        availability_365,
        number_of_reviews_ltm
    from source_listings_cleaned)

select * from final
