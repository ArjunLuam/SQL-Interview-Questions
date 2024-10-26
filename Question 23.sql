Given a city_distance table with columns distance, source, and destination, write a query to find routes that either Lack a reverse route, Have inconsistent distances between the forward and reverse routes, or
List duplicate entries once.( SOURCE AND DESTINATION)

DDL & DML QUERY:
CREATE TABLE city_distance
(
 distance INT,
 source VARCHAR(512),
 destination VARCHAR(512)
);
INSERT INTO city_distance(distance, source, destination) VALUES ('100', 'New Delhi', 'Panipat');
INSERT INTO city_distance(distance, source, destination) VALUES ('200', 'Ambala', 'New Delhi');
INSERT INTO city_distance(distance, source, destination) VALUES ('150', 'Bangalore', 'Mysore');
INSERT INTO city_distance(distance, source, destination) VALUES ('150', 'Mysore', 'Bangalore');
INSERT INTO city_distance(distance, source, destination) VALUES ('250', 'Mumbai', 'Pune');
INSERT INTO city_distance(distance, source, destination) VALUES ('250', 'Pune', 'Mumbai');
INSERT INTO city_distance(distance, source, destination) VALUES ('250', 'Jammu', 'Srinagar');
INSERT INTO city_distance(distance, source, destination) VALUES ('250', 'Srinagar', 'Jammu');
INSERT INTO city_distance(distance, source, destination) VALUES ('2500', 'Chennai', 'Bhopal');
INSERT INTO city_distance(distance, source, destination) VALUES ('2500', 'Bhopal', 'Chennai');
INSERT INTO city_distance(distance, source, destination) VALUES ('60', 'Tirupati', 'Tirumala');
INSERT INTO city_distance(distance, source, destination) VALUES ('80', 'Tirumala', 'Tirupati');

INPUT:

+-----------+-----------+-------------+
| distance  | source    | destination |
+-----------+-----------+-------------+
| 100       | New Delhi | Panipat     |
| 200       | Ambala    | New Delhi   |
| 150       | Bangalore | Mysore      |
| 150       | Mysore    | Bangalore   |
| 250       | Mumbai    | Pune        |
| 250       | Pune      | Mumbai      |
| 250       | Jammu     | Srinagar    |
| 250       | Srinagar  | Jammu      |
| 2500      | Chennai   | Bhopal      |
| 2500      | Bhopal    | Chennai     |
| 60        | Tirupati  | Tirumala    |
| 80        | Tirumala  | Tirupati    |
+-----------+-----------+-------------+

output:

+-----------+-----------+-------------+
| distance  | source    | destination |
+-----------+-----------+-------------+
| 100       | New Delhi | Panipat     |
| 200       | Ambala    | New Delhi   |
| 150       | Bangalore | Mysore      |
| 250       | Mumbai    | Pune        |
| 250       | Jammu     | Srinagar    |
| 2500      | Chennai   | Bhopal      |
| 60        | Tirupati  | Tirumala    |
| 80        | Tirumala  | Tirupati    |
+-----------+-----------+-------------+