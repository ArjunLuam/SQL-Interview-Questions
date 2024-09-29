Create points table of ICC CWC 23 based on below schedule
winner will get 2 pts added in total points
For Draw 1-1 pt will be distributed to both teams
create table icc_world_cup
(
Team_1 Varchar(20),
Team_2 Varchar(20),
Winner Varchar(20)
);
INSERT INTO icc_world_cup values('India','SL','India');
INSERT INTO icc_world_cup values('SL','Aus','Aus');
INSERT INTO icc_world_cup values('SA','Eng','Eng');
INSERT INTO icc_world_cup values('Eng','NZ','NZ');
INSERT INTO icc_world_cup values('Aus','India','India');
INSERT INTO icc_world_cup values('Aus','SA','DRAW');

select * from icc_world_cup;

T 		P W L Pts
India   2 2 0 4
SL      2 0 2 0
SA      2 0 1 3
Eng     2 1 1 2
Aus     3 1 1 3