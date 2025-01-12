ou are given a table of tennis players and their matches that they could either win (W) or lose (L). 
Find the longest streak of wins. A streak is a set of consecutive won matches of one player. 
The streak ends once a player loses their next match. Output the ID of the player or players and the length of the streak.



𝐒𝐜𝐡𝐞𝐦𝐚 𝐚𝐧𝐝 𝐃𝐚𝐭𝐚𝐬𝐞𝐭
CREATE TABLE players_results ( match_date DATETIME, match_result VARCHAR(1), player_id BIGINT);

INSERT INTO players_results (match_date, match_result, player_id) VALUES ('2023-01-01', 'W', 1), 
('2023-01-02', 'W', 1), ('2023-01-03', 'L', 1), ('2023-01-04', 'W', 1), ('2023-01-01', 'L', 2), 
('2023-01-02', 'W', 2), ('2023-01-03', 'W', 2), ('2023-01-04', 'W', 2), ('2023-01-05', 'L', 2), ('2023-01-01', 'W', 3),
 ('2023-01-02', 'W', 3), ('2023-01-03', 'W', 3), ('2023-01-04', 'W', 3), ('2023-01-05', 'L', 3);
 
 
INPUT:

+-------------+-------------------------+--------------+----------+
| match_date  | timestamp without time zone | match_result | player_id |
+-------------+-------------------------+--------------+----------+
| 2023-01-01 | 00:00:00                  | W            | 12       |
| 2023-01-02 | 00:00:00                  | W            | 13       |
| 2023-01-03 | 00:00:00                  | L            | 14       |
| 2023-01-04 | 00:00:00                  | W            | 15       |
| 2023-01-01 | 00:00:00                  | L            | 26       |
| 2023-01-02 | 00:00:00                  | W            | 27       |
| 2023-01-03 | 00:00:00                  | W            | 28       |
| 2023-01-04 | 00:00:00                  | W            | 29       |
| 2023-01-05 | 00:00:00                  | L            | 210      |
| 2023-01-01 | 00:00:00                  | W            | 311      |
| 2023-01-02 | 00:00:00                  | W            | 312      |
| 2023-01-03 | 00:00:00                  | W            | 313      |
| 2023-01-04 | 00:00:00                  | W            | 314      |
| 2023-01-05 | 00:00:00                  | L            | 315      |
+-------------+-------------------------+--------------+----------+

OUTPUT:
player_id win_streak
  3	          4