-- Average salary per department
SELECT d.name AS Department, AVG(e.salary) AS Avg_Salary
FROM Employees e
JOIN Departments d ON e.dept_id = d.dept_id
GROUP BY d.name;

-- Total payroll
SELECT SUM(salary) AS Total_Payroll FROM Employees;
