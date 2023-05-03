CREATE TABLE employee
(
    id         BIGSERIAL   NOT NULL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    gender     VARCHAR(6)  NOT NULL,
    age        INT         NOT NULL
);

SELECT * FROM employee;

INSERT INTO employee (first_name, last_name, gender, age)
VALUES ('Bob', 'Green', 'male', 25),
       ('John', 'Brown', 'male', 30),
       ('Jana', 'White', 'female', 28),
       ('Kathy', 'Rid', 'female', 22),
       ('Mary', 'Kim', 'female', 52);

SELECT * FROM employee;

SELECT first_name AS Имя,
       last_name AS Фамилия
FROM employee;

SELECT * FROM employee WHERE age<30 OR age>50;

SELECT * FROM employee WHERE age>30 AND age<50;

SELECT * FROM employee
ORDER BY last_name DESC, first_name;

SELECT * FROM employee WHERE employee.last_name LIKE '_ _ _ _ %';

UPDATE employee SET first_name = 'Bob' WHERE id = 2;
UPDATE employee SET first_name = 'Kathy' WHERE id = 5;

SELECT first_name AS имя, SUM(age) AS суммарный_возраст
FROM employee GROUP BY first_name;

SELECT * FROM employee
WHERE age = (SELECT MIN(age)
             FROM employee);

SELECT * FROM employee
WHERE age = (SELECT MAX(age)
             FROM employee);




