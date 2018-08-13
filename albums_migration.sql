USE codeup_test_db;

TRUNCATE albums;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(255) NOT NULL,
  album_name VARCHAR(255) NOT NULL,
  release_date INT UNSIGNED NOT NULL,
  genre VARCHAR(255),
  sales FLOAT DEFAULT 0.0,
  primary key (id)
);

DESCRIBE albums;