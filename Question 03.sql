You are provided with a table containing data about individual player scores in a cricket series. Write a query to find the top scorer from each team in the series.

CREATE TABLE player_scores (
    match_id INT,
    team_name VARCHAR(50),
    player_name VARCHAR(50),
    runs_scored INT
);


INSERT INTO player_scores (match_id, team_name, player_name, runs_scored) VALUES
(1, 'India', 'Virat Kohli', 78),
(1, 'India', 'Rohit Sharma', 45),
(1, 'Australia', 'Steve Smith', 62),
(1, 'Australia', 'David Warner', 92),
(2, 'India', 'Shubman Gill', 104),
(2, 'India', 'KL Rahul', 60),
(2, 'Australia', 'Marnus Labuschagne', 50),
(2, 'Australia', 'Cameron Green', 34),
(3, 'India', 'Rohit Sharma', 71),
(3, 'India', 'Shreyas Iyer', 82),
(3, 'Australia', 'David Warner', 89),
(3, 'Australia', 'Glenn Maxwell', 75);


Input Table: player_scores

+----------+-------------+--------------+-------------+
| Match_ID | Team_Name   | Player_Name  | Runs_Scored |
+----------+-------------+--------------+-------------+
| 1        | India       | Virat Kohli  | 78          |
| 1        | India       | Rohit Sharma | 45          |
| 1        | Australia   | Steve Smith  | 62          |
| 1        | Australia   | David Warner | 92          |
| 2        | India       | Shubman Gill | 104         |
| 2        | India       | KL Rahul     | 60          |
| 2        | Australia   | Marnus Labuschagne | 50    |
| 2        | Australia   | Cameron Green | 34         |
| 3        | India       | Rohit Sharma | 71          |
| 3        | India       | Shreyas Iyer | 82          |
| 3        | Australia   | David Warner | 89          |
| 3        | Australia   | Glenn Maxwell| 75          |
+----------+-------------+--------------+-------------+



Output Table: top_scorers
Team_Name	Top_Scorer	Runs_Scored
India		Shubman Gill	104
Australia	David Warner	92