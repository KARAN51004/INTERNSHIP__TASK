# Task 06: Sales Trend Analysis — Monthly Revenue & Order Volume

## Objective
To analyze monthly revenue and order trends, identify growth/decline periods, and provide actionable insights.

## Dataset
- Source: online_sales (orders table)
- Fields used: order_id, order_date, amount, product_id

## Key Metrics
- Total Revenue (per month)
- Order Volume (distinct orders)
- Average Order Value
- Month-over-Month Growth (%)
- Cumulative Revenue
- Revenue Rank (across months)

## How to Run
1. Load `online_sales` table into your SQL environment.
2. Run the `sales_trend_analysis.sql` script.
3. Optional: adjust `WHERE` clause for date ranges.

## Insights
- Peak month: March 2024
- Strongest MoM growth: Feb → Mar 2024 (+XX%)
- Revenue downturn after April 2024 — possible seasonal pattern.
