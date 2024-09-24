The cancellation rate is computed by dividing the number of canceled (by client or driver) requests with unbanned users by the total number of requests with unbanned users on that day.
Write a solution to find the cancellation rate of requests with unbanned users (both client and driver must not be banned) each day between "2013-10-01" and "2013-10-03". Round Cancellation Rate to two decimal points.
Return the result table in any order.
The result format is in the following example.

DDL & DML QUERY:
CREATE TABLE User (
 users_id INT PRIMARY KEY,
 banned VARCHAR(3) CHECK (banned IN ('Yes', 'No')),
 role VARCHAR(10) CHECK (role IN ('client', 'driver'))
);
CREATE TABLE Trips (
 id INT PRIMARY KEY,
 client_id INT,
 driver_id INT,
 city_id INT,
 status VARCHAR(50),
 request_at DATE,
 FOREIGN KEY (client_id) REFERENCES User(users_id),
 FOREIGN KEY (driver_id) REFERENCES User(users_id)
);
INSERT INTO User (users_id, banned, role) VALUES
(1, 'No', 'client'),
(2, 'Yes', 'client'),
(3, 'No', 'client'),
(4, 'No', 'client'),
(10, 'No', 'driver'),
(11, 'No', 'driver'),
(12, 'No', 'driver'),
(13, 'No', 'driver');

INSERT INTO Trips (id, client_id, driver_id, city_id, status, request_at) VALUES
(1, 1, 10, 1, 'completed', '2013-10-01'),
(2, 2, 11, 1, 'cancelled_by_driver', '2013-10-01'),
(3, 3, 12, 6, 'completed', '2013-10-01'),
(4, 4, 13, 6, 'cancelled_by_client', '2013-10-01'),
(5, 1, 10, 1, 'completed', '2013-10-02'),
(6, 2, 11, 6, 'completed', '2013-10-02'),
(7, 3, 12, 6, 'completed', '2013-10-02'),
(8, 2, 12, 12, 'completed', '2013-10-03'),
(9, 3, 10, 12, 'completed', '2013-10-03'),
(10, 4, 13, 12, 'cancelled_by_driver', '2013-10-03');
