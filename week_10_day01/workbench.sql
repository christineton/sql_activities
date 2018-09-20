-- Create Database to import csv into
CREATE DATABASE Comcast_DB;
USE Comcast_DB;

-- Check data was uploaded
SELECT * FROM comcastfcccomplaints;
-- Alter imported table to add an id
ALTER TABLE comcastfcccomplaints
ADD COLUMN id INT AUTO_INCREMENT PRIMARY KEY FIRST;

-- Select all from the table
SELECT * FROM comcastfcccomplaints;
