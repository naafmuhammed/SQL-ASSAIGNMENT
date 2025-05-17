use world;
select * from Persons;

SELECT SUBSTRING(Country_name, 1, 3) AS First_Three_Letters
FROM Country;

SELECT CONCAT(Fname, ' ', Lname) AS Full_Name
FROM Persons

SELECT COUNT(DISTINCT Country_name) AS Unique_Country_Count
FROM Persons;

SELECT MAX(Population) AS Max_Population
FROM Country;

SELECT MIN(Population) AS Min_Population
FROM Persons;

INSERT INTO Persons (Id, Fname, Lname, Population, Rating, Country_Id, Country_name) VALUES
(11, 'Maya', NULL, 1400000000, 4.0, 1, 'India'),
(12, 'Alex', NULL, 331000000, 3.9, 3, 'United States');

select * FROM Persons;

SELECT COUNT(Lname) AS Count_NonNull_Lname
FROM Persons;

SELECT COUNT(*) AS Total_Rows
FROM Persons;

select * FROM country;

SELECT Population
FROM Country
LIMIT 3;

SELECT *
FROM Country
ORDER BY RAND()
LIMIT 3;


SELECT *
FROM Persons
ORDER BY Rating DESC;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name;

SELECT Country_name, SUM(Population) AS Total_Population
FROM Persons
GROUP BY Country_name
HAVING SUM(Population) > 50000;

SELECT 
    Country_name,
    COUNT(*) AS Total_Persons,
    AVG(Rating) AS Average_Rating
FROM Persons
GROUP BY Country_name
HAVING COUNT(*) > 2
ORDER BY Average_Rating ASC;





