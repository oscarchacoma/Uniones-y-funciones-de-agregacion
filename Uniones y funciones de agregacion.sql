
/* Micro desafío - Paso 1 */


select series.title, genres.name
from series
left join genres on series.genre_id=genres.id ;


/* Micro desafío - Paso 2 */

select distinct concat(actors.first_name,' ', actors.last_name) as 'Nombre y Apellido' 
from actors
inner join actor_movie on actors.id=actor_movie.actor_id
inner join movies on movies.id=actor_movie.movie_id  
where title like '%Guerra de las galaxias%';



/* Micro desafío - Paso 3 */


SELECT title, COALESCE(genres.name, 'no tiene género') AS genre_name
FROM movies
LEFT JOIN genres ON movies.genre_id = genres.id;


/* Micro desafío - Paso 4 */

SELECT title AS Titulo, DATEDIFF(end_date, release_date) AS DiasDuracion
FROM series;


/* Micro desafío - Paso 5 */


SELECT actors.id,actors.first_name
FROM actors
WHERE LENGTH(first_name) > 6
ORDER BY first_name ASC;



SELECT count(*) as 'Total de Episodios'
FROM episodes;


SELECT series.title, count(seasons.title)  from series
INNER join seasons on seasons.serie_id=series.id
group by series.title


select genres.name, count(movies.title) from genres
inner join movies on genres.id =movies.genre_id
group by genres.name 
having count(movies.title)>=3







