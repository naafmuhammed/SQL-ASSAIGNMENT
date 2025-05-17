create database WORLD;

USE WORLD;

CREATE TABLE Country (
    Id INT PRIMARY KEY,
    Country_name VARCHAR(100),
    Population BIGINT,
    Area FLOAT
);

desc table country;

INSERT INTO Country (Id, Country_name, Population, Area) VALUES
(1, 'India', 1400000000, 3287263),
(2, 'China', 1420000000, 9596961),
(3, 'United States', 331000000, 9833520),
(4, 'Indonesia', 276000000, 1904569),
(5, 'Pakistan', 240000000, 881913),
(6, 'Brazil', 215000000, 8515767),
(7, 'Nigeria', 223000000, 923768),
(8, 'Bangladesh', 170000000, 147570),
(9, 'Russia', 144000000, 17098242),
(10, 'Mexico', 126000000, 1964375);

select * from Country;

CREATE TABLE Persons (
    Id INT PRIMARY KEY,
    Fname VARCHAR(100),
    Lname VARCHAR(100),
    Population BIGINT,
    Rating FLOAT,
    Country_Id INT,
    Country_name VARCHAR(100),
    FOREIGN KEY (Country_Id) REFERENCES Country(Id)
);


INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(1, 'Amit', 'Sharma', 1400000000, 4.5, 1, 'India'),
(2, 'Li', 'Wei', 1420000000, 4.7, 2, 'China'),
(3, 'John', 'Doe', 331000000, 4.3, 3, 'United States'),
(4, 'Adi', 'Putra', 276000000, 4.2, 4, 'Indonesia'),
(5, 'Sara', 'Khan', 240000000, 4.6, 5, 'Pakistan'),
(6, 'Carlos', 'Silva', 215000000, 4.1, 6, 'Brazil'),
(7, 'Ngozi', 'Okafor', 223000000, 4.4, 7, 'Nigeria'),
(8, 'Rahim', 'Uddin', 170000000, 4.3, 8, 'Bangladesh'),
(9, 'Ivan', 'Petrov', 144000000, 4.5, 9, 'Russia'),
(10, 'Luis', 'Garcia', 126000000, 4.2, 10, 'Mexico');

select * from Persons;

SELECT DISTINCT Country_name
FROM Persons;

SELECT 
    Fname AS First_Name,
    Lname AS Last_Name
FROM 
    Persons;
    
SELECT *
FROM Persons
WHERE Rating > 4.0;

SELECT *
FROM Country
WHERE Population > 1000000;

SELECT *
FROM Persons
WHERE Country_name = 'USA' OR Rating > 4.5;

SELECT *
FROM Persons
WHERE Country_name = 'United States' OR Rating > 4.5;

SELECT *
FROM Persons
WHERE Country_name IS NULL;

SELECT *
FROM Persons
WHERE Country_name IN ('USA', 'Canada', 'UK');

SELECT *
FROM Persons
WHERE Country_name IN ('United States', 'Canada', 'United Kingdom');

SELECT *
FROM Persons
WHERE Country_name NOT IN ('India', 'Australia');
SELECT *
FROM Country
WHERE Population BETWEEN 500000 AND 2000000;


SELECT *
FROM Country
WHERE Country_name NOT LIKE 'C%';
