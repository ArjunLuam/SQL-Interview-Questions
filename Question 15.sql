Write an SQL query to fill the Null value with its previous row value as shown in the output table.

DDL & DML QUERY:
CREATE TABLE student_table (
 
 Student_id INT,
 Dept_id VARCHAR(512)
);

INSERT INTO student_table ( Student_id, Dept_id) VALUES ('1', '105');
INSERT INTO student_table ( Student_id, Dept_id) VALUES ('2', NULL);
INSERT INTO student_table ( Student_id, Dept_id) VALUES ( '3', NULL);
INSERT INTO student_table ( Student_id, Dept_id) VALUES ('4', NULL);
INSERT INTO student_table ( Student_id, Dept_id) VALUES ('11', '110');
INSERT INTO student_table ( Student_id, Dept_id) VALUES ('12', NULL);
INSERT INTO student_table ( Student_id, Dept_id) VALUES ('13', NULL);


INPUT 

student_id	dept_id

1			105
2			null
3			null
4			null
11			110
12			null
13			null
14			null
15			112
16			null

output

student_id	dept_id
1			105
2			105
3			105
4			105
11			110
12			110
13			110
14			110
15			112
16			112