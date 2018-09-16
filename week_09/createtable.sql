-- Drops the favorite_db if it exists currently --
DROP DATABASE IF EXISTS animals_db;
-- Create the "favorite_db" database --
CREATE DATABASE animals_db;

-- tells mysql that all the code that folls will be affecting the data stored within the animal_db database
USE animals_db;

-- creates a table called people with the columns listed within the parentheses. 
CREATE TABLE people (
-- creates a column of name which can hold character strings within it of up to 30 characters and will not allow null fields
	name VARCHAR(30)	NOT NULL,
-- creates a column of has_pet which can hold character strings within it of up to 30 characters and will allow null fields 
    has_pet BOOLEAN DEFAULT false,
-- creates a column of pet_name which can hold character strings within it of up to 30 characters and will allow null fields. 
    pet_name VARCHAR(30),
-- creates a column of pet_age which can hold whole numbers
    pet_age INT
);


INSERT INTO people (name, has_pet, pet_name, pet_age)
VALUE ("Jerome", TRUE, "Farley", 5);

SELECT * FROM people;
