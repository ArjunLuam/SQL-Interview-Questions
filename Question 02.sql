You are provided with data about players performances in a football tournament. 
Write a query to find the top assist provider for each team in the tournament, along with their total number of assists.


CREATE TABLE football_stats (
    match_id INT,
    team_name VARCHAR(50),
    player_name VARCHAR(50),
    goals_scored INT,
    assists INT
);

INSERT INTO football_stats (match_id, team_name, player_name, goals_scored, assists) VALUES
(1, 'Manchester United', 'Bruno Fernandes', 1, 2),
(1, 'Manchester United', 'Marcus Rashford', 2, 1),
(1, 'Chelsea', 'Mason Mount', 1, 2),
(1, 'Chelsea', 'Kai Havertz', 1, 0),
(2, 'Manchester United', 'Christian Eriksen', 0, 3),
(2, 'Manchester United', 'Antony', 1, 1),
(2, 'Chelsea', 'Reece James', 0, 1),
(2, 'Chelsea', 'Raheem Sterling', 1, 2),
(3, 'Manchester United', 'Bruno Fernandes', 2, 1),
(3, 'Chelsea', 'Mason Mount', 2, 1),
(3, 'Chelsea', 'Kai Havertz', 1, 0),
(3, 'Manchester United', 'Marcus Rashford', 1, 0);


+----------+-----------------+--------------+-------------+---------+
| Match_ID |    Team_Name    | Player_Name  | Goals_Scored | Assists |
+==========+=================+==============+=============+=========+
|    1     |Manchester United|Bruno Fernandes|      1      |    2    |
|    1     |Manchester United|Marcus Rashford|      2      |    1    |
|    1     |     Chelsea     | Mason Mount   |      1      |    2    |
|    1     |     Chelsea     |  Kai Havertz  |      1      |    0    |
|    2     |Manchester United|Christian Eriksen|      0      |    3    | 
|    2     |Manchester United|     Antony    |      1      |    1    |
|    2     |     Chelsea     |  Reece James  |      0      |    1    |
|    2     |     Chelsea     |Raheem Sterling|      1      |    2    |
|    3     |Manchester United|Bruno Fernandes|      2      |    1    |
|    3     |     Chelsea     | Mason Mount   |      2      |    1    |
|    3     |     Chelsea     |  Kai Havertz  |      1      |    0    |
|    3     |Manchester United|Marcus Rashford|      1      |    0    |
+----------+-----------------+--------------+-------------+---------+ 

Team_Name			Top_Assist_Provider	Total_Assists
Manchester United	Christian Eriksen	3
Chelsea				Mason Mount			3

