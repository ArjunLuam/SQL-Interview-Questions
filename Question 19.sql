You are given a table tasks that contains information about tasks performed by a person, including the task_id, task_date, and task_status.

You need to write an SQL query to group the tasks into continuous groups based on the task_status and task_date. The output should be a table with the following columns:

start_date
end_date
task_status

INPUT:
| date_value 		  | state |

| 2019-01-01 00:00:00 | success |
| 2019-01-02 00:00:00 | success |
| 2019-01-03 00:00:00 | success |
| 2019-01-04 00:00:00 | fail |
| 2019-01-05 00:00:00 | fail |
| 2019-01-06 00:00:00 | success |


OUTPUT:

| state | 		begin_task |				 end_task |

| success 	| 2019-01-01 00:00:00 | 2019-01-03 00:00:00 |
| fail 		| 2019-01-04 00:00:00 | 2019-01-05 00:00:00 |
| success 	| 2019-01-06 00:00:00 | 2019-01-06 00:00:00 |


Queries:

CREATE TABLE tasks (
    date_value TIMESTAMP,
    state VARCHAR(10)
);

insert into tasks  values ('2019-01-01','success'),('2019-01-02','success'),('2019-01-03','success'),('2019-01-04','fail')
,('2019-01-05','fail'),('2019-01-06','success')