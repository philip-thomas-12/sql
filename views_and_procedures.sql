-- Create a view of high earners
CREATE VIEW HighEarners AS
SELECT name, salary FROM Employees WHERE salary > 60000;

-- Stored procedure to give a 10% raise
DELIMITER //
CREATE PROCEDURE GiveRaise(IN emp INT)
BEGIN
    UPDATE Employees SET salary = salary * 1.10 WHERE emp_id = emp;
END;
//
DELIMITER ;
