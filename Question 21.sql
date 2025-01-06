Find number of new customers visited the site per day
on day 1 everyone is the new customer so 3 new customers joined on day 1 while on day 2 
100 was old customer so 2 customers joined on day 2

create table customer_orders (
order_id integer,
customer_id integer,
order_date date,
order_amount integer
);
select * from customer_orders;
INSERT INTO customer_orders (order_id, customer_id, order_date, order_amount) VALUES
(1, 100, CAST('2022-01-01' AS DATE), 2000),
(2, 200, CAST('2022-01-01' AS DATE), 2500),
(3, 300, CAST('2022-01-01' AS DATE), 2100),
(4, 100, CAST('2022-01-02' AS DATE), 2000),
(5, 400, CAST('2022-01-02' AS DATE), 2200),
(6, 500, CAST('2022-01-02' AS DATE), 2700),
(7, 100, CAST('2022-01-03' AS DATE), 3000),
(8, 400, CAST('2022-01-03' AS DATE), 1000),
(9, 600, CAST('2022-01-03' AS DATE), 3000);


OUTPUT:
	order_date	sum

1	2022-01-01	3
2	2022-01-02	2
3	2022-01-03	1