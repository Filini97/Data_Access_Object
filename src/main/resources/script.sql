SELECT ORDERS.product_name
FROM ORDERS
         JOIN CUSTOMERS c ON c.id = CUSTOMERS.id
WHERE LOWER(c.mane) = LOWER(:name);