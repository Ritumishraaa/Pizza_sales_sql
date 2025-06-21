-- Analyze the cumulative revenue generated over time.


select order_date,
sum(revenue) over (order by order_date) as cum_revenue
from
(SELECT orders.Order_date , sum(orders_details.quantity * pizzas.price) as revenue
from orders_details join pizzas
on orders_details.pizza_id = pizzas.pizza_id
join orders
on orders.order_id = orders_details.Order_id
group by orders.Order_date) as sales;




