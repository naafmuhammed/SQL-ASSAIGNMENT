create database Rubiyan;

use Rubiyan;

create table Rrubiyan(
managerid int primary key not null,
First_name varchar(50),
last_name varchar(50),
DOB int,
age int,
gender char(1) check (gender in('M','F','O')),
department varchar(100),
salary int not null
);

desc rrubiyan;

alter table Rrubiyan
rename to managers;

desc managers;
insert into managers
values
('1001','Fahad','Bangalath','2024-12-19','37','m','clustermanager','30000'),
('1002','mazhar','kannur','1990-03-05','29','m','store manager','28000'),
('1003','akshay','kp','1997-03-22','28','m','ass manager','28000'),
('1004','unais','k','1980-01-15','30','m','store manager','35000'),
('1005','adwaith','s','1985-03-03','29','m','store manager','28000'),
('1006','rejith','mahfil','1985-05-12','33','m','purchase manager','26000'),
('1007','shamnas','p','1985-10-30','33','m','store manager','38000'),
('1008','sunand','p','2000-07-26','25','m','store manager','25000'),
('1009','sharafad','c','1990-08-31','30','m','store manager','30000'),
('1010','naaf','muhammed','2001-02-28','24','m','inventory manager','26000');


select * from managers;


ALTER TABLE managers
modify column dob date;

select * from MANAGERS; 
SELECT managerid,First_name,DOB FROM MANAGERS;

SELECT *
FROM managers
WHERE 12*salary;

SELECT managerid,(salary*12) AS 'ann Salary',
Salary AS 'Salary' FROM managers;

 SELECT* FROM managers
 WHERE first_name <>'fahad';
 
SELECT first_name, department,salarymanagerid
FROM managers
WHERE department = 'store Manager' AND salary > 25000;

SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) As Full_Name, 
Salary FROM managers WHERE managerid IN (SELECT managerid FROM managers WHERE Salary BETWEEN 10000 AND 35000);