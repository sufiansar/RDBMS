-- Active: 1747414888185@@127.0.0.1@5432@students@public
CREATE TABLE student2 (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    grade CHAR(2),
    course VARCHAR(100),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO
    student2 (
        student_id,
        first_name,
        last_name,
        age,
        grade,
        course,
        email,
        dob,
        blood_group,
        country
    )
VALUES (
        1,
        'Alice',
        'Johnson',
        20,
        'A+',
        'Computer Science',
        'alice.johnson@example.com',
        '2004-03-15',
        'O+',
        'USA'
    ),
    (
        2,
        'Bob',
        'Smith',
        21,
        'B',
        'Physics',
        'bob.smith@example.com',
        '2003-11-02',
        'A-',
        'Canada'
    ),
    (
        3,
        'Charlie',
        'Brown',
        22,
        'C',
        'Mathematics',
        'charlie.brown@example.com',
        '2002-05-28',
        'B+',
        'UK'
    ),
    (
        4,
        'Diana',
        'Prince',
        23,
        'A',
        'Biology',
        'diana.prince@example.com',
        '2001-12-01',
        'O-',
        'Australia'
    ),
    (
        5,
        'Ethan',
        'Clark',
        19,
        'B+',
        'Chemistry',
        'ethan.clark@example.com',
        '2005-07-10',
        'AB+',
        'Germany'
    ),
    (
        6,
        'Fiona',
        'Davis',
        20,
        'A',
        'Economics',
        'fiona.davis@example.com',
        '2004-02-20',
        'B-',
        'India'
    ),
    (
        7,
        'George',
        'Miller',
        22,
        'C+',
        'History',
        'george.miller@example.com',
        '2002-09-14',
        'O+',
        'USA'
    ),
    (
        8,
        'Hannah',
        'White',
        21,
        'B-',
        'Philosophy',
        'hannah.white@example.com',
        '2003-06-18',
        'A+',
        'Canada'
    ),
    (
        9,
        'Ian',
        'Lee',
        24,
        'A-',
        'Engineering',
        'ian.lee@example.com',
        '2000-08-05',
        'O-',
        'South Korea'
    ),
    (
        10,
        'Julia',
        'King',
        20,
        'A+',
        'Medicine',
        'julia.king@example.com',
        '2004-01-30',
        'AB-',
        'UK'
    ),
    (
        11,
        'Kevin',
        'Adams',
        23,
        'B',
        'Architecture',
        'kevin.adams@example.com',
        '2001-04-12',
        'B+',
        'France'
    ),
    (
        12,
        'Laura',
        'Young',
        22,
        'C',
        'Statistics',
        'laura.young@example.com',
        '2002-11-23',
        'A-',
        'Japan'
    ),
    (
        13,
        'Mike',
        'Nelson',
        21,
        'B+',
        'Art',
        'mike.nelson@example.com',
        '2003-10-09',
        'O+',
        'Italy'
    ),
    (
        14,
        'Nina',
        'Scott',
        20,
        'A-',
        'Law',
        'nina.scott@example.com',
        '2004-05-19',
        'B-',
        'Brazil'
    ),
    (
        15,
        'Oscar',
        'Turner',
        19,
        'C+',
        'Political Science',
        'oscar.turner@example.com',
        '2005-12-17',
        'AB+',
        'Mexico'
    );

SELECT * FROM student2;

-- when the saw email form the student table then email change to "Student Email"SELECT email as "student Email" from student2;
SELECT email as "student Email", age from student2;

-- sorting by Order by query
SELECT * FROM student2 ORDER BY age ASC;

/*
DISTINCT is used to eliminate duplicate rows from the result set.
It ensures that each row returned is unique.
*/
SELECT DISTINCT blood_group FROM student2;

SELECT DISTINCT age FROM student2;

SELECT DISTINCT country FROM student2;

/* data filtering
select students from usa
seelect students with 'A' grade in physics
select students with a specific blood_group ('A+)
select students from the USA OR Austrialia
select students from the USA or from austrialia and age is 20
select studens with a grade of ('A') Or 'B' in math OR Physics

*/
-- select students from usa
SELECT * FROM student2 WHERE country = 'USA'

--  seelect students with 'A' grade in Biology   --
SELECT *
FROM student2
WHERE
    grade = 'A'
    AND course = 'Biology'

-- select students with a specific blood_group ('A+)
SELECT * FROM student2 WHERE blood_group = 'A+'

-- select students from the USA OR Australia

SELECT *
FROM student2
WHERE
    country = 'USA'
    OR country = 'Australia'

SELECT * FROM student2;

-- select students from the USA or from austrialia and age is 20

SELECT *
FROM student2
WHERE (
        country = 'USA'
        OR country = 'Australia'
    )
    AND age = 20

-- select studens with a grade of ('A') Or 'B' in math OR Physics

SELECT *
FROM student2
WHERE (
        course = 'Math'
        OR course = 'Physics'
    )
    AND grade IN ('A', 'B')