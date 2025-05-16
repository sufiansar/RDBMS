-- Active: 1747414888185@@127.0.0.1@5432@students@public
SELECT * FROM student;

ALTER TABLE student
ADD COLUMN email VARCHAR(50) DEFAULT 'sufian@gmail.com' NOT NULL;

INSERT into
    student
VALUES (
        7,
        'Iqbal',
        'America',
        'America@gmail.com'
    ),
    (
        8,
        'Usman',
        'Saudia',
        'Saudia@gmail.com'
    ),
    (
        9,
        'Ali',
        'Saudia',
        'Modina@gmail.com'
    )

ALTER Table student DROP COLUMN city;

-- rename the attributs
ALTER Table student RENAME COLUMN email to user_email;

SELECT * FROM student;

ALTER Table student alter COLUMN user_email Type VARCHAR(100);

-- ALTER TABLE student ALTER COLUMN user_email TYPE VARCHAR(100);