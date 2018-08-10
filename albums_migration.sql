USE codeup_test_db;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist_first_name VARCHAR(50) NOT NULL,
  record_name VARCHAR(50) DEFAULT 'NONE',
  release_date INT UNSIGNED NOT NULL,
  sales FLOAT DEFAULT 0.0,
  genre VARCHAR(50) DEFAULT 'NONE',
  primary key (id)
);

DESCRIBE albums;