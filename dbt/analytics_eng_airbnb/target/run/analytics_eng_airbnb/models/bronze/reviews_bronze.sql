
  
    

  create  table "airbnb_project"."public"."reviews_bronze__dbt_tmp"
  
  
    as
  
  (
    
with source_reviews as (
    select * from "airbnb_project"."public"."reviews_raw"
)
select * from source_reviews
  );
  