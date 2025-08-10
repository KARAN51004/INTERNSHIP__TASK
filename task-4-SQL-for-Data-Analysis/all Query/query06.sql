SELECT c.customer_unique_id,
       o.order_id,
       o.order_status
FROM customers c
LEFT JOIN orders o
    ON c.customer_id = o.customer_id
ORDER BY c.customer_unique_id
LIMIT 200;