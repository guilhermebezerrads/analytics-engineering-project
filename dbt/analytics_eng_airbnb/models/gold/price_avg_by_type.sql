{{ config(order=4) }}
with source_listings_prices as (
    select * from {{ source('listings_silver', 'listings_silver') }}
),

final as (
    SELECT DISTINCT room_type,
          AVG(price) as avg_price
    FROM listings_silver
    GROUP BY property_type;
    ORDER BY avg_price DESC
)

select * from final