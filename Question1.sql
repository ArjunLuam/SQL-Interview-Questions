Assign the Row number without using ROW_NUMBER() Window function.

DDL & DML Query:

-- Create the department table
CREATE TABLE department (
 department_id INT,
 employee_id INT,
 name VARCHAR(50)
);

-- Insert data into the department table
INSERT INTO department (department_id, employee_id, name) VALUES
(1, 1, 'Anna'),
(1, 2, 'Ben'),
(2, 3, 'Charlie'),
(2, 4, 'David'),
(1, 5, 'Eva'),
(3, 6, 'George'),
(3, 7, 'John');
Input Table:
department_id employee_id name
1 1 Anna
1 2 Ben
2 3 Charlie
2 4 David
1 5 Eva
3 6 George
3 7 John

Output Table:

department_id employee_id name rn
1 1 Anna 1
1 2 Ben 2
2 3 Charlie 1
2 4 David 2
1 5 Eva 3
3 6 George 1
3 7 John 2

SOLUTION:


SELECT 
    d.department_id, 
    d.employee_id, 
    d.name, 
    COUNT(d1.employee_id) AS rn
FROM 
    department d
INNER JOIN 
    department d1 
ON 
    d.department_id = d1.department_id 
    AND d.employee_id >= d1.employee_id
GROUP BY 
    d.department_id, 
    d.employee_id, 
    d.name ORDER BY department_id,d.employee_id;