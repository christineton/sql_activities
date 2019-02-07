-- Create Database to import csv into
CREATE DATABASE NBA_DB;
USE NBA_DB;

-- Check data was uploaded
SELECT * FROM players;

SELECT * FROM seasons_stats;

-- Join players with seasons_stats
SELECT players.player, players.height, players.weight, players.college, players.born, seasons_stats.pos, seasons_stats.tm
FROM players
INNER JOIN seasons_stats ON
players.player = seasons_stats.player;


-- Join seasons_stats with players
SELECT seasons_stats.player, players.college, seasons_stats.year, seasons_stats.pos, seasons_stats.`2P%`,
seasons_stats.`FG%`, seasons_stats.`FT%`, seasons_stats.`TS%`
FROM seasons_stats
INNER JOIN players ON
players.player = seasons_stats.player;
