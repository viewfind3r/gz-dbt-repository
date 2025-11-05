select 
    products_id,
    quantity,
    purchase_price,
    quantity*purchase_price AS purchase_cost,
    revenue,
    revenue-(quantity*purchase_price) AS margin
from {{ ref('stg_raw__sales') }}
Join {{ ref('stg_raw__product') }}
Using (products_id)
