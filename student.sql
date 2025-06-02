CREATE database student ;
USE student;
CREATE TABLE subjects (
  subject_id INT AUTO_INCREMENT PRIMARY KEY,
  subject_code VARCHAR(50) NOT NULL,
  subject_name VARCHAR(100) NOT NULL,
  batchYear INT NOT NULL,
  semester INT NOT NULL
);
drop database studen;


desc subjects;
show tables;
select * from subjects;

INSERT INTO subjects (subject_code, subject_name, batchYear, semester)
VALUES 
    ('HS3152', 'Professional English - I',2025,1),
    ('MA3151', 'Matrices and Calculus ',2025,1),
    ('PH3151',' Engineering Physics',2025,1),
    ('CY3151', 'Engineering Chemistry',2025,1),
    ('GE3151', 'Problem Solving and Python Programming', 2025, 1),
    ('GE3152', 'தமிழர்மரபு /Heritage of Tamils', 2025, 1),
  --	INSERT INTO subject (subject_code, subject_name, batch_year, semester) VALUES  
    ('S3252', 'Professional English - II', 2025, 2),
    ('MA3251', 'Statistics and Numerical Methods',2025,2),
    ('PH3256', 'Physics for Information Science',2025,2),
    ('BE3251', 'Basic Electrical and Electronics Engineering',2025,2),
	('GE3251', 'Engineering Graphics',2025,2),
    ('CS3251',  'Programming in C',2025,2),
    ('GE3252', 'தமிழரும் ததொழில்நுட்பமும்/Tamils and Technology',2025,2),
   --	INSERT INTO subject (subject_code, subject_name, batch_year, semester) VALUES 
    ('MA3354', 'Discrete Mathematics',2025,3), 
    ('CS3351',  'DPCO',2025,3),
    ('CS3352', 'Foundations of Data Science ',2025, 3),
	('CS3301',  'Data Structures',2025,3), 
	('CS3391', 'Object Oriented Programming',2025,3),
	--	INSERT INTO subject (subject_code, subject_name, batch_year, semester) VALUES
	('CS3452', 'Theory of Computation', 2025, 4),
	('CS3491', 'Artificial Intelligence and Machine Learning', 2025, 4),
	('CS3492', 'Database Management Systems', 2025, 4),
	('CS3401', 'Algorithms', 2025, 4),
	('CS3451', 'Introduction to Operating Systems', 2025, 4),
	('GE3451', 'Environmental Sciences and Sustainability', 2023, 4),
    
 --   INSERT INTO subject (subject_code, subject_name, batch_year, semester) VALUES
	('CS3591', 'Computer Networks', 2025, 5),
	('CS3501', 'Compiler Design', 2025, 5),
	('CB3491', 'Cryptography and Cyber Security', 2025, 5),
	('CS3551', 'Distributed Computing', 2025, 5),
    ('CCS366', 'Software Testing and Automation', 2025, 5),
	('CCS375', 'Web Technologies', 2025, 5),
    
--      INSERT INTO subject (subject_code, subject_name, batch_year, semester) VALUES
	('CCS356', 'Object Oriented Software Engineering', 2023, 6),
	('CS3691', 'Embedded Systems and IoT', 2025, 6),
	('CCS354', 'Network Security', 2025, 6),
	('CCW331', 'Business Analytics', 2025, 6),
	('CCS372', 'Virtualization', 2025, 6),
	('CCS341', 'Data Warehousing', 2025, 6),
    
--		INSERT INTO subject (subject_code, subject_name, batch_year, semester) VALUES
	('GE3791', 'Human Values and Ethics', 2025, 7),
	('CME365', 'Renewable Energy Technologies', 2025,7),
	('GE3752', 'Total Quality Management',  2025,7),
	('AI3021', 'IT in Agricultural System',  2025,7),
--		INSERT INTO subject (subject_code, subject_name, batch_year, semester) VALUES
	('CS3811', 'Project Work/Internship', 2025, 8);
  
  select * from subjects;


