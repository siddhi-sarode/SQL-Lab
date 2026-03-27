-- Create a new database named 'college'
CREATE DATABASE college;

-- Use the newly created database
USE college;

-- Create a table named 'students' with name, admission_date, and email fields
CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,      -- Unique ID for each student
    name VARCHAR(50),                       -- Student’s name
    admission_date DATE,                    -- Date of admission
    email VARCHAR(100)                      -- Student’s email address
);
-- Insert sample student records into the students table
INSERT INTO students (name, admission_date, email)
VALUES 
('Rahul Sharma', '2023-07-10', 'rahul.sharma@gmail.com'),
('Anita Verma', '2022-11-25', 'anita.v@outlook.com'),
('Ravi Singh', '2021-01-15', 'ravi_singh@yahoo.com'),
('Sneha Patel', '2023-05-02', 'sneha.patel@gmail.com');
-- 1. Display name in uppercase
SELECT UPPER(name) AS upper_name FROM students;
-- UPPER() converts all characters to uppercase

-- 2. Display name in lowercase
SELECT LOWER(name) AS lower_name FROM students;
-- LOWER() converts all characters to lowercase

-- 3. Find the length of each name
SELECT name, LENGTH(name) AS name_length FROM students;
-- LENGTH() returns number of characters (bytes) in the string

-- 4. Extract first 5 characters of each name
SELECT name, LEFT(name, 5) AS first_five_chars FROM students;
-- LEFT(str, n) returns first n characters from the string

-- 5. Extract domain name from email address
SELECT email, SUBSTRING_INDEX(email, '@', -1) AS domain_name FROM students;
-- SUBSTRING_INDEX(str, delim, count): returns substring after '@' when count = -1

-- 6. Concatenate name and email into one string
SELECT CONCAT(name, ' - ', email) AS student_info FROM students;
-- CONCAT() joins multiple strings together




-- 1. Show current date
SELECT CURDATE() AS today_date;
-- CURDATE() gives today’s date (YYYY-MM-DD)

-- 2. Show current time
SELECT CURTIME() AS time;
-- CURTIME() gives current time (HH:MM:SS)

-- 3. Show current date and time
SELECT NOW() AS current_datetime;
-- NOW() returns both date and time

-- 4. Extract year, month, and day from admission_date
SELECT 
    name,
    YEAR(admission_date) AS year_joined,
    MONTH(admission_date) AS month_joined,
    DAY(admission_date) AS day_joined
FROM students;
-- YEAR(), MONTH(), DAY() extract respective parts of a date

-- 5. Add 30 days to each admission_date
SELECT 
    name, 
    admission_date, 
    DATE_ADD(admission_date, INTERVAL 30 DAY) AS after_30_days
FROM students;
-- DATE_ADD(date, INTERVAL n DAY) adds given days to a date

-- 6. Find how many days each student has been enrolled
SELECT 
    name, 
    DATEDIFF(CURDATE(), admission_date) AS days_enrolled
FROM students;
-- DATEDIFF(date1, date2) gives number of days between two dates






-- 1. Display current timestamp in formatted way
SELECT DATE_FORMAT(NOW(), '%W, %D %M %Y %h:%i %p') AS formatted_datetime;
-- DATE_FORMAT() formats date/time using format specifiers (like in C)

-- 2. Find weekday name of admission date
SELECT 
    name, 
    DAYNAME(admission_date) AS admission_day
FROM students;
-- DAYNAME() returns the name of the weekday (e.g., Monday)

-- 3. Extract month name from admission date
SELECT 
    name, 
    MONTHNAME(admission_date) AS month_name
FROM students;
-- MONTHNAME() returns name of month

