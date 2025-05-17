create database library;

use library;

CREATE TABLE Branch (
    Branch_no INT PRIMARY KEY,
    Manager_Id INT,
    Branch_address VARCHAR(255),
    Contact_no VARCHAR(20)
);

CREATE TABLE Employee (
    Emp_Id INT PRIMARY KEY,
    Emp_name VARCHAR(100),
    Position VARCHAR(50),
    Salary DECIMAL(10,2),
    Branch_no INT,
    FOREIGN KEY (Branch_no) REFERENCES Branch(Branch_no)
);

CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Book_title VARCHAR(255),
    Category VARCHAR(50),
    Rental_Price DECIMAL(7,2),
    Status ENUM('yes', 'no'),
    Author VARCHAR(100),
    Publisher VARCHAR(100)
);

CREATE TABLE Customer (
    Customer_Id INT PRIMARY KEY,
    Customer_name VARCHAR(100),
    Customer_address VARCHAR(255),
    Reg_date DATE
);

CREATE TABLE IssueStatus (
    Issue_Id INT PRIMARY KEY,
    Issued_cust INT,
    Issued_book_name VARCHAR(255),
    Issue_date DATE,
    Isbn_book VARCHAR(20),
    FOREIGN KEY (Issued_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book) REFERENCES Books(ISBN)
);

CREATE TABLE ReturnStatus (
    Return_Id INT PRIMARY KEY,
    Return_cust INT,
    Return_book_name VARCHAR(255),
    Return_date DATE,
    Isbn_book2 VARCHAR(20),
    FOREIGN KEY (Return_cust) REFERENCES Customer(Customer_Id),
    FOREIGN KEY (Isbn_book2) REFERENCES Books(ISBN)
);

INSERT INTO Branch VALUES
(1, 101, '123 Main St, New York', '555-0101'),
(2, 102, '456 Oak St, Chicago', '555-0202'),
(3, 103, '789 Pine St, Los Angeles', '555-0303'),
(4, 104, '321 Maple St, Houston', '555-0404'),
(5, 105, '654 Cedar St, Phoenix', '555-0505'),
(6, 106, '987 Birch St, Philadelphia', '555-0606'),
(7, 107, '147 Elm St, San Antonio', '555-0707'),
(8, 108, '258 Walnut St, San Diego', '555-0808'),
(9, 109, '369 Spruce St, Dallas', '555-0909'),
(10, 110, '741 Aspen St, San Jose', '555-1010');

INSERT INTO Employee VALUES
(201, 'Alice Smith', 'Manager', 75000.00, 1),
(202, 'Bob Johnson', 'Assistant Manager', 60000.00, 1),
(203, 'Carol Williams', 'Librarian', 50000.00, 2),
(204, 'David Brown', 'Librarian', 48000.00, 3),
(205, 'Eva Davis', 'Clerk', 35000.00, 4),
(206, 'Frank Miller', 'Clerk', 34000.00, 5),
(207, 'Grace Wilson', 'Manager', 77000.00, 6),
(208, 'Henry Moore', 'Assistant', 30000.00, 7),
(209, 'Ivy Taylor', 'Librarian', 51000.00, 8),
(210, 'Jack Anderson', 'Clerk', 32000.00, 9);

