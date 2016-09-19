USE codeup_test_db;

SELECT sales AS 'All Albums' FROM albums;
	UPDATE albums SET sales = (sales * 10);
	SELECT sales FROM albums; 
SELECT name AS 'Albums before 1980' FROM albums WHERE release_year < 1980;
	UPDATE albums SET release_year = (release_year - 100) WHERE release_year < 1980;
	SELECT release_year FROM albums;
SELECT name AS 'Albums by Michael Jackson' FROM albums WHERE artist = 'Michael Jackson';
	UPDATE albums SET artist = "Peter Jackson" WHERE artist = 'Michael Jackson';
	SELECT artist FROM albums;