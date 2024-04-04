-- PASO 1 - 

CREATE DATABASE películas;

USE películas;


CREATE TABLE películas (
                        id INT AUTO_INCREMENT PRIMARY KEY,
                        pelicula VARCHAR(100) NOT NULL ,
                        año_estreno INT NOT NULL ,
                        director VARCHAR(50) NOT NULL
);
CREATE TABLE Reparto (
                        id_pelicula INT NOT NULL,
                        actor VARCHAR(50) NOT NULL,
                        FOREIGN KEY (id_pelicula) REFERENCES películas(id)
);

-- PASO 2 --
--Acá se cargan archivos.csv(img) a su tabla correspondientes 

-- PASO 3 --
SELECT id
FROM películas
WHERE pelicula = 'Titanic';

-- PASO 4-- 
SELECT actor
FROM reparto
WHERE id_pelicula = '2';

-- PASO 5
SELECT COUNT(películas.pelicula) AS nro_películas
FROM películas INNER JOIN reparto ON id = reparto.id_pelicula
WHERE actor = 'Harrison Ford';

-- PASO 6--
SELECT pelicula, año_estreno
FROM películas WHERE año_estreno  BETWEEN   1990 AND 1999
ORDER BY año_estreno;


-- PASO 7--
SELECT  pelicula AS titulo, LENGTH(pelicula) AS longitud_titulo
FROM películas;

-- PASO 8 --

SELECT  pelicula AS titulo, LENGTH(pelicula) AS longitud_titulo
FROM películas ORDER BY longitud_titulo DESC LIMIT 1 ;