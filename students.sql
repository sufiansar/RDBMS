-- Active: 1747414888185@@127.0.0.1@5432@phpractice@public
-- -- Drop tables if they already exist (for resetting)
-- DROP TABLE IF EXISTS students;

-- DROP TABLE IF EXISTS departments;

-- DROP TABLE IF EXISTS courses;

-- Create departments table
CREATE TABLE departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Create students table
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    department_id INTEGER REFERENCES departments (id),
    last_login DATE
);

-- Create courses table
CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL
);

-- Insert data into departments
INSERT INTO
    departments (id, name)
VALUES (1, 'CSE'),
    (2, 'EEE'),
    (3, 'BBA'),
    (4, 'LAW'),
    (5, 'ENG');

-- Insert data into students
INSERT INTO
    students (
        id,
        name,
        department_id,
        last_login
    )
VALUES (
        1,
        'Ayaan Rahman',
        1,
        '2025-05-10'
    ),
    (
        2,
        'Fatima Yasmin',
        2,
        '2025-05-11'
    ),
    (
        3,
        'Zayd Abdullah',
        1,
        '2025-05-09'
    ),
    (
        4,
        'Maryam Hossain',
        3,
        '2025-05-08'
    ),
    (
        5,
        'Hamza Karim',
        2,
        '2025-05-07'
    ),
    (
        6,
        'Amina Chowdhury',
        4,
        '2025-05-10'
    ),
    (
        7,
        'Yusuf Mahmud',
        1,
        '2025-05-12'
    ),
    (
        8,
        'Khadija Akter',
        5,
        '2025-05-06'
    ),
    (
        9,
        'Rayyan Islam',
        3,
        '2025-05-05'
    ),
    (
        10,
        'Hafsa Nahar',
        2,
        '2025-05-11'
    );

-- Insert data into courses
INSERT INTO
    courses (id, title)
VALUES (
        1,
        'Introduction to Programming'
    ),
    (2, 'Circuit Analysis'),
    (3, 'Principles of Management'),
    (4, 'Criminal Law'),
    (5, 'English Literature'),
    (6, 'Data Structures'),
    (7, 'Digital Electronics'),
    (8, 'Marketing Basics'),
    (9, 'Constitutional Law'),
    (10, 'Academic Writing');

SELECT * FROM students;

SELECT * FROM courses;

SELECT * FROM departments;

-- Retrieve students who have logged in within the last 5 days.

SELECT *
FROM students
WHERE
    last_login >= CURRENT_DATE - INTERVAL '4 days';

-- Extract the login month from the last_login and group students by month.
SELECT EXTRACT(
        MONTH
        FROM last_login
    ) AS login_month, count(*) as student_count
FROM students
GROUP BY
    login_month
ORDER BY login_month;

-- Count how many students logged in per monthand show only those months where login count is more than 3.

SELECT
    extract(
        MONTH
        FROM last_login
    ) as last_login_month,
    count(*) as count_month
FROM students
GROUP BY
    last_login_month
HAVING
    count(*) > 3;
-- Use a LEFT JOIN to show all students including those without a department.

SELECT *
FROM students
    LEFT JOIN departments ON students.department_id = departments.id;

-- Use a RIGHT JOIN to show all departments including those without students.

SELECT departments.*, students.name AS student_name
FROM students
    RIGHT JOIN departments ON students.department_id = departments.id;

-- Perform a FULL JOIN to get all records from both students and departments.

SELECT *
FROM students
    FULL JOIN departments on students.department_id = departments.id;