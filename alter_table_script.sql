SELECT *
FROM movies;

ALTER TABLE movies
ADD title VARCHAR(200);

INSERT INTO movies(
	title
)VALUES(
	'Gleaming the Cube'
)

DELETE FROM movies
WHERE title = 'Gleaming the Cube';

UPDATE movies
SET title = 'Gleaming the Cube'
WHERE movie_id = 1;


