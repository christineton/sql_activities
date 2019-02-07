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
