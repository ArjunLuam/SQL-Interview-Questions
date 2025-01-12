Note: parent_id is null for posts.
parent_id for comments is sub_id for another post in the table.
Write an sql query to find the number of comments per post.
Result table should contain post_id and its corresponding number_of_comments, and must be sorted by post_id in ascending order.
--> Submissions may contain duplicate comments. You should count the number of unique comments per post.
--> Submissions may contain duplicate posts. You should treat them as one post.

DDL & DML QUERY:
CREATE TABLE Submissions (
 sub_id INT,
 parent_id INT
);
INSERT INTO Submissions (sub_id, parent_id) VALUES
(1, NULL),
(2, NULL),
(1, NULL),
(12, NULL),
(3, 1),
(5, 2),
(3, 1),
(4, 1),
(9, 1),
(10, 2),
(6, 7);

INPUT:

+-----------+--------------+
| sub_id    | parent_id    |
+-----------+--------------+
| 1         | null         |
| 2         | null         |
| 1         | null         |
| 12        | null         |
| 3         | 1            |
| 5         | 2            |
| 3         | 1            |
| 4         | 1            |
| 9         | 1            |
| 10        | 2            |
| 6         | 7            |
+-----------+--------------+


output:

+-----------+------------------+
| post_id    | no_of_comments   |
+-----------+------------------+
| 1          | 3                |
| 2          | 2                |
| 12         | 0                |
+-----------+------------------+
