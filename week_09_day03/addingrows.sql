-- Create a new Database called favorite_db within MySQL Workbench and use the database for the remainder of this activity.
-- Create a table called favorite_foods and add the following to it:
-- Create the column "food" which can take in a 50 character string and cannot be NULL
-- Create the column "score" which can take in an integer
-- For the table favorite_songs and add the following to it:
-- Create the column "song" which can take in a 100 character string and cannot be NULL
-- Create the column "artist" which can take in a 50 character string
-- Create the column "score" which can take in an integer
-- For the table favorite_movies and add the following to it:
-- Create the column "film" which can take in a string and cannot be NULL
-- Create the column "five_times" which can take in a boolean
-- Create the column "score" which can take in an integer
-- BONUS: Go online and look into how one might go about adding data into a table.

-- Drops the favorite_db if it exists currently
DROP DATABASE IF EXISTS favorite_db;
-- Creates the "favorite_db" database
CREATE DATABASE favorite_db;

-- Makes it so all the following code will affect favorite_db
USE favorite_db;

-- Creates the table "favorite foods" within favorite_db
CREATE TABLE favorite_foods (
	-- Makes a string column called "food" which cannot contain null
    food VARCHAR(50) NOT NULL,
    -- Makes a numeric column called "score"
    score INT
);
    
CREATE TABLE favorite_songs (
	song VARCHAR(100) NOT NULL,
    artist VARCHAR(50),
    score INT
);

CREATE TABLE favorite_movies (
	movie VARCHAR(100) NOT NULL,
    -- Creates a boolean column called "five_times" that sets the default value to false if nothing is entered 
    five_times BOOLEAN DEFAULT false, 
    score INT
);
    

INSERT INTO favorite_foods (food, score)
VALUES ("Speghetti", 8);

INSERT INTO favorite_foods (food, score)
VALUE ("Pizza", 10);

INSERT INTO favorite_foods (food, score)
VALUE ("Tuna Casserole", 2);

SELECT * FROM favorite_foods;

-----

INSERT INTO favorite_songs (song, artist, score)
VALUE ("Hello", "Adele", 10);

INSERT INTO favorite_songs (song, artist, score) 
VALUE ("Baby Shark", "Pickfong", 7);

INSERT INTO favorite_songs (song, artist, score)
VALUE ("Time After Time", "Cyndi Lauper", 10); 

SELECT * FROM favorite_songs;

----

INSERT INTO favorite_movies (movie, five_times, score)
VALUE ("Moana", true, 9), ("Eternal Sunshine of the Spotless Mind", true, 10), ("Mean Girls", false, 2);

SELECT * FROM favorite_movies;


