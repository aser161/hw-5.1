CREATE TABLE city
(
    city_id    BIGSERIAL   NOT NULL PRIMARY KEY,
    city_name VARCHAR(50) NOT NULL
);

ALTER TABLE employee
    ADD city_id INT NOT NULL DEFAULT 0;

ALTER TABLE employee ADD FOREIGN KEY (city_id) REFERENCES city(city_id);

-- SELECT * FROM employee;

INSERT INTO city(city_name)
VALUES ('ROME'),
       ('Moscow'),
       ('Vena'),
       ('Oslo');

UPDATE employee SET city_id = 1 WHERE id = 1;
UPDATE employee SET city_id = 1 WHERE id = 2;
UPDATE employee SET city_id = 2 WHERE id = 3;
UPDATE employee SET city_id = 2 WHERE id = 4;
UPDATE employee SET city_id = 3 WHERE id = 5;

SELECT * FROM city;

SELECT first_name, last_name, city_name
FROM employee
INNER JOIN city
ON employee.city_id = city.city_id;

SELECT city_name, first_name, last_name
FROM employee
RIGHT JOIN city
 ON employee.city_id = city.city_id;

SELECT first_name, city_name
FROM employee
FULL JOIN city
ON employee.city_id = city.city_id;

SELECT first_name, city_name
FROM employee
CROSS JOIN city;