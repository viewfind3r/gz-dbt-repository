SELECT  
    EXTRACT (MONTH FROM date) AS datemonth,
    ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    clicks AS ads_clicks,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    log_cost,
    ship_cost
FROM {{ ref('finance_campaigns_day') }}
ORDER BY datemonth DESC