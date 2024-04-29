{{ config(order=3) }}
with source_listings_prices as (
    select * from {{ source('listings_silver', 'listings_silver') }}
),

final as (
    SELECT DISTINCT neighbourhood_cleansed as neighbourhood,
          AVG(price) as avg_price
    FROM listings_silver
    GROUP BY neighbourhood_cleansed;
    ORDER BY avg_price DESC
)

select * from final