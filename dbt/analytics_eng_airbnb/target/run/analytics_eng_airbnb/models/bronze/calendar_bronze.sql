
  
    

  create  table "airbnb_project"."public"."calendar_bronze__dbt_tmp"
  
  
    as
  
  (
    
with source_calendar as (
    select * from "airbnb_project"."public"."calendar_raw"
)
select * from source_calendar
  );
  