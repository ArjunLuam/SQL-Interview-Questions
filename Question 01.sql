You are provided with data about candidates and the votes they received in an election. Write a query to find the candidate with the highest votes in each constituency.

CREATE TABLE election_results (
    constituency VARCHAR(50),
    candidate_name VARCHAR(50),
    party VARCHAR(50),
    votes_received INT
);


INSERT INTO election_results (constituency, candidate_name, party, votes_received) VALUES
('Constituency A', 'Alice', 'Party X', 15000),
('Constituency A', 'Bob', 'Party Y', 12000),
('Constituency A', 'Charlie', 'Party Z', 8000),
('Constituency B', 'David', 'Party X', 17000),
('Constituency B', 'Eve', 'Party Y', 20000),
('Constituency B', 'Frank', 'Party Z', 15000),
('Constituency C', 'Grace', 'Party X', 14000),
('Constituency C', 'Hannah', 'Party Y', 18000),
('Constituency C', 'Ian', 'Party Z', 12000);

input:
+---------------+----------------+--------+-----------------+
| Constituency  | Candidate_Name | Party  | Votes_Received |
+===============+================+========+=================+
| Constituency A | Alice         | Party X | 15000          |
| Constituency A | Bob           | Party Y | 12000          |
| Constituency A | Charlie       | Party Z | 8000           |
| Constituency B | David         | Party X | 17000          |
| Constituency B | Eve           | Party Y | 20000          |
| Constituency B | Frank         | Party Z | 15000          |
| Constituency C | Grace         | Party X | 14000          |
| Constituency C | Hannah        | Party Y | 18000          |
| Constituency C | Ian           | Party Z | 12000          |
+===============+================+========+=================+

output:
Output Table: top_candidates
Constituency	Candidate_Name	Party	Votes_Received
Constituency A	Alice			Party X	15000
Constituency B	Eve				Party Y	20000
Constituency C	Hannah			Party Y	18000