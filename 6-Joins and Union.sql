use world;

SELECT p.*, c.Area
FROM Persons p
INNER JOIN Country c ON p.Country_Id = c.Id;

SELECT p.*, c.Area
FROM Persons p
LEFT JOIN Country c ON p.Country_Id = c.Id;

SELECT p.*, c.Area
FROM Persons p
RIGHT JOIN Country c ON p.Country_Id = c.Id;

SELECT DISTINCT Country_name FROM Country
UNION
SELECT DISTINCT Country_name FROM Persons;

SELECT Country_name FROM Country
UNION ALL
SELECT Country_name FROM Persons;


SELECT Id, Fname, Lname, ROUND(Rating) AS Rounded_Rating
FROM Persons;



