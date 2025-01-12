Our objective is to identify the top 5 astists whose songs appear most frequently in the Top 10 of the global song rankings.
Note: If multiple songs from the same artist are in the Top 10, they should all count towards that artist total appearances. 
We want to rank these artists based on the number of times their songs have appeared in the top 10. If there are ties, 
they should have the same ranking, but the overall ranking numbers should remain continuous.

DDL & DML QUERY:
CREATE TABLE artists (
 artist_id INT PRIMARY KEY,
 artist_name VARCHAR(100),
 label_owner VARCHAR(100)
);

INSERT INTO artists (artist_id, artist_name, label_owner) VALUES
(101, 'Ed Sheeran', 'Warner Music Group'),
(120, 'Drake', 'Warner Music Group'),
(125, 'Bad Bunny', 'Rimas Entertainment'),
(130, 'Lady Gaga', 'Interscope Records'),
(140, 'Katy Perry', 'Capitol Records');

Table : songs 

CREATE TABLE songs (
 song_id INT PRIMARY KEY,
 artist_id INT,
 name VARCHAR(100)
);

INSERT INTO songs (song_id, artist_id, name) VALUES
(55511, 101, 'Perfect'),
(45202, 101, 'Shape of You'),
(22222, 120, 'One Dance'),
(19960, 120, 'Hotline Bling'),
(33333, 125, 'Dákiti'),
(44444, 125, 'Yonaguni'),
(55555, 130, 'Bad Romance'),
(66666, 130, 'Poker Face'),
(99999, 140, 'Roar'),
(101010, 140, 'Firework');

Table: global_song_rank 

CREATE TABLE global_song_rank (
 day INT,
 song_id INT,
 rank INT
);

INSERT INTO global_song_rank (day, song_id, rank) VALUES
(1, 45202, 5),
(3, 45202, 2),
(1, 19960, 3),
(9, 19960, 6),
(1, 55511, 8),
(5, 22222, 7),
(2, 33333, 4),
(4, 44444, 8),
(6, 55555, 1),
(7, 66666, 10),
(5, 99999, 5);


SOLUTION:

with t1 as(
select s.song_id,a.artist_id,a.artist_name,s.name,g.rank,g.day from artists a inner join songs s on 
a.artist_id = s.artist_id inner join 
global_song_rank g on g.song_id = s.song_id
)
select artist_name,dense_rank() over (order by cnt desc) as rank from(
select artist_name,count(rank) as cnt from t1 where rank<=10 group by artist_name
) a
