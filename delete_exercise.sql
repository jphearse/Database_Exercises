USE codeup_test_db;

DELETE FROM albums WHERE release_year > 1991;

DELETE FROM albums WHERE genre = 'disco';

DELETE FROM albums WHERE artist = 'Meat Loaf';

SELECT * FROM albums;