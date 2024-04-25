
  
    

  create  table "myDBProject"."public"."listings_bronze__dbt_tmp"
  
  
    as
  
  (
    
with source_listings as (
    select * from "myDBProject"."public"."listings_raw"
)
select * from source_listings
  );
  