-- Active: 1747414888185@@127.0.0.1@5432@person2@public
SELECT * FROM students2;

-- filter group using having to show only department with avarage age 20
SELECT department, avg(age)
FROM students2
GROUP BY
    department
HAVING
    avg(age) > 20;

-- Q2. Show departments that have more than 50 students.

SELECT department, count(*) as total_student
FROM students2
GROUP BY
    department
HAVING
    count(*) > 50;

-- Q3.List departments where the total score is greater than 5000.
SELECT department, SUM(score) as total_score
FROM students2
GROUP BY
    department
HAVING
    SUM(score) > 300;

SELECT * FROM students2;
-- Q4.Show departments where the maximum score is greater than 90.

SELECT department, max(score)
FROM students2
GROUP BY
    department
HAVING
    max(score) >= 80;

-- Q5.Find departments where the minimum age is less than 23.

SELECT department, min(age) as minimum_age
FROM students2
GROUP BY
    department
HAVING
    min(age) < 23;

-- Q6.Display departments where the number of inactive students (status = false) is more than 1.

SELECT department, count(*) as inactive_Student
FROM students2
WHERE
    status = false
GROUP BY
    department
HAVING
    count(*) > 1;

SELECT * FROM students2;

-- Q7. Show departments where average score is less than 70 .

SELECT department, avg(score)
FROM students2
GROUP BY
    department
HAVING
    avg(score) < 70;

-- Q8. List departments with exactly 5 students.

SELECT department, count(*) as exactly_students
FROM students2
GROUP BY
    department
HAVING
    count(*) = 5;

-- Q9.Find departments where the number of students who logged in after 2025 -01 -01 is more than 20.

SELECT department, count(*)
FROM students2
WHERE
    last_login > '2025 -05 -01'
GROUP BY
    department
HAVING
    count(*) > 5;

SELECT department, COUNT(*) AS recent_logins
FROM students
WHERE
    last_login > '2025-01-01'
GROUP BY
    department
HAVING
    COUNT(*) > 20;