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
VALUES ('Bob', 'Green', 'male', 25);
VALUES ('John', 'Brown', 'male', 30);
VALUES ('Jana', 'White', 'female', 28);

SELECT * FROM employee;

UPDATE employee SET first_name = 'Kathy',
                    last_name = 'Rid',
                    gender = 'female',
                    age = 22
                    WHERE id = 1;

SELECT * FROM employee;

DELETE FROM employee WHERE id = 3;

SELECT * FROM employee;