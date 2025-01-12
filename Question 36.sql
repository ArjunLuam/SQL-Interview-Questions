Write a SQL query to find the names of managers who directly manage at least five employees in the same department.
Return the department name and the total number of direct reports for each manager.
Note: Ensure that only the employees from departments with more than 10 total employees are considered in your query.

DDL & DML QUERY:
CREATE TABLE Walmart_Employee (
 id INT PRIMARY KEY,
 name VARCHAR(50),
 department VARCHAR(50),
 managerId INT
);

INSERT INTO Walmart_Employee (id, name, department, managerId) VALUES 
(1, 'John', 'HR', NULL),
(2, 'Bob', 'HR', 1),
(3, 'Olivia', 'HR', 1),
(4, 'Emma', 'Finance', NULL),
(5, 'Sophia', 'HR', 1),
(6, 'Mason', 'Finance', 4),
(7, 'Ethan', 'HR', 1),
(8, 'Ava', 'HR', 1),
(9, 'Lucas', 'HR', 1),
(10, 'Isabella', 'Finance', 4),
(11, 'Harper', 'Finance', 4),
(12, 'Hemla', 'HR', 3),
(13, 'Aisha', 'HR', 2),
(14, 'Himani', 'HR', 2),
(15, 'Lily', 'HR', 2);