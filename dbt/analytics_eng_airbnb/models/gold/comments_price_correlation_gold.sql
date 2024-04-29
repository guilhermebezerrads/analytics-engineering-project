{{ config(order=6) }}
WITH source_listings_correlation AS (
    SELECT * FROM {{ source('listings_silver', 'listings_silver') }}
),

final AS (
    SELECT 
        id AS listing_id,
        number_of_reviews,
        price
    FROM source_listings
)

SELECT * FROM final;
