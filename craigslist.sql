DROP DATABASE IF EXISTS craigslist;
CREATE DATABASE craigslist;
\c craigslist;


CREATE TABLE regions (
    id SERIAL PRIMARY KEY
);


CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    prefered_region INTEGER REFERENCES regions;
);


CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    post_text TEXT NOT NULL,
    user_post_id INTEGER REFERENCES users,
    region_id INTEGER REFERENCES regions
    category_id INTEGER REFERENCES categories
);


CREATE TABLE categories (
    id SERIAL PRIMARY KEY,
    category_name TEXT NOT NULL,
);

