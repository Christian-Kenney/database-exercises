CREATE DATABASE IF NOT EXISTS tables_lesson_db;

USE tables_lesson;

DROP TABLE IF EXISTS flights;

CREATE TABLE  IF NOT EXISTS flights(
  destination CHAR(3) NOT NULL;
  departs_from CHAR(3) NOT NULL,
  price DOUBLE NOT NULL;
  description TEXT
);

SHOW TABLES;