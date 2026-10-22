CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    institute VARCHAR(50)
);

CREATE TABLE Teacher (
    teacher_id INT PRIMARY KEY,
    teacher_name VARCHAR(100),
    institute VARCHAR(50)
);

CREATE TABLE Course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    teacher_id INT,
    FOREIGN KEY (teacher_id) REFERENCES Teacher(teacher_id)
);
INSERT INTO Student VALUES
(1, 'Ali', 'Rezaei', 'Ghalamchi'),
(2, 'Sara', 'Ahmadi', 'Gaj'),
(3, 'Ali', 'Rezaei', 'Gaj'),
(4, 'Reza', 'Karimi', 'Ghalamchi');

INSERT INTO Teacher VALUES
(1, 'Mohammadi', 'Ghalamchi'),
(2, 'Ahmadi', 'Gaj');

INSERT INTO Course VALUES
(1, 'Math', 1),
(2, 'Physics', 2);
SELECT
    s1.first_name,
    s1.last_name
FROM Student s1
INNER JOIN Student s2
    ON s1.first_name = s2.first_name
    AND s1.last_name = s2.last_name
WHERE s1.institute = 'Ghalamchi'
  AND s2.institute = 'Gaj';