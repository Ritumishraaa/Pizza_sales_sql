-- List the top 5 most ordered pizza types along with their quantities.

Select pizza_types.name , sum(orders_details.quantity) as quantity
from pizza_types JOIN pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by quantity desc limit 5;