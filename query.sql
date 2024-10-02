CREATE DATABASE peliculas

CREATE TABLE peliculas (
	id INT PRIMARY KEY,
	pelicula VARCHAR,
	anio_estreno INT,
	director VARCHAR
);

CREATE TABLE reparto (
	id_pelicula INT,
	actor VARCHAR,
	CONSTRAINT fk_pelicula FOREIGN KEY (id_pelicula) REFERENCES peliculas (id)
);

SELECT id 
FROM peliculas 
WHERE pelicula = 'Titanic';

SELECT reparto.actor
FROM reparto
JOIN peliculas ON reparto.id_pelicula = peliculas.id
WHERE peliculas.pelicula = 'Titanic';

SELECT COUNT(DISTINCT peliculas.id) 
FROM reparto
JOIN peliculas ON reparto.id_pelicula = peliculas.id
WHERE reparto.actor = 'Harrison Ford';

SELECT pelicula
FROM peliculas
WHERE anio_estreno BETWEEN 1990 AND 1999
ORDER BY pelicula ASC;

SELECT pelicula, LENGTH(pelicula) AS longitud_titulo
FROM peliculas
ORDER BY longitud_titulo DESC;
