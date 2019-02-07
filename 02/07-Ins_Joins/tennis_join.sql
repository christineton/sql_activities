-- Create Database to import csv into
CREATE DATABASE Tennis_DB;
USE Tennis_DB;

-- Check data was uploaded
SELECT * FROM players;

SELECT * FROM matches;

SELECT players.first_name, players.last_name, players.hand, matches.loser_rank
FROM matches
INNER JOIN players ON
players.player_id=matches.loser_id;