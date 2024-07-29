-- 	GROUP THE ORDERS BY DATE AND CALCULATE THE AVERAGE NUMBER OF PIZZA ORDERED PER DAY. 

SELECT 
    ROUND(AVG(quantity), 0) AS avg_pizza_ordered_per_day
FROM
    (SELECT 
        orders.order_date, SUM(orders_details.quantiy) AS quantity
    FROM
        orders
    JOIN orders_details ON orders.order_id = orders_details.order_id
    GROUP BY orders.order_date) AS order_quantity;