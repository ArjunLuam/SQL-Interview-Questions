𝐅𝐢𝐧𝐝 𝐭𝐡𝐞 𝐨𝐫𝐢𝐠𝐢𝐧 𝐚𝐧𝐝 𝐭𝐡𝐞 𝐝𝐞𝐬𝐭𝐢𝐧𝐚𝐭𝐢𝐨𝐧 𝐨𝐟 𝐞𝐚𝐜𝐡 𝐜𝐮𝐬𝐭𝐨𝐦𝐞𝐫 ?

Note : There can be more than 1 stops for the same customer journey.

CREATE TABLE flights_data (
    cust_id INT,
    flight_id VARCHAR(20),
    origin VARCHAR(50),
    destination VARCHAR(50)
);


INSERT INTO flights_data (cust_id, flight_id, origin, destination) VALUES
(1, 'Flight1', 'Delhi', 'Hyderabad'),
(1, 'Flight2', 'Hyderabad', 'Kochi'),
(1, 'Flight3', 'Kochi', 'Mangalore'),
(2, 'Flight1', 'Mumbai', 'Ayodhya'),
(2, 'Flight2', 'Ayodhya', 'Gorakhpur');

INPUT:
cust_id	flight_id	origin	destination
1		flight1		Delhi	Hyderabad
1		flight2		Hyderabad	Kochi
1		flight3		Kochi	Mangalore
2		flight1		Mumbai	Ayodhya
2		flight2		Ayodhya	Gorakhpur

output:
cust_id	origin	destination
1	Delhi	Mangalore
2	Mumbai	Gorakhpur