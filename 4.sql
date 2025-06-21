-- Identify the most common pizza size ordered.

SELECT pizzas.size, count(orders_details.order_detail_id) as order_count
FROM pizzas JOIN orders_details
on orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizzas.size ORDER BY order_count desc limit 1;