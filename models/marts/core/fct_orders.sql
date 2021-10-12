with customers as (
    select * from {{ref('stg_customers')}}
),

orders as (
    select * from {{ref('stg_orders')}}
),

payments as (
    select * from {{ref('stg_payments')}}
),

final as (

    select
        customers.customer_id,
        orders.order_id,
        payments.amount

    from customers
    left join orders using (customer_id)
    left join payments using (order_id)

)

select * from final