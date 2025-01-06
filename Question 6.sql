
SEPERATELY CLASSIFY HOW MUCH SALE HAPPENED FOR CLOTHING AND HOW MUCH Electronics


CREATE TABLE sales_data (
    month varchar(10),
    category varchar(20),
    amount numeric
);

-- Insert data
INSERT INTO sales_data (month, category, amount) VALUES
    ('January', 'Electronics', 1500),
    ('January', 'Clothing', 1200),
    ('February', 'Electronics', 1800),
    ('February', 'Clothing', 1300),
    ('March', 'Electronics', 1600),
    ('March', 'Clothing', 1100),
    ('April', 'Electronics', 1700),
    ('April', 'Clothing', 1400);
	
	
input table :

+----------+-----------+-------+
| month    | category  | amount |
+----------+-----------+-------+
| January  |Electronics| 1500  |
| January  | Clothing | 1200  |
| February |Electronics| 1800  |
| February | Clothing | 1300  |
| March    |Electronics| 1600  |
| March    | Clothing | 1100  |
| April    |Electronics| 1700  |
| April    | Clothing | 1400  |
+----------+-----------+-------+

output table:
+---------+---------+------------+
| month   | Clothing | Electronics |
+---------+---------+------------+
| April   | 1400    | 1700       |
| February| 1300    | 1800       |
| January | 1200    | 1500       |
| March   | 1100    | 1600       |
+---------+---------+------------+	