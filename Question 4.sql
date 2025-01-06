correcting a swapping error in Zomato's order database. Imagine each order's item has been mistakenly swapped with the next
Script -- 

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    item VARCHAR(255) NOT NULL
);

INSERT INTO orders (order_id, item) VALUES
(1, 'Chow Mein'),
(2, 'Pizza'),
(3, 'Veg Nuggets'),
(4, 'Paneer Butter Masala'),
(5, 'Spring Rolls'),
(6, 'Veg Burger'),
(7, 'Paneer Tikka');



Input Table: Orders

+----------+--------------------+
| order_id | item               |
+==========+====================+
| 1        | Chow Mein          |
| 2        | Pizza              |
| 3        | Veg Nuggets        |
| 4        | Paneer Butter Masala |
| 5        | Spring Rolls       |
| 6        | Veg Burger         |
| 7        | Paneer Tikka       |
+==========+====================+


Input Table: Orders

+----------+--------------------+
| order_id | item               |
+==========+====================+
| 1        | Chow Mein          |
| 2        | Pizza              |
| 3        | Veg Nuggets        |
| 4        | Paneer Butter Masala |
| 5        | Spring Rolls       |
| 6        | Veg Burger         |
| 7        | Paneer Tikka       |
+==========+====================+


Output Table: Orders

+--------------------+--------------------+
| corrected_order_id | item               |
+====================+====================+
| 1                  | Pizza              |
| 2                  | Chow Mein          |
| 3                  | Paneer Butter Masala |
| 4                  | Veg Nuggets        |
| 5                  | Veg Burger         |
| 6                  | Spring Rolls       |
| 7                  | Paneer Tikka       |
+====================+====================+
