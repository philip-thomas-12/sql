-- Index to improve search on name
CREATE INDEX idx_emp_name ON Employees(name);

-- Composite index
CREATE INDEX idx_salary_dept ON Employees(salary, dept_id);
