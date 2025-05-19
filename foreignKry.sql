-- Active: 1747414888185@@127.0.0.1@5432@person2@public
CREATE Table "user" (
    id SERIAL PRIMARY KEY,
    username VARCHAR(30) NOT NULL
);

INSERT INTO
    "user" (username)
VALUES ('Sufian'),
    ('Abdullah'),
    ('Khadija'),
    ('Yusuf'),
    ('Aisha'),
    ('Omar');

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT,
    user_id INT REFERENCES "user" (id)
);

INSERT INTO
    post (title, user_id)
VALUES (
        'Reflections on Patience – by Sufian',
        1
    ),
    (
        'The Journey of a Believer – by Abdullah',
        2
    ),
    (
        'Kindness: A Legacy of Khadija',
        3
    ),
    (
        'Trust in Allah: Yusufs Perspective',
        4
    ),
    (
        'Aishas Guide to Inner Peace',
        5
    ),
    (
        'Leading with Integrity – Omar Speaks',
        6
    ),
    (
        'Sufian Shares: 5 Lessons from the Quran',
        1
    ),
    (
        'Khadija Writes: Compassion in Action',
        3
    ),
    (
        'Finding Light in Darkness – by Aisha',
        5
    ),
    (
        'Sufians Thoughts on Gratitude',
        1
    );
;

SELECT * FROM post;