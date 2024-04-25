
  
    

  create  table "myDBProject"."public"."calendar_bronze__dbt_tmp"
  
  
    as
  
  (
    
with source_calendar as (
    select * from "myDBProject"."public"."calendar_raw"
)
select * from source_calendar
  );
  