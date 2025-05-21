START TRANSACTION;

UPDATE Employees SET salary = salary + 1000 WHERE emp_id = 101;
UPDATE Employees SET salary = salary - 1000 WHERE emp_id = 102;

-- COMMIT to save or ROLLBACK to cancel
COMMIT;
