with payments as (

    select
        orderid as order_id,
        amount
    from TEST_DATABASE.stripe.payment

)

select * from payments