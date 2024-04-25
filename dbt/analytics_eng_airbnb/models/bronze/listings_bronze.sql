with source_listings_info as (
    select * from {{source('listings','listings')}}
),
final as
(
    select *
    from listings
)


select * from final