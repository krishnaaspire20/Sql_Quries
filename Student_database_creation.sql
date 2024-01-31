create database Student_detials;
use Student_detials;
CREATE TABLE Student (
    student_id INT NOT NULL,
    student_name VARCHAR(50),
    age INT,
    gender VARCHAR(10),
    major VARCHAR(50),
    GPA DECIMAL(3, 2)
);
ALTER TABLE student  
ADD PRIMARY KEY (student_id);
CREATE TABLE Department (
    department_id INT,
    department_name VARCHAR(20),
    student_id INT NOT NULL,
    
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);
INSERT INTO Student (student_id, student_name, age, gender, major, GPA) VALUES
(1, 'John Doe', 20, 'Male', 'Computer Science', 3.75),
(2, 'Jane Smith', 21, 'Female', 'Biology', 3.90),
(3, 'Bob Johnson', 22, 'Male', 'History', 3.20),
(4, 'Alice Brown', 19, 'Female', 'Mathematics', 3.50),
(5, 'Charlie White', 20, 'Male', 'Psychology', 3.80),
(6, 'Emily Davis', 21, 'Female', 'Chemistry', 3.65),
(7, 'Frank Miller', 22, 'Male', 'English Literature', 3.40),
(8, 'Grace Wilson', 20, 'Female', 'Physics', 3.95),
(9, 'David Lee', 21, 'Male', 'Political Science', 3.30),
(10, 'Sophie Turner', 22, 'Female', 'Economics', 3.70),
(11, 'Michael Harris', 20, 'Male', 'Sociology', 3.85),
(12, 'Olivia Carter', 21, 'Female', 'Engineering', 3.45),
(13, 'Daniel Robinson', 22, 'Male', 'Communications', 3.60),
(14, 'Isabella Taylor', 20, 'Female', 'Business Administration', 3.75),
(15, 'William Anderson', 21, 'Male', 'Environmental Science', 3.55),
(16, 'Ava Johnson', 22, 'Female', 'Art History', 3.25),
(17, 'Ethan Martinez', 20, 'Male', 'Music', 3.90),
(18, 'Mia Brown', 21, 'Female', 'Drama', 3.15),
(19, 'James Wilson', 22, 'Male', 'Education', 3.80),
(20, 'Lily Smith', 20, 'Female', 'Philosophy', 3.40);

INSERT INTO Department (department_id, department_name, student_id) VALUES
(1, 'Computer Science', 1),
(2, 'Biology', 2),
(3, 'History', 3),
(1, 'Computer Science', 4),
(2, 'Biology', 5),
(3, 'History', 6),
(1, 'Computer Science', 7),
(2, 'Biology', 8),
(3, 'History', 9),
(1, 'Computer Science', 10),
(2, 'Biology', 11),
(3, 'History', 12),
(1, 'Computer Science', 13),
(2, 'Biology', 14),
(3, 'History', 15),
(1, 'Computer Science', 16),
(2, 'Biology', 17),
(3, 'History', 18),
(1, 'Computer Science', 19),
(2, 'Biology', 20);

