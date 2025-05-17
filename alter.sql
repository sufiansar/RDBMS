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

-- delete the table
ALTER Table student DROP COLUMN city;

-- rename the attributs
ALTER Table student RENAME COLUMN email to user_email;

SELECT * FROM student;

-- change the type after varchar(50,),now it's varchar(100)
ALTER Table student alter COLUMN user_email Type VARCHAR(100);

-- ALTER TABLE student ALTER COLUMN user_email TYPE VARCHAR(100);

-- Add primary key constraint
ALTER Table student add constraint pk_name PRIMARY key (name);

-- Drop primary key constraint
ALTER TABLE student DROP CONSTRAINT pk_name;

-- Does NOT remove the table structure, columns, or constraints
TRUNCATE TABLE student;

ALTER Table student ADD constraint pk_id PRIMARY KEY (id);

alter Table student ADD COLUMN city VARCHAR(50) NOT NULL;

INSERT INTO
    student
VALUES (
        1,
        'Iqbal',
        'America',
        'America@gmail.com'
    ),
    (
        2,
        'Usman',
        'Saudia',
        'Saudia@gmail.com'
    ),
    (
        3,
        'Ali',
        'Saudia',
        'Modina@gmail.com'
    )

TRUNCATE Table student;

INSERT INTO
    student
VALUES (
        1,
        'Iqbal',
        'America@gmail.com',
        'America'
    ),
    (
        2,
        'Usman',
        'Saudia@gmail.com',
        'Saudia'
    ),
    (
        3,
        'Ali',
        'Modina@gmail.com',
        'Saudia'
    )