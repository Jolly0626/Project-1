-- JOIN RELEVANT TABLES TO FIND THE CATEGORY - WISE DISTRIBUTION OF PIZZAS. 

SELECT 
    category, COUNT(name)
FROM
    pizza_types
GROUP BY category
