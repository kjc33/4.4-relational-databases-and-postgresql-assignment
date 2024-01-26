-- Create the users table
CREATE TABLE users (id SERIAL PRIMARY KEY, username VARCHAR(200), password VARCHAR(200), email VARCHAR(200), firstName VARCHAR(200), lastName VARCHAR(200));

-- Create the countries table
CREATE TABLE countries (id SERIAL PRIMARY KEY, name VARCHAR(200));

-- Create the addresses table
CREATE TABLE addresses (id SERIAL PRIMARY KEY, user_id INT, country_id INT);

-- Insert data into the users table
INSERT INTO users (username, password, email, firstName, lastName) VALUES ('user1', 'pass1', 'email1@example.com', 'John', 'Doe');
INSERT INTO users (username, password, email, firstName, lastName) VALUES ('user2', 'pass2', 'email2@example.com', 'Jane', 'Smith');

-- Insert data into the countries table
INSERT INTO countries (name) VALUES ('USA'), ('Canada'), ('Mexico');

-- Insert data into the addresses table
INSERT INTO addresses (user_id, country_id) VALUES (1, 1), (2, 1), (2, 3);

-- List all the countries
SELECT * FROM countries;

-- List all user emails
SELECT email FROM users;

-- List all user firstNames that have the letter "e" in the name
SELECT firstName FROM users WHERE firstName LIKE '%e%';

-- List all the countries where user_id = 2 lives
SELECT countries.name FROM addresses JOIN countries ON addresses.country_id = countries.id WHERE addresses.user_id = 2;