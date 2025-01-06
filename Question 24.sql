There is an e-commerce website that has both a mobile app and a desktop website. 
The spending history of the users is given, which includes the spend date, user ID, platform (mobile or desktop), and amount spent.

The question is to write an SQL query to find the total number of users and
the total amount spent using mobile only, desktop only, and both mobile and desktop together for each date.

INPUT:

| user_id | spend_date | platform | amount |
|---|---|---|---|
| 1 | 2019-07-01 | mobile | 100 |
| 1 | 2019-07-01 | desktop | 100 |
| 2 | 2019-07-01 | mobile | 100 |
| 2 | 2019-07-02 | mobile | 100 |
| 3 | 2019-07-01 | desktop | 100 |
| 3 | 2019-07-02 | desktop | 100  |

OUTPUT:

| spend_date | amount | platform | total_users |
|---|---|---|---|
| 2019-07-01 | 200 | both 		| 1 |
| 2019-07-01 | 100 | desktop 	| 1 |
| 2019-07-01 | 100 | mobile 	| 1 |
| 2019-07-02 | 0   | both 		| 0 |
| 2019-07-02 | 100 | desktop 	| 1 |
| 2019-07-02 | 100 | mobile 	| 1 |

Query:

create table spending 
(
user_id int,
spend_date date,
platform varchar(10),
amount int
);

insert into spending values(1,'2019-07-01','mobile',100),(1,'2019-07-01','desktop',100),(2,'2019-07-01','mobile',100)
,(2,'2019-07-02','mobile',100),(3,'2019-07-01','desktop',100),(3,'2019-07-02','desktop',100);
