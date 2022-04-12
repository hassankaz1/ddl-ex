DROP DATABASE IF EXISTS soccer_league;
CREATE DATABASE soccer_league;
\c soccer_league;


CREATE TABLE teams (
    id SERIAL PRIMARY KEY
    team_name TEXT NOT NULL 
    ranking INTEGER NOT NULL
);

CREATE TABLE players (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    team_id INTEGER REFERENCES teams
);

CREATE TABLE referees (
    id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
);

CREATE TABLE season (
    id SERIAL PRIMARY KEY,
    begin_date DATE NOT NULL,
    end_date DATE NOT NULL
);

CREATE TABLE matches (
    id SERIAL PRIMARY KEY,
    season_id INTEGER REFERENCES season,
    home_team_id INSERT REFERENCES teams,
    away_team_id INSERT REFERENCES teams,
    match_date DATE NOT NULL,
    referee_id INTEGER REFERENCES referees
)