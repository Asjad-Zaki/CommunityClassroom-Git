-- Create database and use it
CREATE database student;
USE student;

-- Create subjects table with branch column
CREATE TABLE subjects (
  subject_id INT AUTO_INCREMENT PRIMARY KEY,
  subject_code VARCHAR(50) NOT NULL,
  subject_name VARCHAR(100) NOT NULL,
  batchYear INT NOT NULL,
  semester INT NOT NULL,
  branch VARCHAR(50) NOT NULL
);
-- Add a branch column to the existing subjects table
ALTER TABLE subjects ADD COLUMN branch VARCHAR(50);

UPDATE subjects SET branch = 'CSE' WHERE subject_id > 0;
-- Insert all subjects with 'CSE' branch
INSERT INTO subjects (subject_code, subject_name, batchYear, semester, branch)
VALUES 
    ('HS3152', 'Professional English - I', 2025, 1, 'CSE'),
    ('MA3151', 'Matrices and Calculus', 2025, 1, 'CSE'),
    ('PH3151', 'Engineering Physics', 2025, 1, 'CSE'),
    ('CY3151', 'Engineering Chemistry', 2025, 1, 'CSE'),
    ('GE3151', 'Problem Solving and Python Programming', 2025, 1, 'CSE'),
    ('GE3152', 'தமிழர்மரபு /Heritage of Tamils', 2025, 1, 'CSE'),
    -- Semester 2
    ('S3252', 'Professional English - II', 2025, 2, 'CSE'),
    ('MA3251', 'Statistics and Numerical Methods', 2025, 2, 'CSE'),
    ('PH3256', 'Physics for Information Science', 2025, 2, 'CSE'),
    ('BE3251', 'Basic Electrical and Electronics Engineering', 2025, 2, 'CSE'),
    ('GE3251', 'Engineering Graphics', 2025, 2, 'CSE'),
    ('CS3251', 'Programming in C', 2025, 2, 'CSE'),
    ('GE3252', 'தமிழரும் ததொழில்நுட்பமும்/Tamils and Technology', 2025, 2, 'CSE'),
    -- Semester 3
    ('MA3354', 'Discrete Mathematics', 2025, 3, 'CSE'),
    ('CS3351', 'DPCO', 2025, 3, 'CSE'),
    ('CS3352', 'Foundations of Data Science', 2025, 3, 'CSE'),
    ('CS3301', 'Data Structures', 2025, 3, 'CSE'),
    ('CS3391', 'Object Oriented Programming', 2025, 3, 'CSE'),
    -- Semester 4
    ('CS3452', 'Theory of Computation', 2025, 4, 'CSE'),
    ('CS3491', 'Artificial Intelligence and Machine Learning', 2025, 4, 'CSE'),
    ('CS3492', 'Database Management Systems', 2025, 4, 'CSE'),
    ('CS3401', 'Algorithms', 2025, 4, 'CSE'),
    ('CS3451', 'Introduction to Operating Systems', 2025, 4, 'CSE'),
    ('GE3451', 'Environmental Sciences and Sustainability', 2023, 4, 'CSE'),
    -- Semester 5
    ('CS3591', 'Computer Networks', 2025, 5, 'CSE'),
    ('CS3501', 'Compiler Design', 2025, 5, 'CSE'),
    ('CB3491', 'Cryptography and Cyber Security', 2025, 5, 'CSE'),
    ('CS3551', 'Distributed Computing', 2025, 5, 'CSE'),
    ('CCS366', 'Software Testing and Automation', 2025, 5, 'CSE'),
    ('CCS375', 'Web Technologies', 2025, 5, 'CSE'),
    -- Semester 6
    ('CCS356', 'Object Oriented Software Engineering', 2023, 6, 'CSE'),
    ('CS3691', 'Embedded Systems and IoT', 2025, 6, 'CSE'),
    ('CCS354', 'Network Security', 2025, 6, 'CSE'),
    ('CCW331', 'Business Analytics', 2025, 6, 'CSE'),
    ('CCS372', 'Virtualization', 2025, 6, 'CSE'),
    ('CCS341', 'Data Warehousing', 2025, 6, 'CSE'),
    -- Semester 7
    ('GE3791', 'Human Values and Ethics', 2025, 7, 'CSE'),
    ('CME365', 'Renewable Energy Technologies', 2025, 7, 'CSE'),
    ('GE3752', 'Total Quality Management', 2025, 7, 'CSE'),
    ('AI3021', 'IT in Agricultural System', 2025, 7, 'CSE'),
    -- Semester 8
    ('CS3811', 'Project Work/Internship', 2025, 8, 'CSE');

-- Show the table structure
DESC subjects;

-- Show all tables in the database
SHOW tables;
-- Temporarily disable safe update mode
SET SQL_SAFE_UPDATES = 0;

-- [All the commands above]

-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;
DELETE FROM subjects;
-- Display all data
SELECT * FROM subjects;