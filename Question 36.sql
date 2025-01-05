Write a Query to find out the reference customer name from the given two tables. The output should contain invoice_id, billingdate, customer name and the reference customer name

DDL & DML QUERY:

CREATE TABLE Customers (
 Id INT PRIMARY KEY,
 Name VARCHAR(100) NOT NULL,
 referredBy INT
);


CREATE TABLE Invoice (
 Id INT PRIMARY KEY,
 BillingDate DATE NOT NULL,
 CustomerID INT
);

INSERT INTO Customers (Id, Name, referredBy)
VALUES
(1, 'John Doe', NULL), 
(2, 'Jane Smith', 1), 
(3, 'Alice Johnson', 1), 
(4, 'Bob Brown', 2), 
(5, 'Charlie Davis', 3); 

INSERT INTO Invoice (Id, BillingDate, CustomerID)
VALUES
(1, '2024-09-01', 1), 
(2, '2024-09-03', 2), 
(3, '2024-09-05', 3), 
(4, '2024-09-10', 4), 
(5, '2024-09-12', 5); 