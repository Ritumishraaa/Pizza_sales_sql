-- Group the orders by date and calculate the average number of pizzas ordered per day.

select round(avg(quantity) , 0) as avg_pizza_orders from 
(SELECT orders.Order_date , sum(orders_details.quantity) as quantity
FROM orders JOIN orders_details
ON orders.Order_id = orders_details.Order_id
group by orders.Order_date) as order_quantity;