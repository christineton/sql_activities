-- Drops the favorite_db if it exists currently --
DROP DATABASE IF EXISTS favorite_db;
-- Creates the "favorite_db" database --
CREATE DATABASE favorite_db;

-- Makes it so all of the following code will affect favorite_db --
USE favorite_db;

-- Creates the table "favorite_foods" within favorite_db --
CREATE TABLE favorite_foods (
  -- Makes a string column called "food" which cannot contain null --
  food VARCHAR(50) NOT NULL,
  -- Makes a numeric column called "score" --
  score INT
);

CREATE TABLE favorite_songs (
  song VARCHAR(100) NOT NULL,
  artist VARCHAR(50),
  score INT
);

CREATE TABLE favorite_movies (
  movie VARCHAR(100) NOT NULL,
  -- Creates a boolean column called "five_times" that sets the default value to false if nothing is entered --
  five_times BOOLEAN DEFAULT false,
  score INT
);

INSERT INTO favorite_foods (food, score)
VALUES ("Spaghetti", 8);

INSERT INTO favorite_foods (food, score)
VALUES ("Pizza", 10);

INSERT INTO favorite_foods (food, score)
VALUES ("Tuna Casserole", 2);

SELECT * FROM favorite_foods;

---

INSERT INTO favorite_songs (song, artist, score)
VALUES ("Hello", "Adele", 10);

INSERT INTO favorite_songs (song, artist, score)
VALUES ("Baby Shark", "Pickfong", 7);

INSERT INTO favorite_songs (song, artist, score)
VALUES ("Time After Time", "Cyndi Lauper", 10);

SELECT * FROM favorite_songs;

---

INSERT INTO favorite_movies (movie, five_times, score)
VALUES ("Moana", true, 9),("Eternal Sunshine of the Spotless Mind", true, 10), ("Mean Girls", false, 2);

SELECT * FROM favorite_movies;

