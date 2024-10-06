How many users and sessions were there in each quarter, ordered from newest to oldest?
return quarters, first day of quarter, users count and total sessions

DDL & DML QUERY:
CREATE TABLE users (
 USER_ID INT PRIMARY KEY,
 USER_NAME VARCHAR(20) NOT NULL,
 USER_STATUS VARCHAR(20) NOT NULL
);

CREATE TABLE logins (
 USER_ID INT,
 LOGIN_TIMESTAMP DATETIME NOT NULL,
 SESSION_ID INT PRIMARY KEY,
 SESSION_SCORE INT,
 FOREIGN KEY (USER_ID) REFERENCES USERS(USER_ID)
);

-- Users Table
INSERT INTO USERS VALUES (1, 'Alice', 'Active'),
(2, 'Bob', 'Inactive'),
(3, 'Charlie', 'Active'),
 (4, 'David', 'Active'),
 (5, 'Eve', 'Inactive'),
 (6, 'Frank', 'Active'),
 (7, 'Grace', 'Inactive'),
 (8, 'Heidi', 'Active'),
(9, 'Ivan', 'Inactive'),
(10, 'Judy', 'Active'),
(11, 'Ray', 'Active');

-- Logins Table 

INSERT INTO LOGINS VALUES (1, '2023-07-15 09:30:00', 1001, 85),
(2, '2023-07-22 10:00:00', 1002, 90),
(3, '2023-08-10 11:15:00', 1003, 75),
(4, '2023-08-20 14:00:00', 1004, 88),
 (5, '2023-09-05 16:45:00', 1005, 82),

 (6, '2023-10-12 08:30:00', 1006, 77),
 (7, '2023-11-18 09:00:00', 1007, 81),
(8, '2023-12-01 10:30:00', 1008, 84),
 (9, '2023-12-15 13:15:00', 1009, 79);


-- 2024 Q1
INSERT INTO LOGINS VALUES (1, '2024-01-10 07:45:00', 1011, 86);
INSERT INTO LOGINS VALUES (2, '2024-01-25 09:30:00', 1012, 89);
INSERT INTO LOGINS VALUES (3, '2024-02-05 11:00:00', 1013, 78);
INSERT INTO LOGINS VALUES (4, '2024-03-01 14:30:00', 1014, 91);
INSERT INTO LOGINS VALUES (5, '2024-03-15 16:00:00', 1015, 83);

INSERT INTO LOGINS VALUES (6, '2024-04-12 08:00:00', 1016, 80),
 (7, '2024-05-18 09:15:00', 1017, 82),
 (8, '2024-05-28 10:45:00', 1018, 87),
 (9, '2024-06-15 13:30:00', 1019, 76),
 (10, '2024-06-25 15:00:00', 1010, 92),
 (10, '2024-06-26 15:45:00', 1020, 93),
 (10, '2024-06-27 15:00:00', 1021, 92),
 (10, '2024-06-28 15:45:00', 1022, 93),
 (1, '2024-01-10 07:45:00', 1101, 86),
 (3, '2024-01-25 09:30:00', 1102, 89),
 (5, '2024-01-15 11:00:00', 1103, 78),
 (2, '2023-11-10 07:45:00', 1201, 82),
 (4, '2023-11-25 09:30:00', 1202, 84),
 (6, '2023-11-15 11:00:00', 1203, 80);


OUTPUT 

quarter_num min_date	new_users new_sessions
	1	    2024-01-10			5	8
	2		2024-04-12			5	8
	3		2023-07-15			5	5
	4		2023-10-12			6	7