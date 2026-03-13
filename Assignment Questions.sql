DROP TABLE IF EXISTS employees;

CREATE TABLE employees(
 employee_id SERIAL PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 department VARCHAR(50),
 salary DECIMAL(10,2) CHECK (salary>0),
 joining_date DATE NOT NULL,
 age INT CHECK (age >= 18)
);

SELECT * FROM employees ORDER BY employee_id ASC;

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)
VALUES ('Rahul','Verma','HR', 45000.00 , '2021-05-18', 25),
('Sneha','Patel','Finance', 55000.00 , '2020-08-22', 28),
('Vikas','Singh','IT', 72000.00 , '2019-11-10', 30),
('Priya','Mehta','Marketing', 48000.00 , '2023-02-14', 24),
('Arjun','Reddy','Operations', 65000.00 , '2021-12-01', 27);


--ASSIGNMENT QUESTIONS
--Q1. RETRIVE ALL EMPLOYEES FIRST_NAME AND THEIR DEPARTMENT
SELECT first_name, department FROM employees;

--Q2. update the salary of all employee in the it department by increasing it by 10%
UPDATE employees
SET salary = salary + (salary*0.1)
WHERE department = 'IT';

--Q3. DELETE ALL EMPLOYEES WHO ARE OLDER THAN 28 YEARS
DELETE FROM employees
WHERE age >30;

--Q4. add a new column email to the employee table
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

--Q5. rename the department column to dept_name
ALTER TABLE employees
RENAME department TO dept_name;

--Q6. retrieve the names of employees who joined after january 1, 2021.
SELECT first_name , last_name FROM employees
WHERE joining_date > '2021-01-01';

--Q7. change the data type of the salary  column to integer
ALTER TABLE employees
ALTER COLUMN salary TYPE INTEGER USING salary::INTEGER;

--Q8.LIST ALL EMPLOYEE WITH THEIR AGE AND SALARY IN DESCENDING ORDER OF SALARY
SELECT first_name , age , salary FROM employees ORDER BY salary DESC;

--Q9. insert a new employee with the folowing details
		-- ('Raj','Singh','Marketing',60000, '2023-09-15', 30)
INSERT INTO employees (first_name,last_name, dept_name,salary, joining_date, age )
VALUES('Raj','Singh','Marketing', 60000.00 , '2023-09-15', 30)

--Q10. Update age of employee +1 to every employeer
UPDATE employees
SET age = age +1;
