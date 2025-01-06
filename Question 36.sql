"Given a dataset of Airbnb search queries, how would you determine the most popular room types?"

create table airbnb_searches 
(
user_id int,
date_searched date,
filter_room_types varchar(200)
);
delete from airbnb_searches;
insert into airbnb_searches values
(1,'2022-01-01','entire home,private room')
,(2,'2022-01-02','entire home,shared room')
,(3,'2022-01-02','private room,shared room')
,(4,'2022-01-03','private room');

INPUT:
+-----------+---------------+------------------------------+
| user_id    | date_searched | filter_room_types            |
+-----------+---------------+------------------------------+
| 1          | 2022-01-01    | entire home, priva...        |
| 2          | 2022-01-02    | entire home, share...         |
| 3          | 2022-01-02    | private room, shar...         |
| 4          | 2022-01-03    | private room                   |
+-----------+---------------+------------------------------+

OUTPUT:
+-------------------+-------------------+
| Room              | count(Room)       |
+-------------------+-------------------+
| private room       | 3                |
| entire home        | 2                |
| shared room        | 2                |
+-------------------+-------------------+