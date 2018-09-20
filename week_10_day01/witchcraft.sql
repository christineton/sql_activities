-- Create Database to import csv into
-- CREATE DATABASE witchCraft_DB;
USE witchCraft_DB;
-- Check data was uploaded
SELECT * FROM wdb_accused;
SELECT * FROM wdb_case;
SELECT * FROM wdb_devilappearance;
SELECT c.caseref, d.devil_text, d.devil_type, a.accusedref
FROM wdb_accused AS a
INNER JOIN wdb_case AS c ON a.accusedref = c.accusedref
INNER JOIN wdb_devilappearance AS d ON d.caseref = c.caseref
WHERE d.devil_text > ' ';