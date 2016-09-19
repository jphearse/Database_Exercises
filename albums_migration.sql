USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    sales FLOAT,
    genre VARCHAR(255),
    PRIMARY KEY (id)
);