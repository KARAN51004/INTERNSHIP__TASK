SELECT o.order_id,
       o.order_purchase_timestamp,
       c.customer_unique_id,
       op.payment_type,
       op.payment_value
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id
INNER JOIN order_payments op
    ON o.order_id = op.order_id
ORDER BY o.order_purchase_timestamp DESC
LIMIT 200;
