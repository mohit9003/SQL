SELECT * FROM employee2;

SELECT * FROM employee2
WHERE 	  age = 30;


SELECT * FROM employee2
WHERE age != 30;


SELECT first_name, age FROM employee2
WHERE age != 30;


SELECT first_name, salary FROM employee2
WHERE salary >= 50000;


SELECT first_name, salary FROM employee2
WHERE salary <= 50000;


SELECT first_name, last_name , salary FROM employee2
WHERE salary <= 50000;