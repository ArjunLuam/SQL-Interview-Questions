Find total number of message exchanged between 2 person each day.

DDL & DML query:

 CREATE TABLE subscriber (
 sms_date date ,
 sender varchar(20) ,
 receiver varchar(20) ,
 sms_no int
);
-- insert some values
INSERT INTO subscriber VALUES ('2020-4-1', 'Avinash', 'Vibhor',10);
INSERT INTO subscriber VALUES ('2020-4-1', 'Vibhor', 'Avinash',20);
INSERT INTO subscriber VALUES ('2020-4-1', 'Avinash', 'Pawan',30);
INSERT INTO subscriber VALUES ('2020-4-1', 'Pawan', 'Avinash',20);
INSERT INTO subscriber VALUES ('2020-4-1', 'Vibhor', 'Pawan',5);
INSERT INTO subscriber VALUES ('2020-4-1', 'Pawan', 'Vibhor',8);
INSERT INTO subscriber VALUES ('2020-4-1', 'Vibhor', 'Deepak',50);
Input Table:
sms_date sender receiver sms_no
2020-04-01 Avinash Vibhor 10
2020-04-01 Vibhor Avinash 20
2020-04-01 Avinash Pawan 30
2020-04-01 Pawan Avinash 20
2020-04-01 Vibhor Pawan 5
2020-04-01 Pawan Vibhor 8
2020-04-01 Vibhor Deepak 50

Output Table:
sms_date sender receiver total_sms
2020-04-01 Avinash Vibhor 30
2020-04-01 Avinash Pawan 50
2020-04-01 Pawan Vibhor 13
2020-04-01 Deepak Vibhor 50

SOLUTION:

with t1 as(
SELECT 
        s.sms_date, 
        LEAST(s.sender, s.receiver) AS sender, 
        GREATEST(s.sender, s.receiver) AS receiver, 
        s.sms_no 
    FROM 
        subscriber s 
)
select sms_date,sender,receiver,sum(sms_no) from t1 group by sms_date,sender,receiver