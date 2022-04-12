-- from the terminal run:
-- psql < music.sql

DROP DATABASE IF EXISTS music;

CREATE DATABASE music;

\c music

CREATE TABLE artists (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);


CREATE TABLE producer (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE albums(
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);
CREATE TABLE songs
(
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  duration_in_seconds INTEGER NOT NULL,
  release_date DATE NOT NULL,
  artists TEXT[] NOT NULL,
  album_id INTEGER REFERENCES albums,
  producers TEXT[] NOT NULL
);
CREATE TABLE producer_roles (
  id SERIAL PRIMARY KEY,
  producer_id INTEGER REFERENCES producers,
  song_id INTEGER REFERENCES songs
);

CREATE TABLE artist_roles (
  id SERIAL PRIMARY KEY,
  artist_id INTEGER REFERENCES artists,
  song_id INTEGER REFERENCES songs
);