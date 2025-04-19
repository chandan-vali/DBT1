with raw_data as (
    select 
    distinct category,sub_category
    from
    {{ ref('staging_dmart_raw') }}
    order by category
)
select
row_number() over(order by category) as category_id,
category,
sub_category
from raw_data
