
  
    

  create  table "airbnb_project"."public"."listings_bronze__dbt_tmp"
  
  
    as
  
  (
    
with source_listings as (
    select * from "airbnb_project"."public"."listings_raw"
)
select * from source_listings
  );
  