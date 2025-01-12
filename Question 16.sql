( Mphasis Interview Question )
Given us an empdept_tbl table, we need to update scores column values with department wise maximum score.
Write an SQL QUERY to update the scores column values with department wise maximum scores.

DDL & DML QUERY:

create table empdept_tbl (eid int, dept varchar(50),scores float)
insert into empdept_tbl values (1, 'd1', 1.0),(2, 'd1', 5.28),(3, 'd1', 4.0),(4,'d2', 8.0),(5, 'd1', 2.5),(6, 'd2', 7.0),(7, 'd3', 9.0),(8, 'd4', 10.2)


INPUT 

SNO	eid	dept	scores
1	1	d1		1
2	2	d1		5.28
3	3	d1		4
4	4	d2		8
5	5	d1		2.5
6	6	d2		7
7	7	d3		9
8	8	d4		10.2

OUTPUT:
SNO	eid	dept	scores
1	1	d1		5.28
2	2	d1		5.28
3	3	d1		5.28
4	4	d2		8
5	5	d1		5.28
6	6	d2		8
7	7	d3		9
8	8	d4		10.2

