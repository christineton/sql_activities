-- Instructions

-- Make a new database called "programming_db" and switch into it for this activity
-- Create a table called "programming_languages" which includes a primary key named "id" which will automatically increment which each new row created, a string column called "languages," and a numeric column called "rating."
-- Insert some data into the table and then modify the data using the id column.
-- BONUS: Study up on how to add columns to a table and then create a boolean column called "mastered" which has a default value of true
-- BONUS: Start looking into the concept of joins in SQL

-- Drops the programming_db if it already exists
DROP DATABASE IF EXISTS programming_db;
-- Create a database called programming_db
CREATE DATABASE programming_db;

USE programming_db;

CREATE TABLE programming_languages(
	-- Create a numeric column called "id" which will automatically increment its default value as we create new rows. 
    id INT AUTO_INCREMENT NOT NULL,
    language VARCHAR(20),
    rating INT,
    -- Creates a boolean column called "mastered" which will automatically fill
    -- With true when a new row is made and the value isn't otherwise defined
    mastered BOOLEAN DEFAULT true, 
    PRIMARY KEY (id)
);

-- Create new rows
INSERT INTO programming_languages (language, rating)
VALUES ("HTML", 95);

INSERT INTO programming_languages (language, rating)
VALUE ("JS", 99);

INSERT INTO programming_languages (language, rating)
VALUE ("JQuery", 98);

INSERT INTO programming_languages (language, rating)
VALUE ("MySQL", 70);