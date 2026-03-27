CREATE DATABASE library;
USE library;
CREATE TABLE Books (
    Book_ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100),
    Publisher VARCHAR(100),
    Genre VARCHAR(50),
    Year_Published INT,
    Copies_Available INT
);
CREATE TABLE Members (
    Member_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    Address VARCHAR(200),
    Membership_Date DATE
);
CREATE TABLE Transactions (
    Transaction_ID INT AUTO_INCREMENT PRIMARY KEY,
    Member_ID INT,
    Book_ID INT,
    Issue_Date DATE,
    Due_Date DATE,
    Return_Date DATE,
    FOREIGN KEY (Member_ID) REFERENCES Members(Member_ID),
    FOREIGN KEY (Book_ID) REFERENCES Books(Book_ID)
);
-- Insert books
INSERT INTO Books (Title, Author, Publisher, Genre, Year_Published, Copies_Available)
VALUES 
('The Alchemist', 'Paulo Coelho', 'HarperOne', 'Fiction', 1988, 5),
('Clean Code', 'Robert C. Martin', 'Prentice Hall', 'Programming', 2008, 3),
('Wings of Fire', 'A.P.J. Abdul Kalam', 'Universities Press', 'Autobiography', 1999, 4);

-- Insert members
INSERT INTO Members (Name, Email, Phone, Address, Membership_Date)
VALUES 
('Rahul Sharma', 'rahul@example.com', '9876543210', 'Pune, India', '2025-01-15'),
('Sneha Patil', 'sneha@example.com', '9123456780', 'Mumbai, India', '2025-02-10');

-- Insert transactions
INSERT INTO Transactions (Member_ID, Book_ID, Issue_Date, Due_Date, Return_Date)
VALUES 
(1, 2, '2025-09-01', '2025-09-15', NULL),
(2, 1, '2025-09-05', '2025-09-20', '2025-09-18');
