{{config(order=5)}}
with source_calendar_silver as (
    select * from {{ source('calendar_silver', 'calendar_silver') }}
),

final as (
  SELECT weekday, COUNT(weekday) as availability  
  FROM(
    SELECT CASE
      WHEN(extract(dow from date)=0) THEN 'domingo'
      WHEN(extract(dow from date)=1) THEN 'segunda-feira'
      WHEN(extract(dow from date)=2) THEN 'terca-feira'
      WHEN(extract(dow from date)=3) THEN 'quarta-feira'
      WHEN(extract(dow from date)=4) THEN 'quinta-feira'
      WHEN(extract(dow from date)=5) THEN 'sexta-feira'
      WHEN(extract(dow from date)=6) THEN 'sabado'
      END AS weekday
    FROM source_calendar_silver
    )
    GROUP BY weekday
)
select * from final