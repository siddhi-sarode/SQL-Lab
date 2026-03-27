-- Create student_info table 
CREATE TABLE Student_info (
Student_id  INT PRIMARY KEY,
Sname VARCHAR(100),
Course_name VARCHAR(100),
City VARCHAR(100)
);student_info
-- Create Course table
CREATE TABLE Course(
C_code INT PRIMARY KEY,
Title VARCHAR(100),
HOD VARCHAR(100)
);
ALTER TABLE Student_info
ADD Phone_Number VARCHAR(15);
ALTER TABLE Student_info
ADD Email_Address VARCHAR(100);
ALTER TABLE Course
RENAME COLUMN Title To Course_name;
-- INSERT Row
INSERT INTO Student_info (Student_ID, Sname, Cours_name, City)
VALUE 
(1, "Zirpe", "AIDS", "Pune"),
(2, "Kagde", "Computer Science", "Pune"),
(3, "Sarode", "Electronics", "Beed");
-- Copy student info in new table 
CREATE TABLE Student_Copy LIKE Student_info;
CREATE TABLE Student_Copy AS
SELECT * FROM Student_info;

 
 
 
 
 
 
