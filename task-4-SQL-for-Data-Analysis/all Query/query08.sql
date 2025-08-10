SELECT payment_type,
       ROUND(AVG(payment_value), 2) AS avg_payment
FROM order_payments
GROUP BY payment_type
ORDER BY avg_payment DESC;
