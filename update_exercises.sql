USE codeup_test_db;

SELECT album_name FROM albums;
SELECT album_name FROM albums WHERE release_date < 1980;
SELECT album_name FROM albums WHERE artist = 'Michael Jackson';
SELECT sales FROM albums;
UPDATE albums SET sales = sales * 10;
UPDATE albums SET release_date = release_date - 100 WHERE release_date < 1980;
UPDATE albums SET artist = 'Peter Jackson' WHERE artist = 'Michael Jackson';
SELECT sales FROM albums;
SELECT album_name, release_date FROM albums WHERE release_date < 1980;
SELECT album_name FROM albums WHERE artist = 'Peter Jackson';

