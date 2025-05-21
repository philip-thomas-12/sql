-- Audit table
CREATE TABLE SalaryAudit (
    emp_id INT,
    old_salary DECIMAL(10,2),
    new_salary DECIMAL(10,2),
    changed_at DATETIME
);

-- Trigger
DELIMITER //
CREATE TRIGGER salary_update_trigger
BEFORE UPDATE ON Employees
FOR EACH ROW
BEGIN
    INSERT INTO SalaryAudit VALUES (OLD.emp_id, OLD.salary, NEW.salary, NOW());
END;
//
DELIMITER ;
