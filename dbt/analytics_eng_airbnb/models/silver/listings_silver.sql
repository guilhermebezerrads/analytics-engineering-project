with source_listings_info as (
    select * from {{source('listings_bronze','listings_bronze')}}
),
final as
(
    select *
    from listings_bronze
)


select * from final