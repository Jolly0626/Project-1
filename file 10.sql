-- DETERMINE THE TOP 3 MOST ORDERED PIZZA TYPES BASED ON REVENUE. 

select pizza_types.name,
sum(orders_details.quantiy * pizzas.price) as revenue
from pizza_types join pizzas
on pizzas.pizza_type_id = pizza_types.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id 
group by pizza_types.name 
order by revenue desc limit 3;