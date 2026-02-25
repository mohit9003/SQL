CREATE TABLE employee2(
   employee_id INT PRIMARY KEY,
   name VARCHAR(100) NOT NULL,
   position VARCHAR(50),
   department VARCHAR(50),
   hire_date DATE,
   salary NUMERIC(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2 (employee_id , name, position, department, hire_date, salary)
		VALUES(101, 'Amit Sharma', 'Data Analyst', 'Data Science', '22-10-2021', 650000.00),
		(102, 'Rohit Sharma', 'Data Engineer', 'Marketing', '22-10-2026', 650000.00),
		(103, 'Virat Kohli', 'Data Analyst', 'CS', '22-10-2019', 650000.00),
		(104, 'M.S. Dhoni', 'Data Science', 'IT', '22-10-2021', 650000.00),
		(105, 'KL Rahul', 'Cloud Engineer', 'Sales', '22-10-2021', 650000.00);

DELETE FROM employee2
WHERE employee_id = 104;

ALTER TABLE employee2
DROP COLUMN salary;

TRUNCATE TABLE employee2;