-- DETERMINE THE DISTRIBUTION OF ORDERS BY HOURS OF THE DAY. 

SELECT 
    HOUR(order_time) AS hour, COUNT(order_id) AS order_count
FROM
    orders
GROUP BY HOUR(order_time);