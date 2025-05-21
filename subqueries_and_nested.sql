-- Employees in highest-paying department
SELECT name FROM Employees
WHERE dept_id = (
    SELECT dept_id FROM Employees
    GROUP BY dept_id
    ORDER BY AVG(salary) DESC
    LIMIT 1
);
