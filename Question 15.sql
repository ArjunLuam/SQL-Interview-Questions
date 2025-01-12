Given a table of entries where each person can visit multiple floors and use various resources on those floors, write an SQL query that returns the following:

The total number of visits for each person.
The floor that the person visited the most.
A comma-separated list of unique resources that the person used during all of their visits.

name	address		email		floor	resources
A		Bangalore	A@gmail.com		1	CPU
A		Bangalore	A1@gmail.com	1	CPU
A		Bangalore	A2@gmail.com	2	DESKTOP
A		Bangalore	A2@gmail.com	2	DESKTOP
B		Bangalore	B@gmail.com		2	DESKTOP
B		Bangalore	B2@gmail.com	1	MONITOR

OUTPUT

name	total_visits	most_visited_floor	resources_used
A			3				1				CPU,DESKTOP
B			2				2				DESKTOP,MONITOR

create table entries ( 
name varchar(20),
address varchar(20),
email varchar(20),
floor int,
resources varchar(10));

insert into entries 
values ('A','Bangalore','A@gmail.com',1,'CPU'),('A','Bangalore','A1@gmail.com',1,'CPU'),('A','Bangalore','A2@gmail.com',2,'DESKTOP')
,('B','Bangalore','B@gmail.com',2,'DESKTOP'),('B','Bangalore','B1@gmail.com',2,'DESKTOP'),('B','Bangalore','B2@gmail.com',1,'MONITOR')
