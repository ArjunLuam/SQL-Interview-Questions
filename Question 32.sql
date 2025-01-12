Write query to find cities where not even a single order was return.

DDL & DML QUERY:
create table city_orders
(
order_id int,
city varchar(10),
sales int
);

create table city_returns
(
order_id int,
return_reason varchar(20)
);

insert into city_orders
values(1, 'Mysore' , 100),(2, 'Mysore' , 200),(3, 'Bangalore' , 250),(4, 'Bangalore' , 150)
,(5, 'Mumbai' , 300),(6, 'Mumbai' , 500),(7, 'Mumbai' , 800)
;
insert into city_returns values
(3,'wrong item'),(6,'bad quality'),(7,'wrong item');
