USE codeup_test_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);

SELECT * FROM roles;
SELECT * FROM users;

USE employees;

SELECT d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
from departments d
  join dept_manager dm on dm.dept_no = d.dept_no
   join employees e on e.emp_no = dm.emp_no
   WHERE dm.to_date > now();



SELECT d.dept_name AS 'Department Name', concat(e.first_name, ' ', e.last_name) AS 'Department Manager'
from departments d
    join dept_manager dm on dm.dept_no = d.dept_no
    join employees e on e.emp_no = dm.emp_no
    WHERE dm.to_date > now()
    and e.gender = 'F';

select t.title as 'Title',
count(t.title) AS 'Count'
from titles t
join dept_emp de on de.dept_no = t.emp_no
where de.dept_no = 'd009'
  AND t.to_date > now()
  AND de.to_date > now()
  group by t.title;

select
  d.dept_name AS ''


DESCRIBE titles;
DESCRIBE departments;



