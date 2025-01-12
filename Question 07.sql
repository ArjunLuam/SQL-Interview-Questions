Find most picked route in this table
PS : DEL to BOM are different from BOM to DEL
and O means oneway and R means Roundtrip, so a route with maximum tickets is the most picked route 
also keep roundtrip in mind while solving the question


CREATE TABLE tickets (
    airline_number VARCHAR(10),
    origin VARCHAR(3),
    destination VARCHAR(3),
    oneway_round CHAR(1),
    ticket_count INT
);


INSERT INTO tickets (airline_number, origin, destination, oneway_round, ticket_count)
VALUES
    ('DEF456', 'BOM', 'DEL', 'O', 150),
    ('GHI789', 'DEL', 'BOM', 'R', 50),
    ('JKL012', 'BOM', 'DEL', 'R', 75),
    ('MNO345', 'DEL', 'NYC', 'O', 200),
    ('PQR678', 'NYC', 'DEL', 'O', 180),
    ('STU901', 'NYC', 'DEL', 'R', 60),
    ('ABC123', 'DEL', 'BOM', 'O', 100),
    ('VWX234', 'DEL', 'NYC', 'R', 90);
	
	
INPUT:

+-----------------+----------+--------------+-------------+---------------+
| Airline_Number | Origin   | Destination | Oneway_Round | Ticket_Count |
+=================+==========+==============+=============+===============+
| DEF456         | BOM      | DEL          | O           | 150          |
| GHI789         | DEL      | BOM          | R           | 50           |
| JKL012         | BOM      | DEL          | R           | 75           |
| MNO345         | DEL      | NYC          | O           | 200          |
| PQR678         | NYC      | DEL          | O           | 180          |
| STU901         | NYC      | DEL          | R           | 60           |
| ABC123         | DEL      | BOM          | O           | 100          |
| VWX234         | DEL      | NYC          | R           | 90           |
+-----------------+----------+--------------+-------------+---------------+

Expected Output Table: most_picked_route

Origin Destination ticket_count
DEL     NYC        350