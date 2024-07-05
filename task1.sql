create database libarydb;
use libarydb;
CREATE TABLE Books (
    ISBN VARCHAR(20) PRIMARY KEY,
    Title VARCHAR(255),
    AuthorID INT,
    Genre VARCHAR(50),
    Available BOOLEAN
);

CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    AuthorName VARCHAR(255),
    DOB DATE,
    Nationality VARCHAR(50)
);

CREATE TABLE Borrowers (
    BorrowerID INT PRIMARY KEY,
    BorrowerName VARCHAR(255),
    Address VARCHAR(255),
    Phone VARCHAR(20)
);

INSERT INTO Authors VALUES
(1, 'rithwik', '2003-01-15', 'indian'),
(2, 'roy', '1990-03-20', 'British');

INSERT INTO Books VALUES
('123456789', 'Book1', 1, 'Fiction', TRUE),
('987654321', 'Book2', 2, 'Mystery', TRUE);

INSERT INTO Borrowers VALUES
(1, 'siddu', '42-123/2 jaipur', '1234567890'),
(2, 'venkat', '43-123/2 jaipur', '0987654321');

ALTER TABLE Books
ADD COLUMN PublishedYear INT;

UPDATE Books
SET Genre = 'Adventure'
WHERE ISBN = '123456789';

UPDATE Borrowers
SET Address = '42-145/2 jaipur'
WHERE BorrowerID = 1;

UPDATE Books
SET Available = FALSE
WHERE ISBN = '987654321';
