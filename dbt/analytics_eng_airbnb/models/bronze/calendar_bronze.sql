{{ config(order=1) }}
with source_calendar as (
    select * from {{source('calendar_raw','calendar_raw')}}
)
select * from source_calendar
