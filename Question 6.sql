Given a table we need to find out the total number of rides by each brand and how many times brand won by delivering order fast, and how many time lost. The desired output shown below

DDL & DML QUERY:

CREATE TABLE Delievry_Partner (
 Brand_1 VARCHAR(512),
 Brand_2 VARCHAR(512),
 Brand_3 VARCHAR(512),
 Winner VARCHAR(512)
);

INSERT INTO Delievry_Partner (Brand_1, Brand_2, Brand_3, Winner) VALUES
 ('A', 'B', 'C', 'B'),
 ('B', 'C', 'E', 'E'),
 ('C', 'A', 'D', 'D'),
 ('D', 'E', 'A', 'A'),
 ('F', 'B', 'C', 'F');
