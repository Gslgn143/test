with payments as (
    select
        id as payment_id,
        orderid,
        paymentmethod,
        status,
        amount,
        created
    from raw1.stripe.payment
)
select * from payments