CREATE TABLE users1(
	user_id INT PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) NOT NULL,
	age INTEGER CHECK (age >= 18, 
	

);

SELECT * FROM users3;

INSERT INTO users3 (username, email, age, city)
VALUES
('rahul123', 'rahul@gmail.com', 22, 'Delhi'),
('priya_k', 'priya@gmail.com', 21, 'Mumbai'),
('aman_dev', 'aman@gmail.com', 23, 'Bangalore'),
('neha_singh', 'neha@gmail.com', 20, 'Lucknow'),
('rohit_sharma', 'rohit@gmail.com', 24, 'Pune');

SELECT user_id,username,age FROM users3;

UPDATE users3
SET age = 24
WHERE username = 'rahul123';

SELECT * FROM users3 ORDER BY user_id ASC;

UPDATE users3
SET city = 'Bihar'
WHERE age >= 21;


UPDATE users3
SET age = 34 , city = 'Kolkata'
WHERE username = 'rahul123';


UPDATE users3
SET age = age + 1
WHERE EMAIL LIKE '%gmail.com'