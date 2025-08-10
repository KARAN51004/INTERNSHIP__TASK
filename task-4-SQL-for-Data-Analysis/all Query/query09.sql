CREATE VIEW IF NOT EXISTS top_50_categories AS
SELECT p.product_category_name,
       ROUND(SUM(oi.price), 2) AS total_revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 50;

SELECT * FROM top_50_categories;
