-- Determine the top 3 most ordered pizza types based on revenue.

SELECT pizza_types.name , round(sum(orders_details.quantity * pizzas.price ), 0)as revenue
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_details
ON pizzas.pizza_id = orders_details.pizza_id
GROUP BY pizza_types.name order by revenue desc limit 3;




