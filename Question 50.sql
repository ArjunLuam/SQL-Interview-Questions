You have a table of in-app purchases by user. Users that make their first in-app purchase are 
placed in a marketing campaign where they see call-to-actions for more in-app purchases. 
Find the number of users that made additional in-app purchases due to the success of the marketing campaign.

The marketing campaign doesnot start until one day after the initial in-app purchase so users 
that only made one or multiple purchases on the first day do not count, nor do we count users that over time purchase only the products they purchased on the first day.




𝐒𝐜𝐡𝐞𝐦𝐚 𝐚𝐧𝐝 𝐃𝐚𝐭𝐚𝐬𝐞𝐭
CREATE TABLE in_app_purchases ( created_at DATETIME, price BIGINT, product_id BIGINT, quantity BIGINT, user_id BIGINT);

INSERT INTO in_app_purchases (created_at, price, product_id, quantity, user_id) VALUES('2024-12-01 10:00:00', 500, 101, 1, 1), 
 ('2024-12-02 11:00:00', 700, 102, 1, 1),('2024-12-01 12:00:00', 300, 103, 1, 2), ('2024-12-03 14:00:00', 400, 103, 1, 2),
 ('2024-12-02 09:30:00', 200, 104, 1, 3), ('2024-12-04 15:30:00', 600, 105, 2, 3),
('2024-12-01 08:00:00', 800, 106, 1, 4), ('2024-12-05 18:00:00', 500, 107, 1, 4),('2024-12-06 16:00:00', 700, 108, 1, 5); 

INPUT:

| created_at           | price | product_id | quantity | user_id |
|----------------------|-------|------------|----------|---------|
| 2024-12-01 10:00:00 | 500   | 1          | 1        | 11      |
| 2024-12-02 11:00:00 | 700   | 1          | 2        | 11      |
| 2024-12-01 12:00:00 | 300   | 1          | 3        | 12      |
| 2024-12-03 14:00:00 | 400   | 1          | 3        | 12      |
| 2024-12-02 09:30:00 | 200   | 1          | 4        | 13      |
| 2024-12-04 15:30:00 | 600   | 1          | 5        | 23      |
| 2024-12-01 08:00:00 | 800   | 1          | 6        | 14      |
| 2024-12-05 18:00:00 | 500   | 1          | 7        | 14      |
| 2024-12-06 16:00:00 | 700   | 1          | 8        | 15      |

OUTPUT:
 ----------
|successful|
-----------
|	3     |
-----------