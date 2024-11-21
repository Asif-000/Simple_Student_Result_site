-- Create the database
CREATE DATABASE IF NOT EXISTS student_portal;

-- Use the database
USE student_portal;

-- Create the `users` table
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL
);

-- Insert sample data into `users` (10 students)
INSERT INTO users (username, password)
VALUES 
    ('student1', 'password1'),
    ('student2', 'password2'),
    ('student3', 'password3'),
    ('student4', 'password4'),
    ('student5', 'password5'),
    ('student6', 'password6'),
    ('student7', 'password7'),
    ('student8', 'password8'),
    ('student9', 'password9'),
    ('student10', 'password10');

-- Create the `results` table
CREATE TABLE IF NOT EXISTS results (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    subject VARCHAR(100) NOT NULL,
    grade VARCHAR(10) NOT NULL,
    FOREIGN KEY (username) REFERENCES users(username)
);

-- Insert results for 10 students (8 subjects each)
INSERT INTO results (username, subject, grade)
VALUES 
    -- Results for Student 1
    ('student1', 'Mathematics', 'A'),
    ('student1', 'English', 'B+'),
    ('student1', 'Science', 'A-'),
    ('student1', 'History', 'A'),
    ('student1', 'Geography', 'B'),
    ('student1', 'Physics', 'A'),
    ('student1', 'Chemistry', 'A+'),
    ('student1', 'Biology', 'B+'),
    
    -- Results for Student 2
    ('student2', 'Mathematics', 'B'),
    ('student2', 'English', 'A-'),
    ('student2', 'Science', 'A'),
    ('student2', 'History', 'B+'),
    ('student2', 'Geography', 'A'),
    ('student2', 'Physics', 'B+'),
    ('student2', 'Chemistry', 'A-'),
    ('student2', 'Biology', 'A'),
    
    -- Results for Student 3
    ('student3', 'Mathematics', 'A'),
    ('student3', 'English', 'A+'),
    ('student3', 'Science', 'A'),
    ('student3', 'History', 'A'),
    ('student3', 'Geography', 'A+'),
    ('student3', 'Physics', 'A'),
    ('student3', 'Chemistry', 'A+'),
    ('student3', 'Biology', 'A+'),
    
    -- Results for Student 4
    ('student4', 'Mathematics', 'B+'),
    ('student4', 'English', 'A'),
    ('student4', 'Science', 'A-'),
    ('student4', 'History', 'B'),
    ('student4', 'Geography', 'B+'),
    ('student4', 'Physics', 'B+'),
    ('student4', 'Chemistry', 'B'),
    ('student4', 'Biology', 'A-'),
    
    -- Results for Student 5
    ('student5', 'Mathematics', 'A'),
    ('student5', 'English', 'B+'),
    ('student5', 'Science', 'A+'),
    ('student5', 'History', 'A'),
    ('student5', 'Geography', 'A-'),
    ('student5', 'Physics', 'A+'),
    ('student5', 'Chemistry', 'A'),
    ('student5', 'Biology', 'B'),
    
    -- Results for Student 6
    ('student6', 'Mathematics', 'A-'),
    ('student6', 'English', 'A'),
    ('student6', 'Science', 'B+'),
    ('student6', 'History', 'A'),
    ('student6', 'Geography', 'A-'),
    ('student6', 'Physics', 'A'),
    ('student6', 'Chemistry', 'B+'),
    ('student6', 'Biology', 'A+'),
    
    -- Results for Student 7
    ('student7', 'Mathematics', 'B'),
    ('student7', 'English', 'B+'),
    ('student7', 'Science', 'A'),
    ('student7', 'History', 'A+'),
    ('student7', 'Geography', 'A'),
    ('student7', 'Physics', 'A-'),
    ('student7', 'Chemistry', 'A'),
    ('student7', 'Biology', 'A+'),
    
    -- Results for Student 8
    ('student8', 'Mathematics', 'A+'),
    ('student8', 'English', 'A'),
    ('student8', 'Science', 'A+'),
    ('student8', 'History', 'A'),
    ('student8', 'Geography', 'A'),
    ('student8', 'Physics', 'A+'),
    ('student8', 'Chemistry', 'A'),
    ('student8', 'Biology', 'A+'),
    
    -- Results for Student 9
    ('student9', 'Mathematics', 'B+'),
    ('student9', 'English', 'A'),
    ('student9', 'Science', 'A'),
    ('student9', 'History', 'B'),
    ('student9', 'Geography', 'A-'),
    ('student9', 'Physics', 'B+'),
    ('student9', 'Chemistry', 'B'),
    ('student9', 'Biology', 'A-'),
    
    -- Results for Student 10
    ('student10', 'Mathematics', 'A'),
    ('student10', 'English', 'A+'),
    ('student10', 'Science', 'B+'),
    ('student10', 'History', 'A'),
    ('student10', 'Geography', 'A+'),
    ('student10', 'Physics', 'A'),
    ('student10', 'Chemistry', 'A+'),
    ('student10', 'Biology', 'A');
