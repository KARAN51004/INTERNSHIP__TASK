
CREATE INDEX IF NOT EXISTS idx_orders_purchase_date
ON orders(order_purchase_timestamp);