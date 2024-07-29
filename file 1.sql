-- RETRIEVE THE TOTAL NO.OF ORDERS PLACED.

SELECT 
    COUNT(order_id) AS total_orders
FROM
    orders;