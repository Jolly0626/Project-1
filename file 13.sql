-- DETERMINE THE TOP 3 MOST ORDERED PIZZA TYPES BASED ON REVENUE FOR EACH PIZZA CATEGORY . 

select name , revenue from 
(select category, name ,revenue ,
rank() over (partition by category order by revenue desc)
as rn 
from 
(select pizza_types.category,pizza_types.name,
sum((orders_details.quantiy) * pizzas.price) as revenue
from pizza_types join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.category,pizza_types.name) as a) as b
where rn <= 3;