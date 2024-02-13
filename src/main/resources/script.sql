SELECT ORDERS.product_name
FROM ORDERS
         INNER JOIN CUSTOMERS c ON c.id = ORDERS.customer_id
WHERE LOWER(c.name) = LOWER(:name);