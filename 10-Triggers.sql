create database GV_HSS;

Use GV_HSS;

CREATE TABLE teachers (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    subject VARCHAR(50),
    experience INT,      -- years of experience
    salary DECIMAL(10,2) -- salary amount
);

desc table teachers;

INSERT INTO teachers (id, name, subject, experience, salary) VALUES
(1, 'Alice Johnson', 'Mathematics', 10, 60000.00),
(2, 'Bob Smith', 'Physics', 8, 58000.00),
(3, 'Carol Williams', 'Chemistry', 12, 62000.00),
(4, 'David Brown', 'English', 7, 55000.00),
(5, 'Eva Davis', 'Biology', 9, 59000.00),
(6, 'Frank Miller', 'History', 15, 65000.00),
(7, 'Grace Wilson', 'Geography', 6, 54000.00),
(8, 'Henry Moore', 'Computer Science', 11, 63000.00);

select * from teachers;

DELIMITER $$
CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'salary cannot be negative';
    END IF;
END $$
DELIMITER ;

CREATE TABLE teacher_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    teacher_id INT,
    action VARCHAR(50),
    timestamp DATETIME
);

DELIMITER $$
CREATE TRIGGER after_insert_teacher
AFTER INSERT ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (NEW.id, 'INSERT', NOW());
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON teachers
FOR EACH ROW
BEGIN
    IF OLD.experience > 10 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete teacher with experience greater than 10 years';
    END IF;
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER after_delete_teacher
AFTER DELETE ON teachers
FOR EACH ROW
BEGIN
    INSERT INTO teacher_log (teacher_id, action, timestamp)
    VALUES (OLD.id, 'DELETE', NOW());
END $$
DELIMITER ;



