WITH monthly_summary AS (
    SELECT
        CAST(strftime('%Y', order_date) AS INTEGER) AS year,
        CAST(strftime('%m', order_date) AS INTEGER) AS month,
        strftime('%Y-%m', order_date)               AS year_month,
        SUM(amount)                                 AS total_revenue,
        COUNT(DISTINCT order_id)                    AS order_volume,
        ROUND(AVG(amount), 2)                       AS avg_order_value
    FROM orders
    GROUP BY year, month, year_month
),
with_growth AS (
    SELECT
        *,
        ROUND(
            (total_revenue - LAG(total_revenue) OVER (ORDER BY year, month)) 
            / NULLIF(LAG(total_revenue) OVER (ORDER BY year, month), 0) * 100, 2
        ) AS mom_revenue_growth_pct,
        SUM(total_revenue) OVER (ORDER BY year, month) AS cumulative_revenue
    FROM monthly_summary
)
SELECT
    year,
    month,
    year_month,
    total_revenue,
    order_volume,
    avg_order_value,
    mom_revenue_growth_pct,
    cumulative_revenue,
    RANK() OVER (ORDER BY total_revenue DESC) AS revenue_rank
FROM with_growth
ORDER BY year, month;
