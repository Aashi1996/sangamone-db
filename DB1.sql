create database db1;
use db1;

DROP TABLE student;
CREATE TABLE student (
roll_no INT PRIMARY KEY,
name VARCHAR(20),
surname VARCHAR(15),
gender VARCHAR(1),
course_id INT,
year_of_admission YEAR,
college_id INT,
university_id INT
);

INSERT INTO student VALUES (181001, 'Aashi', 'Jain', 'F', 1, 2018, 140200201, 4767101); 
INSERT INTO student VALUES (191002, 'Bhavin', 'Rao', 'M', 1, 2019, 140200202, 4767102);
INSERT INTO student VALUES (181002, 'Calvin', 'Harris', 'M', 2, 2018, 140300203, 4767105);  
INSERT INTO student VALUES (201008, 'Destiny', 'Williams', 'F', 1, 2020, 140200208, 4767111);
INSERT INTO student VALUES (191011, 'Emily', 'Johnson', 'F', 2, 2019, 140201211, 4767121); 
INSERT INTO student VALUES (181201, 'George', 'Weasley', 'M', 2, 2018, 140200392, 4767230); 
INSERT INTO student VALUES (191001, 'Harry', 'Potter', 'F', 1, 2019, 140200261, 4767161); 
INSERT INTO student VALUES (191054, 'Jane', 'Davis', 'F', 1, 2019, 140200241, 4767484); 
INSERT INTO student VALUES (201053, 'Kuldeep', 'Rao', 'M', 1, 2020, 140200221, 4767982); 
INSERT INTO student VALUES (211027, 'Lakshita', 'Deshmukh', 'F', 2, 2021, 140200251, 4767654); 
INSERT INTO student VALUES (191048, 'Manav', 'Sharma', 'M', 1, 2019, 140200291, 4767897); 
INSERT INTO student VALUES (181096, 'Parth', 'Mishra', 'M', 2, 2018, 140200222, 4767141); 
INSERT INTO student VALUES (211072, 'Robert', 'Evans', 'M', 2, 2021, 140200238, 4767129);

DESCRIBE student;
SELECT * FROM student;
SELECT * FROM student ORDER BY name;
SELECT * FROM student ORDER BY name DESC;

DROP TABLE courses;

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(15)
);

ALTER TABLE student ADD FOREIGN KEY(course_id) REFERENCES courses(course_id) ON DELETE SET NULL;
DESCRIBE courses;
SELECT * FROM courses;

INSERT INTO courses VALUES (1, 'B.Pharm');
INSERT INTO courses VALUES (2, 'M.Pharm');

SELECT * FROM student WHERE gender='F' AND course_id=1 AND year_of_admission=2019;
SELECT * FROM student WHERE gender='M' AND surname='Rao';
SELECT student.name FROM student WHERE gender='M' AND surname='Rao';

