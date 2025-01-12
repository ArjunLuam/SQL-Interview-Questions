We want to identify the most suspicious claims in each state. We WILL consider the top 5 percentile of claims with the highest fraud scores in each state as potentially fraudulent.

Your output should include the policy number, state, claim cost, and fraud score.


𝐒𝐜𝐡𝐞𝐦𝐚 𝐚𝐧𝐝 𝐃𝐚𝐭𝐚𝐬𝐞𝐭
CREATE TABLE claims (policy_number VARCHAR(50), state VARCHAR(50), claim_cost FLOAT, fraud_score FLOAT);

INSERT INTO claims (policy_number, state, claim_cost, fraud_score) VALUES ('POL123', 'CA', 10000.00, 85.5), ('POL124', 'CA', 5000.00, 70.2), ('POL125', 'CA', 20000.00, 92.8), 
('POL126', 'NY', 15000.00, 88.1), ('POL127', 'NY', 8000.00, 65.4), ('POL128', 'NY', 25000.00, 93.7), ('POL129', 'TX', 12000.00, 75.3), 
('POL130', 'TX', 18000.00, 95.2), ('POL131', 'TX', 9000.00, 60.0), ('POL132', 'FL', 11000.00, 82.0), 
('POL133', 'FL', 14000.00, 87.5), ('POL134', 'FL', 30000.00, 99.0);

INPUT:

| policy_number | state | claim_cost | fraud_score |
|---------------|-------|------------|-------------|
| POL123        | CA    | 10000.00   | 85.5        |
| POL124        | CA    | 5000.00    | 70.2        |
| POL125        | CA    | 20000.00   | 92.8        |
| POL126        | NY    | 15000.00   | 88.1        |
| POL127        | NY    | 8000.00    | 65.4        |
| POL128        | NY    | 25000.00   | 93.7        |
| POL129        | TX    | 12000.00   | 75.3        |
| POL130        | TX    | 18000.00   | 95.2        |
| POL131        | TX    | 9000.00    | 60.0        |
| POL132        | FL    | 11000.00   | 82.0        |
| POL133        | FL    | 14000.00   | 87.5        |
| POL134        | FL    | 30000.00   | 99.0        |

OUTPUT:

| policy_number | state | claim_cost | fraud_score |
|---------------|-------|------------|-------------|
| POL125        | CA    | 20000.00   | 92.8        |
| POL128        | NY    | 25000.00   | 93.7        |
| POL130        | TX    | 18000.00   | 95.2        |
| POL134        | FL    | 30000.00   | 99.0        | 
 
 
