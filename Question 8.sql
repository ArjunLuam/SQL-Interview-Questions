
Write a sql query to arrange:
Alphabets should have the corresponding words as shown in the expected output.

DDL & DML QUERY:
create table Alphabetwords(letter_word varchar(10));

insert into Alphabetwords values ('D'),('A'), ('B'), ('C'), ('E'), ('Dog'),('Ball'),('Cat'), ('Fish'), ('Elephant');



alphabets	word
A			Ball
B			Cat
C			Dog
D			Elephant
E			Fish