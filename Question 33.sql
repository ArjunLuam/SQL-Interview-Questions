Find the Currency Exchange rate at beginning and ending of month. 
Output should contain unique currency code (by formatting currency code and year_month of the date column), beginning exchange rate and ending exchange rate.

DDL & DML QUERY:

CREATE TABLE exchange_rates (
 currency_code VARCHAR(3),
 date DATE,
 currency_exchange_rate DECIMAL(10, 2)
);


INSERT INTO exchange_rates (currency_code, date, currency_exchange_rate) VALUES
('USD', '2024-06-01', 1.20),
('USD', '2024-06-02', 1.21),
('USD', '2024-06-03', 1.22),
('USD', '2024-06-04', 1.23),
('USD', '2024-07-01', 1.25),
('USD', '2024-07-02', 1.26),
('USD', '2024-07-03', 1.27),
('EUR', '2024-06-01', 1.40),
('EUR', '2024-06-02', 1.41),
('EUR', '2024-06-03', 1.42),
('EUR', '2024-06-04', 1.43),
('EUR', '2024-07-01', 1.45),
('EUR', '2024-07-02', 1.46),
('EUR', '2024-07-03', 1.47);


INPUT TABLE:

+--------------+------------+--------------------------+
| currency_code |  date      | currency_exchange_rate   |
+--------------+------------+--------------------------+
| USD           | 2024-06-01 | 1.20                     |
| USD           | 2024-06-02 | 1.21                     |
| USD           | 2024-06-03 | 1.22                     |
| USD           | 2024-06-04 | 1.23                     |
| USD           | 2024-07-01 | 1.25                     |
| USD           | 2024-07-02 | 1.26                     |
| USD           | 2024-07-03 | 1.27                     |
| EUR           | 2024-06-01 | 1.40                     |
| EUR           | 2024-06-02 | 1.41                     |
| EUR           | 2024-06-03 | 1.42                     |
| EUR           | 2024-06-04 | 1.43                     |
| EUR           | 2024-07-01 | 1.45                     |
| EUR           | 2024-07-02 | 1.46                     |
| EUR           | 2024-07-03 | 1.47                     |
+--------------+------------+--------------------------+


OUTPUT TABLE:

+------------------------+-------------------+-------------------+
| Unique_currency_code    | start_exchange_rate| end_exchange_rate|
+------------------------+-------------------+-------------------+
| USD-2024-7             | 1.25              | 1.27              |
| EUR-2024-6             | 1.40              | 1.43              |
| USD-2024-6             | 1.20              | 1.23              |
| EUR-2024-7             | 1.45              | 1.47              |
+------------------------+-------------------+-------------------+
