use world;

SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name;

SELECT Country_name, COUNT(*) AS Number_of_Persons
FROM Persons
GROUP BY Country_name
ORDER BY Number_of_Persons DESC;


SELECT Country_name, AVG(Rating) AS Average_Rating
FROM Persons
GROUP BY Country_name
HAVING AVG(Rating) > 3.0;

SELECT Country_name, AVG(Rating) AS Avg_Rating
FROM Persons
GROUP BY Country_name
HAVING AVG(Rating) = (
    SELECT AVG(Rating)
    FROM Persons
    WHERE Country_name = 'USA'
    GROUP BY Country_name
);

SELECT *
FROM Country
WHERE Population > (
    SELECT AVG(Population)
    FROM Country
);

Create  database Product;

use product;

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    First_name VARCHAR(50),
    Last_name VARCHAR(50),
    Email VARCHAR(100),
    Phone_no VARCHAR(20),
    Address VARCHAR(255),
    City VARCHAR(50),
    State VARCHAR(50),
    Zip_code VARCHAR(20),
    Country VARCHAR(50)
);

desc table Customer;

INSERT INTO Customer (Customer_Id, First_name, Last_name, Email, Phone_no, Address, City, State, Zip_code, Country) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '1234567890', '123 Maple St', 'New York', 'NY', '10001', 'USA'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '2345678901', '456 Oak Ave', 'Los Angeles', 'CA', '90001', 'USA'),
(3, 'Robert', 'Brown', 'robert.brown@example.com', '3456789012', '789 Pine Rd', 'Chicago', 'IL', '60601', 'USA'),
(4, 'Emily', 'Davis', 'emily.davis@example.com', '4567890123', '101 Elm St', 'Houston', 'TX', '77001', 'USA'),
(5, 'Michael', 'Wilson', 'michael.wilson@example.com', '5678901234', '202 Birch Ln', 'Phoenix', 'AZ', '85001', 'USA'),
(6, 'Sarah', 'Miller', 'sarah.miller@example.com', '6789012345', '303 Cedar Blvd', 'Philadelphia', 'PA', '19019', 'USA'),
(7, 'David', 'Moore', 'david.moore@example.com', '7890123456', '404 Spruce Dr', 'San Antonio', 'TX', '78201', 'USA'),
(8, 'Laura', 'Taylor', 'laura.taylor@example.com', '8901234567', '505 Willow Ct', 'San Diego', 'CA', '92101', 'USA'),
(9, 'James', 'Anderson', 'james.anderson@example.com', '9012345678', '606 Aspen Way', 'Dallas', 'TX', '75201', 'USA'),
(10, 'Linda', 'Thomas', 'linda.thomas@example.com', '0123456789', '707 Poplar St', 'San Jose', 'CA', '95101', 'USA');

select * from Customer;

UPDATE Customer SET Country = 'California' WHERE Customer_Id = 1;

CREATE VIEW customer_info AS
SELECT 
    CONCAT(First_name, ' ', Last_name) AS Full_Name,
    Email
FROM Customer;

SELECT * FROM customer_info;

CREATE VIEW US_Customers AS
SELECT *
FROM Customer
WHERE Country = 'US' OR Country = 'USA' OR Country = 'United States';

CREATE VIEW Customer_details AS
SELECT 
    CONCAT(First_name, ' ', Last_name) AS Full_Name,
    Email,
    Phone_no,
    State
FROM Customer;

UPDATE Customer
SET Phone_no = '5659451165'
WHERE State = 'California';

SELECT State, COUNT(*) AS Number_of_Customers
FROM Customer
GROUP BY State
HAVING COUNT(*) > 5;

SELECT State, COUNT(*) AS Number_of_Customers
FROM Customer_details
GROUP BY State;

SELECT *
FROM Customer_details
ORDER BY State ASC;










