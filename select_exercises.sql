USE codeup_test_db;

SELECT name FROM albums WHERE artist = 'Pink Floyd';
SELECT release_year FROM albums WHERE name = 'Sgt. Peppers Lonely Hearts Club Band';
SELECT genre FROM albums WHERE name = 'Nevermind';
SELECT name FROM albums WHERE release_year BETWEEN '1990' AND '1999';
SELECT name FROM albums WHERE sales < '20000000';
 SELECT * FROM albums WHERE genre LIKE '%rock%';