SELECT * FROM employee2;


SELECT * FROM employee2
WHERE age > 40 AND salary > 40000;


SELECT * FROM employee2
WHERE age > 70 OR salary > 80000;

--NOT
SELECT * FROM employee2
WHERE NOT (department= 'IT');