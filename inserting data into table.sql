SELECT * FROM employee;


INSERT INTO employee (name, position, department,hire_date, salary)
 		VALUES('Ajit Sharma', 'Data Analyst', 'Data Science', '25-10-2026', 65000.00),
		 ('Anuj Dikshit', 'Data Science', 'Data Science', '25-10-2025', 75000.00),
		 ('Mohit Kumar', 'Data Engineer', 'Data Science', '25-11-2026', 89000.00),
		 ('Shayam Pandey', 'AI/ML Engineer', 'Data Science', '11-10-2026', 61000.00);


ALTER TABLE employee
RENAME nname TO name;

TRUNCATE TABLE employee
TRUNCATE TABLE employee RESTART IDENTITY;

