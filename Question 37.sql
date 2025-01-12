Given the customer_purchases and product_list tables, Write a query to calculate the year-over-year growth rate of the amount spent by each customer.

Table structure:

CREATE TABLE customer_purchases ( Customer_id VARCHAR, Product_id VARCHAR, Purchase_amount DECIMAL(10,2), Purchase_date DATE );

input:

+------------+-------------+-----------------+---------------+
| Customer_id | Product_id  | Purchase_amount | Purchase_date |
+------------+-------------+-----------------+---------------+
| C001        | P001        | 100.50          | 2022-05-15   |
| C002        | P002        | 200.75          | 2022-08-20   |
| C001        | P003        | 150.00          | 2023-05-15   |
| C002        | P004        | 300.25          | 2023-08-20   |
| C003        | P001        | 120.00          | 2022-07-10   |
| C003        | P002        | 180.00          | 2023-07-10   |
+------------+-------------+-----------------+---------------+

output:

+------------+-------------+-----------------+---------------+------+-------------------+
| Customer_id | Product_id  | Purchase_amount | Purchase_date | Diff | Yoy_Growth        |
+------------+-------------+-----------------+---------------+------+-------------------+
| C001        | P003        | 150.00          | 2023-05-15   | 49.50 | 33.00000000000000  |
| C002        | P004        | 300.25          | 2023-08-20   | 99.50 | 33.1390507910075   |
| C003        | P002        | 180.00          | 2023-07-10   | 60.00 | 33.3333333333333   |
+------------+-------------+-----------------+---------------+------+-------------------+