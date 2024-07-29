-- CALCUALTED THE TOTAL REVENUE GENERATED FROM PIZZA SALES.

SELECT 
    ROUND(SUM(orders_details.quantiy * pizzas.price),
            2) AS total_sales
FROM
    orders_details
        JOIN
    pizzas ON pizzas.pizza_id = orders_details.pizza_id
