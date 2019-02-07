-- Drops the favorite_db if it exists currently --
DROP DATABASE IF EXISTS animals_db;
-- Creates the "favorite_db" database --
CREATE DATABASE animals_db;

USE animals_db;

CREATE TABLE people (
  name VARCHAR(30) NOT NULL,
  has_pet BOOLEAN DEFAULT false,
  pet_name VARCHAR(30),
  pet_age INT
);


-- Creates new rows containing data in all named columns --
INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Jerome", TRUE, "Farley", 5);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Elize", TRUE, "Zola Bear", 4);

INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUES ("Julia", TRUE, "Seltzer", 6);

INSERT INTO people (name, has_pet)
VALUES ("Rohan", false);


-- Updates the row where the column name is peter --
UPDATE people
SET has_pet = true, pet_name = "Miss Cuddly Wuddly", pet_age = 2
WHERE name = "Rohan";


SELECT * FROM people;
