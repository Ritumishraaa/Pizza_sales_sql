-- Identify the highest-priced pizza

Select pizza_types.name , pizzas.price
from pizza_types JOIN pizzas
on pizzas.pizza_type_id = pizza_types.pizza_type_id
order by pizzas.price desc limit 1;

