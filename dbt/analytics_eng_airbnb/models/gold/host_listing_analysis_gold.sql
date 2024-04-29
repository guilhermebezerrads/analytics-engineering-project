{{ config(order=7) }}
WITH source_listings_host AS (
    SELECT host_id, COUNT(*) AS total_listings, AVG(price) AS avg_listing_price
    FROM {{ source('listings_silver', 'listings_silver') }}
    GROUP BY host_id
)

SELECT * FROM source_listings;
