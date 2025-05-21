-- Subquery: Employees earning more than the average salary
SELECT name, salary
FROM Employees
WHERE salary > (SELECT AVG(salary) FROM Employees);

-- CTE: Department salary stats
WITH DeptStats AS (
    SELECT dept_id, AVG(salary) AS avg_salary
    FROM Employees
    GROUP BY dept_id
)
SELECT e.name, e.salary, ds.avg_salary
FROM Employees e
JOIN DeptStats ds ON e.dept_id = ds.dept_id;
