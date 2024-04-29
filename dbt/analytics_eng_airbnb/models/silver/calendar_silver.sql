{{ config(order=1) }}
with source_calendar as (
    select * from {{source('calendar_bronze','calendar_bronze')}}
)
select * from source_calendar
