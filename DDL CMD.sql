create database SCHOOL;
USE SCHOOL;
CREATE TABLE students(
Roll_No int auto_increment primary key,
Name varchar(100),
Marks int(1),
grade char(1)
);
desc students;

insert into students
(Name,Marks,grade)
values
('abhishek','18','B'),
('muhammed','19','A'),
('mashar','20','A');

desc students;
select * from students;

alter table students
add contact varchar(10);

select * from Students;

desc students;
insert into students
(contact)
values
('+91974457');

update students
set contact = 9744575426
where Roll_No = 2;

update students
set contact = 9895550175
where Roll_No = 1;
update students
set contact = 4564564564
where Roll_No = 3;

alter table students
drop column grade;

alter table students
rename to classten;
 select * from classten;
 
 truncate table classten;
 
 drop table classten;
 
