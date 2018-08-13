use codeup_test_db;

SELECT 'getting Pink Floyd' AS 'info';
SELECT 'Pink Floyd';
SELECT album_name FROM albums
WHERE artist = 'Pink Floyd';

SELECT 'year Sgt. Pepper''s Lonely Hearts Club Band was created' AS 'info';
SELECT release_date FROM albums WHERE album_name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Nevermind genre' AS 'info';
SELECT genre FROM albums WHERE album_name = 'Nevermind';

SELECT 'albums from 90s' AS 'info';
Select * FROM albums WHERE release_date > 1989 && release_date < 2000;

SELECT 'below 20 sales' AS 'info';
Select * FROM albums WHERE sales < 20;

Select * FROM albums where genre = 'Rock';