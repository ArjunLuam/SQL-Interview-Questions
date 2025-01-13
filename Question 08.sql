Find city with highest polpulation and city with lowest ppopulation for each state

CREATE TABLE city_population (
    state VARCHAR(50),
    city VARCHAR(50),
    population INT
);

-- Insert the data
INSERT INTO city_population (state, city, population) VALUES ('haryana', 'ambala', 100);
INSERT INTO city_population (state, city, population) VALUES ('haryana', 'panipat', 200);
INSERT INTO city_population (state, city, population) VALUES ('haryana', 'gurgaon', 300);
INSERT INTO city_population (state, city, population) VALUES ('punjab', 'amritsar', 150);
INSERT INTO city_population (state, city, population) VALUES ('punjab', 'ludhiana', 400);
INSERT INTO city_population (state, city, population) VALUES ('punjab', 'jalandhar', 250);
INSERT INTO city_population (state, city, population) VALUES ('maharashtra', 'mumbai', 1000);
INSERT INTO city_population (state, city, population) VALUES ('maharashtra', 'pune', 600);
INSERT INTO city_population (state, city, population) VALUES ('maharashtra', 'nagpur', 300);
INSERT INTO city_population (state, city, population) VALUES ('karnataka', 'bangalore', 900);
INSERT INTO city_population (state, city, population) VALUES ('karnataka', 'mysore', 400);
INSERT INTO city_population (state, city, population) VALUES ('karnataka', 'mangalore', 200);


+------------+-----------+------------+
| State      | City      | Population |
+------------+-----------+------------+
| Haryana    | Ambala    | 100        |
| Haryana    | Panipat   | 200        |
| Haryana    | Gurgaon   | 300        |
| Punjab     | Amritsar  | 150        |
| Punjab     | Ludhiana  | 400        |
| Punjab     | Jalandhar | 250        |
| Maharashtra| Mumbai    | 1000       |
| Maharashtra| Pune      | 600        |
| Maharashtra| Nagpur    | 300        |
| Karnataka  | Bangalore | 900        |
| Karnataka  | Mysore    | 400        |
| Karnataka  | Mangalore | 200        |
+------------+-----------+------------+



------------+-----------------+-------------------+-----------------+-------------------+
| State      | Highest_Pop_City | Highest_Population | Lowest_Pop_City | Lowest_Population |
+------------+-----------------+-------------------+-----------------+-------------------+
| Haryana    | Gurgaon         | 300                | Ambala         | 100                |
| Punjab     | Ludhiana        | 400                | Amritsar        | 150                |
| Maharashtra| Mumbai          | 1000               | Nagpur          | 300                |
| Karnataka  | Bangalore       | 900                | Mangalore       | 200                |
+------------+-----------------+-------------------+-----------------+-------------------+