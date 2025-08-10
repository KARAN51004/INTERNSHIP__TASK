SELECT p.product_id,
       p.product_category_name,
       ROUND(AVG(oi.price),2) AS avg_sold_price
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_id
HAVING AVG(oi.price) > (SELECT AVG(price) FROM order_items)
ORDER BY avg_sold_price DESC;
