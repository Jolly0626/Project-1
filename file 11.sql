-- CALCULATE THE % CONTRIBUTION OF EACH PIZZA TYPE TO TOTAL REVENUE. 

select pizza_types.category,
round(sum(orders_details.quantiy * pizzas.price) / (SELECT 
    ROUND(SUM(orders_details.quantiy * pizzas.price),
            2) AS total_sales
FROM
    orders_details
        JOIN
    pizzas ON pizzas.pizza_id = orders_details.pizza_id) *
    100,2)
    as revenue
from pizza_types
join pizzas
on pizza_types.pizza_type_id = pizzas.pizza_type_id
join orders_details
on orders_details.pizza_id = pizzas.pizza_id
group by pizza_types.category
order by revenue desc