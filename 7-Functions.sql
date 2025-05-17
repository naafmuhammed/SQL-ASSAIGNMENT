use world;

ALTER TABLE Persons
ADD COLUMN DOB DATE;

select * from persons;

UPDATE Persons SET DOB = '1990-01-15' WHERE Id = 1;
UPDATE Persons SET DOB = '1985-07-22' WHERE Id = 2;
UPDATE Persons SET DOB = '1992-03-10' WHERE Id = 3;
UPDATE Persons SET DOB = '1988-11-05' WHERE Id = 4;
UPDATE Persons SET DOB = '1995-06-18' WHERE Id = 5;
UPDATE Persons SET DOB = '1982-09-30' WHERE Id = 6;
UPDATE Persons SET DOB = '1993-12-25' WHERE Id = 7;
UPDATE Persons SET DOB = '1991-04-12' WHERE Id = 8;
UPDATE Persons SET DOB = '1987-08-19' WHERE Id = 9;
UPDATE Persons SET DOB = '1994-02-28' WHERE Id = 10;
UPDATE Persons SET DOB = '1990-05-20' WHERE Id = 11;
UPDATE Persons SET DOB = '1989-10-10' WHERE Id = 12;


select * from persons;

SELECT Fname, Lname, DOB, CalculateAge(DOB) AS Age
FROM Persons;

SELECT 
    Fname, 
    Lname, 
    DOB, 
    CalculateAge(DOB) AS Age
FROM Persons;

SELECT 
    Country_name, 
    LENGTH(Country_name) AS Name_Length
FROM Country;

SELECT 
    Country_name,
    SUBSTRING(Country_name, 1, 3) AS First_Three_Chars
FROM Country;

SELECT 
    Country_name,
    UPPER(Country_name) AS Country_Uppercase,
    LOWER(Country_name) AS Country_Lowercase
FROM Country;



