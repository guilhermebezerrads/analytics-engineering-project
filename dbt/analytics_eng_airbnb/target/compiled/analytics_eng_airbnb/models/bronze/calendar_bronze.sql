
with source_calendar as (
    select * from "myDBProject"."public"."calendar_raw"
)
select * from source_calendar