with source as (
    select * from {{ source('jaffle_shop', 'raworders') }}
),
renamed as (
    select
        id as order_id,
        customer as customer_id,
        ordered_at as order_date
    from source
)
select * from renamed