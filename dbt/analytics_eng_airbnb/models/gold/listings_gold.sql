with source_listings_info as (
    select * from {{source('listings_silver','listings_silver')}}
),
final as
(
    select *
    from listings_silver
)


select * from final