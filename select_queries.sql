-- All employees
SELECT * FROM Employees;

-- Employees with salary > 50000
SELECT name, salary FROM Employees WHERE salary > 50000;

-- Join: Employee names with department names
SELECT e.name AS Employee, d.name AS Department
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id;
