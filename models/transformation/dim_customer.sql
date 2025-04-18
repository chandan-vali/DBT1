{{
    config(
        materialized='view',
        database='dev_db',
        schema='customer'
    )
}}


with raw_data as (
    select 
    distinct customer_name
    from
    {{ ref('staging_dmart_raw') }}
    order by customer_name
)
select
row_number() over(order by customer_name) as customer_id,
customer_name
from raw_data
