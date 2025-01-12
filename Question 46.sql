Find the number of words in each business name. Avoid counting special symbols as words (e.g. &). Output the business name and its count of words.

CREATE TABLE sf_restaurant_health_violations(business_name VARCHAR(255))

INSERT INTO sf_restaurant_health_violations VALUES ('John''s Pizza & Grill','Sushi-Hub','The Good Eatery Cafe','Burger Palace & More','Quick_&_Fresh')

INPUT:
----------------------|
|BUSINESS_NAME		  |
----------------------|
|John's Pizza & Grill |
|Sushi-Hub 			  |
|The Good Eatery Cafe |
|Burger Palace & More |
|Quick_&_Fresh		  |
----------------------


OUTPUT
----------------------|-------- |
|BUSINESS_NAME		  |LENGTH   |
----------------------|-------- |
|John s Pizza  Grill |  4       |
|Sushi Hub 			  | 2       |
|The Good Eatery Cafe | 4       |
|Burger Palace More |   3       |
|Quick Fresh		  | 2       |
--------------------------------|