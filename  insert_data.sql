USE Company;

INSERT INTO Departments (dept_id, name) VALUES
(1, 'Engineering'),
(2, 'Sales'),
(3, 'HR');

INSERT INTO Employees (emp_id, name, salary, dept_id) VALUES
(101, 'Alice', 75000.00, 1),
(102, 'Bob', 50000.00, 2),
(103, 'Charlie', 60000.00, 1),
(104, 'Diana', 45000.00, 3);
