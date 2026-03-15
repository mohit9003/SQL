SELECT * FROM student_2023;


UPDATE student_2023
SET course = 'Computer Science'
WHERE student_id = 5;



SELECT * FROM student_2024;


INSERT INTO student_2024(student_id,student_name,course)
VALUES (3 , 'Kabir Patel', 'Electronics'),
		(4 , 'Ananya Desai', 'Civil Engineering'),
		(6 , 'Meera Rao', 'Computer Singh'),
		(7 , 'Vikram Singh', 'Mathematics'),
		(8 , 'Sanya Kapoor', 'Physics');


--UNION -- Combines result, remove duplicates

SELECT student_name , course FROM student_2023
UNION
SELECT student_name, course FROM student_2024;



-- UNION ALL -- Combines result, keeps duplicates

SELECT student_name , course FROM student_2023
UNION ALL
SELECT student_name, course FROM student_2024;


--INTERSECT -- Return common result in both tables

SELECT student_name , course FROM student_2023
INTERSECT
SELECT student_name, course FROM student_2024;


-- EXCEPT -- Return result in the first table but not in the second
SELECT student_name , course FROM student_2023
EXCEPT
SELECT student_name, course FROM student_2024;

