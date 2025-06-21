-- Join the necessary tables to find the total quantity of each pizza category ordered.

SELECT pizza_types.category , sum(orders_details.quantity) as total_quantity
FROM pizza_types JOIN pizzas
ON pizza_types.pizza_type_id = pizzas.pizza_type_id
JOIN orders_details
ON orders_details.pizza_id = pizzas.pizza_id
GROUP BY pizza_types.category order by total_quantity desc; 

