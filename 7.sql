-- Determine the distribution of orders by hour of the day.

SELECT hour(order_time) as hour , count(order_id) as order_count from orders
GROUP BY hour(order_time);