create database Nesto;

use nesto;

CREATE TABLE Worker (
    Worker_Id INT,
    FirstName CHAR(25),
    LastName CHAR(25),
    Salary INT,
    JoiningDate DATETIME,
    Department CHAR(25)
);

desc table Worker;

DELIMITER $$
CREATE PROCEDURE AddWorker(
    IN p_Worker_Id INT,
    IN p_FirstName CHAR(25),
    IN p_LastName CHAR(25),
    IN p_Salary INT,
    IN p_JoiningDate DATETIME,
    IN p_Department CHAR(25)
)
BEGIN
    INSERT INTO Worker (Worker_Id, FirstName, LastName, Salary, JoiningDate, Department)
    VALUES (p_Worker_Id, p_FirstName, p_LastName, p_Salary, p_JoiningDate, p_Department);
END $$
DELIMITER ;


CALL AddWorker(1, 'John', 'Doe', 50000, '2023-01-15 09:00:00', 'HR');
CALL AddWorker(11, 'John', 'Doe', 50000, '2023-01-15 09:00:00', 'HR');
CALL AddWorker(2, 'Jane', 'Smith', 55000, '2022-12-01 08:30:00', 'Finance');
CALL AddWorker(3, 'Robert', 'Brown', 60000, '2023-03-10 10:00:00', 'IT');
CALL AddWorker(4, 'Emily', 'Davis', 52000, '2021-07-25 09:15:00', 'Marketing');
CALL AddWorker(5, 'Michael', 'Wilson', 58000, '2020-11-05 11:00:00', 'Operations');
CALL AddWorker(6, 'Sarah', 'Miller', 61000, '2022-05-20 08:45:00', 'HR');
CALL AddWorker(7, 'David', 'Moore', 57000, '2023-01-30 09:30:00', 'IT');
CALL AddWorker(8, 'Laura', 'Taylor', 53000, '2021-09-12 10:15:00', 'Finance');
CALL AddWorker(9, 'James', 'Anderson', 62000, '2022-02-28 08:00:00', 'Marketing');
CALL AddWorker(10, 'Linda', 'Thomas', 59000, '2023-04-10 09:45:00', 'Operations');



DELIMITER $$
CREATE PROCEDURE GetWorkerSalary(
    IN p_Worker_Id INT,
    OUT p_Salary INT
)
BEGIN
    SELECT Salary INTO p_Salary
    FROM Worker
    WHERE Worker_Id = p_Worker_Id;
END $$
DELIMITER ;

SET @salary = 0;

CALL GetWorkerSalary(1, @salary);

SELECT @salary AS Salary;

DELIMITER $$
CREATE PROCEDURE UpdateWorkerDepartment(
    IN p_Worker_Id INT,
    IN p_Department CHAR(25)
)
BEGIN
    UPDATE Worker
    SET Department = p_Department
    WHERE Worker_Id = p_Worker_Id;
END $$
DELIMITER ;


CALL UpdateWorkerDepartment(3, 'Human Resources');

DELIMITER $$
CREATE PROCEDURE GetWorkerCountByDepartment(
    IN p_Department CHAR(25),
    OUT p_workerCount INT
)
BEGIN
    SELECT COUNT(*) INTO p_workerCount
    FROM Worker
    WHERE Department = p_Department;
END $$
DELIMITER ;

SET @workerCount = 0;

CALL GetWorkerCountByDepartment('IT', @workerCount);

SELECT @workerCount AS Worker_Count;

DELIMITER $$
CREATE PROCEDURE GetAverageSalaryByDepartment(
    IN p_Department CHAR(25),
    OUT p_avgSalary DECIMAL(10,2)
)
BEGIN
    SELECT AVG(Salary) INTO p_avgSalary
    FROM Worker
    WHERE Department = p_Department;
END $$
DELIMITER ;

SET @avgSalary = 0;

CALL GetAverageSalaryByDepartment('IT', @avgSalary);

SELECT @avgSalary AS Average_Salary;




