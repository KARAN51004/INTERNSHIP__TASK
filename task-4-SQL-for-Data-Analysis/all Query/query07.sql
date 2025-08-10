SELECT s.seller_id,
       s.seller_zip_code_prefix,
       oi.order_id,
       oi.product_id,
       oi.price
FROM sellers s
LEFT JOIN order_items oi
    ON s.seller_id = oi.seller_id
ORDER BY s.seller_id
LIMIT 200;
