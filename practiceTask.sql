-- Active: 1747414888185@@127.0.0.1@5432@person2@public
CREATE Table students2 (
    student_id INT PRIMARY KEY,
    roll INT UNIQUE,
    name VARCHAR(50),
    age INT,
    department VARCHAR(100),
    score INT,
    status BOOLEAN,
    last_login DATE
)

INSERT INTO
    students2 (
        student_id,
        roll,
        name,
        age,
        department,
        score,
        status,
        last_login
    )
VALUES (
        1,
        101,
        'Ahmed',
        20,
        'Computer Science',
        85,
        TRUE,
        '2025-05-01'
    ),
    (
        2,
        102,
        'Omar',
        22,
        'Electrical Engineering',
        78,
        TRUE,
        '2025-05-02'
    ),
    (
        3,
        103,
        'Fatima',
        21,
        'Mechanical Engineering',
        90,
        FALSE,
        '2025-05-03'
    ),
    (
        4,
        104,
        'Hassan',
        23,
        'Civil Engineering',
        67,
        TRUE,
        '2025-05-04'
    ),
    (
        5,
        105,
        'Aisha',
        20,
        'Computer Science',
        88,
        TRUE,
        '2025-05-05'
    ),
    (
        6,
        106,
        'Yusuf',
        21,
        'Electrical Engineering',
        74,
        FALSE,
        '2025-05-06'
    ),
    (
        7,
        107,
        'Zainab',
        22,
        'Mechanical Engineering',
        95,
        TRUE,
        '2025-05-07'
    ),
    (
        8,
        108,
        'Bilal',
        23,
        'Civil Engineering',
        70,
        TRUE,
        '2025-05-08'
    ),
    (
        9,
        109,
        'Maryam',
        20,
        'Computer Science',
        82,
        FALSE,
        '2025-05-09'
    ),
    (
        10,
        110,
        'Ibrahim',
        21,
        'Electrical Engineering',
        79,
        TRUE,
        '2025-05-10'
    ),
    (
        11,
        111,
        'Khadija',
        22,
        'Mechanical Engineering',
        86,
        FALSE,
        '2025-05-11'
    ),
    (
        12,
        112,
        'Salman',
        23,
        'Civil Engineering',
        72,
        TRUE,
        '2025-05-12'
    ),
    (
        13,
        113,
        'Ali',
        20,
        'Computer Science',
        80,
        TRUE,
        '2025-05-13'
    ),
    (
        14,
        114,
        'Sufian',
        21,
        'Computer Science',
        77,
        FALSE,
        '2025-05-14'
    ),
    (
        15,
        115,
        'Mohammed',
        22,
        'Mechanical Engineering',
        92,
        TRUE,
        '2025-05-15'
    ),
    (
        16,
        116,
        'Tariq',
        23,
        'Civil Engineering',
        69,
        FALSE,
        '2025-05-16'
    ),
    (
        17,
        117,
        'Nadia',
        20,
        'Computer Science',
        84,
        TRUE,
        '2025-05-17'
    ),
    (
        18,
        118,
        'Mustafa',
        21,
        'Electrical Engineering',
        76,
        FALSE,
        '2025-05-18'
    ),
    (
        19,
        119,
        'Sumaya',
        22,
        'Mechanical Engineering',
        89,
        TRUE,
        '2025-05-19'
    ),
    (
        20,
        120,
        'Farhan',
        23,
        'Civil Engineering',
        71,
        TRUE,
        '2025-05-20'
    );

SELECT * FROM students2

-- Add a column email (VARCHAR) to the existing students table.
ALTER TABLE students2 ADD email VARCHAR(100);
-- Rename the column email to student_email.
ALTER TABLE students2 RENAME email to student_email;

-- Add a UNIQUE constraint to student_email.
ALTER TABLE students2
ADD CONSTRAINT unique_email UNIQUE (student_email);

-- create course table
CREATE TABLE courses (
    course_id INT,
    course_name VARCHAR(100),
    instructor VARCHAR(100),
    credits INT,
    department VARCHAR(50)
);

INSERT INTO
    courses (
        course_id,
        course_name,
        instructor,
        credits,
        department
    )
VALUES (
        101,
        'Introduction to CS',
        'Dr. Alice Karim',
        3,
        'Computer Sci'
    ),
    (
        102,
        'Calculus I',
        'Dr. Bashir Khan',
        4,
        'Mathematics'
    ),
    (
        103,
        'English Literature',
        'Prof. Sara Alam',
        3,
        'Humanities'
    ),
    (
        104,
        'Physics I',
        'Dr. Tareq Rahman',
        4,
        'Physics'
    ),
    (
        105,
        'Web Development',
        'Mr. Nasir Uddin',
        3,
        'IT'
    );

SELECT * FROM courses

-- Add a PRIMARY KEY to a new table named courses.
ALTER TABLE courses ADD constraint course_id PRIMARY key (course_id);

-- Drop a column from any existing table.
ALTER TABLE courses DROP COLUMN credits;

ALTER TABLE courses
ADD COLUMN email VARCHAR(100) DEFAULT 'Email Not Provid';

ALTER TABLE courses DROP COLUMN email;
-- Write a query to find all students who have a score greater than 80 and not null.
SELECT * FROM students2 WHERE score >= 80 AND NOT NULL;

SELECT * FROM students2;

-- Use the NOT operator to exclude students from a specific department.
SELECT * FROM students2 WHERE department = 'Computer Science';

SELECT * FROM students2 WHERE NOT department = 'Computer Science';

-- Fetch students whose names start with ‘A’ using LIKE and ILIKE.

SELECT
    COALESCE(student_email, 'not Provided') AS "Email",
    age,
    department,
    name as "Student_Name"
FROM students2;

SELECT * FROM students2 WHERE age in (23, 24, 19, 21);

SELECT * FROM students2 WHERE NOT age in (23, 24, 19, 21);

SELECT * FROM students2;

SELECT * FROM students2 WHERE age BETWEEN 19 and 23;

SELECT * FROM students2 WHERE name LIKE 'S%';

-- pagination
SELECT * FROM students2 LIMIT 5 OFFSET 5 * 0;

SELECT * FROM students2 LIMIT 5 OFFSET 5 * 1;

SELECT * FROM students2 LIMIT 5 OFFSET 5 * 2;

SELECT * FROM students2 LIMIT 5 OFFSET 5 * 3;

SELECT * FROM students2 LIMIT 5 OFFSET 5 * 4;