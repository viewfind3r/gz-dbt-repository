with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        CAST(ship_cost AS FLOAT64)

    from source
    WHERE shipping_fee=shipping_fee_1
)

select * from renamed