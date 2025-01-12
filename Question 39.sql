Identify passengers with more than 10 flights from the same airport since last 1 year from current date.

DDL & DML QUERY:
CREATE TABLE passenger_flights (
 Passenger_id VARCHAR(10),
 Flight_id VARCHAR(10),
 Departure_date DATE
);

CREATE TABLE flight_details (
 Flight_id VARCHAR(10) PRIMARY KEY,
 Departure_airport_code VARCHAR(5),
 Arrival_airport_code VARCHAR(5)
);
-- Sample data for passenger_flights
INSERT INTO passenger_flights (Passenger_id, Flight_id, Departure_date) VALUES
('P001', 'F101', '2023-11-01'),
('P001', 'F102', '2023-12-02'),
('P001', 'F103', '2024-01-10'),
('P001', 'F104', '2024-02-15'),
('P001', 'F105', '2024-03-05'),
('P001', 'F106', '2024-04-18'),
('P001', 'F107', '2024-05-22'),
('P001', 'F108', '2024-06-30'),
('P001', 'F109', '2024-07-15'),
('P001', 'F110', '2024-08-05'),
('P001', 'F111', '2024-09-10'), 
('P002', 'F112', '2023-11-05'),
('P002', 'F113', '2024-01-18'),
('P002', 'F114', '2024-03-28'),
('P002', 'F115', '2024-05-30'),
('P003', 'F116', '2023-10-25'),
('P003', 'F117', '2024-01-19'),
('P003', 'F118', '2024-04-15');

-- Sample data for flight_details
INSERT INTO flight_details (Flight_id, Departure_airport_code, Arrival_airport_code) VALUES
('F101', 'JFK', 'LAX'),
('F102', 'JFK', 'ORD'),
('F103', 'JFK', 'ATL'),
('F104', 'JFK', 'LAX'),
('F105', 'JFK', 'SEA'),
('F106', 'JFK', 'MIA'),
('F107', 'JFK', 'DFW'),
('F108', 'JFK', 'SFO'),
('F109', 'JFK', 'LAS'),
('F110', 'JFK', 'BOS'),
('F111', 'JFK', 'DEN'), 
('F112', 'ORD', 'SFO'),
('F113', 'ORD', 'LAX'),
('F114', 'ORD', 'MIA'),
('F115', 'ORD', 'DFW'),
('F116', 'ATL', 'SEA'),
('F117', 'ATL', 'ORD'),
('F118', 'ATL', 'LAX');