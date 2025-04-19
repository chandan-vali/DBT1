select
r.order_id,
c.customer_id,
cat.category_id,
cit.city_id,
r.order_date,
r.sales,
r.discount,
r.profit
from 
{{ ref('staging_dmart_raw') }} r 
left join
{{ ref('dim_customer') }} c 
on r.customer_name=c.customer_name
left join
{{ ref('dim_category') }} cat 
on r.category=cat.category
left join
{{ ref('dim_city') }} cit
on r.city=cit.city