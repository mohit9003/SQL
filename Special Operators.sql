SELECT * FROM employee2;

--1) Retrive employee whose salary is between 40,000 and 60,000 -- USE BETWEEN OPERATOR
SELECT first_name , last_name , salary
FROM employee2
WHERE salary BETWEEN 40000 AND 60000;


--2) Find employee whose email addresses end with gmail.com -- USE LIKE OPERATOR
SELECT first_name , last_name , email
FROM employee2
WHERE email LIKE '%gmail.com';


SELECT first_name FROM employee2
WHERE first_name LIKE '%a';


--3) Retrieve employee who belong to either the 'Finanace' or 'Marketing' department -- USE IN OPERATOR

SELECT first_name , last_name , department
FROM employee2
WHERE department IN ('HR', 'IT')



