
  
    

  create  table "myDBProject"."public"."reviews_bronze__dbt_tmp"
  
  
    as
  
  (
    
with source_reviews as (
    select * from "myDBProject"."public"."reviews_raw"
)
select * from source_reviews
  );
  