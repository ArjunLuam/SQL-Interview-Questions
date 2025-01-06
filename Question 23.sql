You are given three tables: orders, users, and items.

The orders table contains information about the orders placed on an e-commerce website, including the order_id, order_date, item_id, buyer_id, and seller_id.

The users table contains information about the users of the e-commerce website, including the user_id and favorite_brand.

The items table contains information about the items sold on the e-commerce website, including the item_id and item_brand.

You need to write an SQL query to find for each seller whether the brand of the second item they sold is their favorite brand or not. 
If a seller sold less than two items, report the answer for that seller as "No".

create table users1 (
user_id         int     ,
 join_date       date    ,
 favorite_brand  varchar(50));

 create table orders (
 order_id       int     ,
 order_date     date    ,
 item_id        int     ,
 buyer_id       int     ,
 seller_id      int 
 );

 create table items
 (
 item_id        int     ,
 item_brand     varchar(50)
 );


 insert into users1 values (1,'2019-01-01','Lenovo'),(2,'2019-02-09','Samsung'),(3,'2019-01-19','LG'),(4,'2019-05-21','HP');

 insert into items values (1,'Samsung'),(2,'Lenovo'),(3,'LG'),(4,'HP');

 insert into orders values (1,'2019-08-01',4,1,2),(2,'2019-08-02',2,1,3),(3,'2019-08-03',3,2,3),(4,'2019-08-04',1,4,2)
 ,(5,'2019-08-04',1,3,4),(6,'2019-08-05',2,2,4);


SAMPLE output:

sno	user_id      order_id   order_date item_id  buyer_id  seller_id     item_brand  favorite_brand  fav_brand
1		2			4		2019-08-04	1		4			2			Samsung		Samsung			YES
2		3			3		2019-08-03	3		2			3			LG			LG				YES
3		4			6		2019-08-05	2		2			4			Lenovo		HP				NO
4		1			null	null		null	null		null		null		Lenovo			NO










