Find out the company who have atleast 2 users speaking both english and german

CREATE TABLE Company_user (
 Company_Id VARCHAR(512),
 User_Id INT,
 Language VARCHAR(512)
);
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '1', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '1', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '2', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '3', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '3', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('1', '4', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '5', 'German');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '5', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '6', 'Spanish');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '6', 'English');
INSERT INTO Company_user (Company_Id, User_Id, Language) VALUES ('2', '7', 'English');


input table :

+-----------+---------+----------+
| Company_Id | User_Id | Language |
+===========+=========+==========+
| 1          | 1       | German   |
| 1          | 1       | English  |
| 1          | 2       | German   |
| 1          | 3       | English  |
| 1          | 3       | German   |
| 1          | 4       | English  |
| 2          | 5       | German   |
| 2          | 5       | English  |
| 2          | 6       | Spanish  |
| 2          | 6       | English  |
| 2          | 7       | English  |
+===========+=========+==========+

output:

Company_Id	Count_of_Users
1				2