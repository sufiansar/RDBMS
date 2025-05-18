-- Active: 1747414888185@@127.0.0.1@5432@students@public
SELECT now()

CREATE TABLE timezonedate (
    tsz TIMESTAMP without time zone,
    ts TIMESTAMP with time zone
);

INSERT INTO
    timezonedate
VALUES (
        '2025-05-20 08:45:10',
        '2025-05-20 00:00:00+00'
    );

SELECT * FROM timezonedate;

SELECT CURRENT_DATE;

SELECT to_char(now(), 'DDD');

SELECT age (CURRENT_DATE, '2002-06-02');