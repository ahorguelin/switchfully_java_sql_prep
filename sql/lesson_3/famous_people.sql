/* Create table about the people and what they do here */
-- All SQL statements are my own. Dummy data was generated using ChatGPT by providing it the Schema I created.
CREATE TABLE stars (id INTEGER PRIMARY KEY AUTOINCREMENT,
first_name TEXT,
last_name TEXT,
age NUMERIC);

CREATE TABLE movies(id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT,
release_date TEXT,
duration NUMERIC);

CREATE TABLE movie_casting(id INTEGER PRIMARY KEY AUTOINCREMENT,
movie_id INTEGER,
star_id INTEGER);

-- Dummy data for the stars table curtesy of ChatGPT. It obviously does not get to go to the movies very often...
INSERT INTO stars (first_name, last_name, age) VALUES
('Brad', 'Pitt', 58),
('Angelina', 'Jolie', 46),
('Leonardo', 'DiCaprio', 47),
('Jennifer', 'Lawrence', 32),
('Tom', 'Cruise', 60),
('Emma', 'Watson', 31);

-- Dummy data for the movies table
INSERT INTO movies (title, release_date, duration) VALUES
('Inception', '2010-07-16', 148),
('The Dark Knight', '2008-07-18', 152),
('Titanic', '1997-12-19', 195),
('La La Land', '2016-12-09', 128),
('The Hunger Games', '2012-03-23', 142),
('Fight Club', '1999-10-15', 139),
('Mr. & Mrs. Smith', '2005-06-10', 120),
('Pirates of the Caribbean: The Curse of the Black Pearl', '2003-07-09', 143),
('The Matrix', '1999-03-31', 136),
('Harry Potter and the Philosophers Stone', '2001-11-16', 152);

-- Dummy data for the movie_casting table
INSERT INTO movie_casting (movie_id, star_id) VALUES
(1, 3), 
(1, 4), 
(2, 3), 
(2, 1), 
(3, 3), 
(3, 2), 
(4, 3), 
(4, 6), 
(5, 4), 
(5, 5), 
(6, 1), 
(6, 3), 
(7, 1), 
(7, 2), 
(8, 5), 
(8, 6), 
(9, 3), 
(10, 6); 

SELECT m.title, s.first_name, s.last_name FROM movie_casting mc JOIN stars s ON mc.star_id = s.id JOIN movies m ON m.id = mc.movie_id ORDER BY m.title;