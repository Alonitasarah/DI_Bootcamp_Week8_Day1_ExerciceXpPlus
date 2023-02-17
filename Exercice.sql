CREATE TABLE students (
  id serial PRIMARY KEY NOT NULL,
  first_name varchar(100) NOT NULL,
  last_name varchar(100) NOT NULL,
  birth_date date
);

INSERT INTO students (first_name, last_name, birth_date)
VALUES ('Marc', 'Benichou', ('02/11/1998')),
       ('Yoan', 'Cohen', ('03/12/2010')),
       ('Lea', 'Benichou', ('27/07/1987')),
        ('Amelia', 'Dux', ('07/04/1996')),
        ('David', 'Gez', ('14/06/2003')),
        ('Omer', 'Simpson', ('03/10/1980')),
         ('Yao', 'Yann', ('22/10/2002'));

Q1
SELECT *
FROM students;

Q2
SELECT last_name, first_name
FROM students

Q3_1
SELECT *
FROM students
WHERE id = 2;

Q3_2
SELECT first_name, last_name
FROM students
WHERE first_name = 'Benichou' AND last_name = 'Marc';

Q3_3
SELECT first_name, last_name
FROM students
WHERE first_name = 'Benichou' OR last_name = 'Marc';

Q3_4
SELECT first_name, last_name
FROM students
WHERE last_name LIKE '%a%';

Q3_5
SELECT first_name, last_name
FROM students
WHERE last_name LIKE 'a%';

Q3_6
SELECT first_name, last_name
FROM students
WHERE last_name LIKE '%a';

Q3_7
SELECT first_name, last_name
FROM students
WHERE last_name LIKE '__a%';

Q3_8
SELECT first_name, last_name,id
FROM students
WHERE id  IN(3,1);

Q4
SELECT first_name, last_name, birth_date
FROM students
WHERE birth_date <= '01/01/2000';

