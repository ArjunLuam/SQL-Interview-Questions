You are given two tables: players and matches.

The players table contains information about the players, including their player_id and group_id.

The matches table contains information about the matches played between players, including the match_id, player1_id, player2_id, player1_score, and player2_score.

You need to write an SQL query to find the winner in each group. The winner is the player who scored the maximum total points within the group. In case of a tie, the player with the lowest player_id wins.

create table players
(player_id int,
group_id int)

insert into players values (15,1);
insert into players values (25,1);
insert into players values (30,1);
insert into players values (45,1);
insert into players values (10,2);
insert into players values (35,2);
insert into players values (50,2);
insert into players values (20,3);
insert into players values (40,3);

create table matches
(
match_id int,
first_player int,
second_player int,
first_score int,
second_score int)

insert into matches values (1,15,45,3,0);
insert into matches values (2,30,25,1,2);
insert into matches values (3,30,15,2,0);
insert into matches values (4,40,20,5,2);
insert into matches values (5,35,50,1,1);



The output should be a table with the following columns:

group_id
winner_player_id
Example:

group_id	winner_player_id
1			15
2			35
3			45


