with raw_data as (
    select 
    distinct city,state,region
    from
    {{ ref('staging_dmart_raw') }}
    order by city
)
select
row_number() over(order by city) as city_id,
city,
region,
state
from raw_data