INSERT INTO Books VALUES
('ISBN001', 'The Great Gatsby', 'Fiction', 3.50, 'yes', 'F. Scott Fitzgerald', 'Scribner'),
('ISBN002', 'To Kill a Mockingbird', 'Fiction', 3.75, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.'),
('ISBN003', '1984', 'Dystopian', 4.00, 'no', 'George Orwell', 'Secker & Warburg'),
('ISBN004', 'Pride and Prejudice', 'Romance', 3.00, 'yes', 'Jane Austen', 'T. Egerton'),
('ISBN005', 'The Catcher in the Rye', 'Fiction', 3.25, 'yes', 'J.D. Salinger', 'Little, Brown and Company'),
('ISBN006', 'The Hobbit', 'Fantasy', 4.25, 'yes', 'J.R.R. Tolkien', 'George Allen & Unwin'),
('ISBN007', 'Fahrenheit 451', 'Dystopian', 3.80, 'no', 'Ray Bradbury', 'Ballantine Books'),
('ISBN008', 'Moby Dick', 'Adventure', 3.60, 'yes', 'Herman Melville', 'Harper & Brothers'),
('ISBN009', 'War and Peace', 'Historical', 4.50, 'yes', 'Leo Tolstoy', 'The Russian Messenger'),
('ISBN010', 'The Odyssey', 'Epic', 3.90, 'yes', 'Homer', 'Ancient Greece');

select * from books;

INSERT INTO Customer VALUES
(301, 'John Doe', '12 Elm St, Springfield', '2020-01-15'),
(302, 'Jane Smith', '34 Oak St, Riverside', '2019-07-20'),
(303, 'Emily Johnson', '56 Pine St, Centerville', '2021-05-12'),
(304, 'Michael Brown', '78 Maple St, Lakeview', '2020-09-30'),
(305, 'Sarah Davis', '90 Cedar St, Brookfield', '2018-03-25'),
(306, 'Chris Wilson', '23 Birch St, Fairview', '2021-11-05'),
(307, 'Patricia Moore', '45 Walnut St, Midtown', '2019-12-10'),
(308, 'Robert Taylor', '67 Spruce St, Oldtown', '2022-02-18'),
(309, 'Linda Anderson', '89 Aspen St, Hilltop', '2020-06-22'),
(310, 'James Thomas', '101 Chestnut St, Westside', '2017-08-15');

INSERT INTO IssueStatus VALUES
(401, 301, 'The Great Gatsby', '2023-05-01', 'ISBN001'),
(402, 302, 'To Kill a Mockingbird', '2023-04-15', 'ISBN002'),
(403, 303, '1984', '2023-03-10', 'ISBN003'),
(404, 304, 'Pride and Prejudice', '2023-02-20', 'ISBN004'),
(405, 305, 'The Catcher in the Rye', '2023-01-25', 'ISBN005'),
(406, 306, 'The Hobbit', '2023-05-10', 'ISBN006'),
(407, 307, 'Fahrenheit 451', '2023-04-05', 'ISBN007'),
(408, 308, 'Moby Dick', '2023-03-15', 'ISBN008'),
(409, 309, 'War and Peace', '2023-02-10', 'ISBN009'),
(410, 310, 'The Odyssey', '2023-01-30', 'ISBN010');

select * from IssueStatus;

INSERT INTO ReturnStatus VALUES
(501, 301, 'The Great Gatsby', '2023-05-15', 'ISBN001'),
(502, 302, 'To Kill a Mockingbird', '2023-04-30', 'ISBN002'),
(503, 303, '1984', '2023-03-25', 'ISBN003'),
(504, 304, 'Pride and Prejudice', '2023-03-05', 'ISBN004'),
(505, 305, 'The Catcher in the Rye', '2023-02-10', 'ISBN005'),
(506, 306, 'The Hobbit', '2023-05-20', 'ISBN006'),
(507, 307, 'Fahrenheit 451', '2023-04-15', 'ISBN007'),
(508, 308, 'Moby Dick', '2023-03-25', 'ISBN008'),
(509, 309, 'War and Peace', '2023-02-20', 'ISBN009'),
(510, 310, 'The Odyssey', '2023-02-15', 'ISBN010');

SHOW TABLES;

SELECT Book_title, Category, Rental_Price
FROM Books
WHERE Status = 'yes';

SELECT Emp_name, Salary
FROM Employee
ORDER BY Salary DESC;


SELECT 
    ISU.Issued_book_name AS Book_Title,
    C.Customer_name AS Customer_Name
FROM 
    IssueStatus ISU
JOIN 
    Customer C ON ISU.Issued_cust = C.Customer_Id;

SELECT 
    Category, 
    COUNT(*) AS Total_Books
FROM 
    Books
GROUP BY 
    Category;
    
    SELECT 
    Emp_name, 
    Position
FROM 
    Employee
WHERE 
    Salary > 50000;
    
    SELECT 
    C.Customer_name
FROM 
    Customer C
LEFT JOIN 
    IssueStatus I ON C.Customer_Id = I.Issued_cust
WHERE 
    C.Reg_date < '2022-01-01'
    AND I.Issued_cust IS NULL;



SELECT 
    Branch_no, 
    COUNT(*) AS Total_Employees
FROM 
    Employee
GROUP BY 
    Branch_no;

SELECT 
    C.Customer_name
FROM 
    IssueStatus I
JOIN 
    Customer C ON I.Issued_cust = C.Customer_Id
WHERE 
    I.Issue_date BETWEEN '2023-06-01' AND '2023-06-30';
    
SELECT 
    Book_title
FROM 
    Books
WHERE 
    LOWER(Book_title) LIKE '%history%';
    
SELECT 
    Branch_no, 
    COUNT(*) AS Employee_Count
FROM 
    Employee
GROUP BY 
    Branch_no
HAVING 
    COUNT(*) > 5;
    
SELECT 
    E.Emp_name AS Manager_Name,
    B.Branch_address
FROM 
    Branch B
JOIN 
    Employee E ON B.Manager_Id = E.Emp_Id;
    
SELECT DISTINCT
    C.Customer_name
FROM 
    Customer C
JOIN 
    IssueStatus I ON C.Customer_Id = I.Issued_cust
JOIN 
    Books B ON I.Isbn_book = B.ISBN
WHERE 
    B.Rental_Price > 25;





