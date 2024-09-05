--Название и продолжительность самого длительного трека
SELECT track_name, duration FROM tracks
WHERE duration =(SELECT max(duration) FROM tracks)

--Название треков, продолжительность которых не менее 3,5 минут
SELECT track_name FROM tracks
WHERE duration >= 210

--Названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name FROM collections
WHERE year_of_manufacture BETWEEN 2018 AND 2020

--Исполнители, чьё имя состоит из одного слова
SELECT singer_name FROM singers
WHERE singer_name NOT LIKE '% %'

--Название треков, которые содержат слово «мой» или «me»
SELECT track_name FROM tracks
WHERE track_name LIKE '%мой%' OR track_name LIKE '%Me%'

--Количество исполнителей в каждом жанре
SELECT genre_name,count(s.singer_name) FROM genres g
LEFT JOIN genre_singer gs ON g.genre_id = gs.genre_id
LEFT JOIN singers s ON gs.singer_id = s.singer_id
GROUP BY genre_name
ORDER BY count(s.singer_name) DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов
SELECT count(track_name) FROM tracks t 
LEFT JOIN alboms a ON t.albom_id = a.albom_id
WHERE a.year_of_manufacture BETWEEN 2019 AND 2020;

--Средняя продолжительность треков по каждому альбому
SELECT a.albom_name, avg(duration) FROM tracks t 
LEFT JOIN alboms a ON t.albom_id = a.albom_id
GROUP BY albom_name
ORDER BY avg(duration);

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT singer_name FROM singers s
LEFT JOIN singer_in_albom sia ON s.singer_id = sia.singer_id 
LEFT JOIN alboms a ON sia.albom_id = a.albom_id 
WHERE singer_name NOT IN (SELECT s.singer_name FROM singer_in_albom WHERE a.year_of_manufacture = 2020)

--Названия сборников, в которых присутствует конкретный исполнитель 
SELECT collection_name FROM collections c 
LEFT JOIN tracks_collections tc ON tc.collection_id = c.collection_id 
LEFT JOIN tracks t ON tc.track_id = t.track_id 
LEFT JOIN alboms a ON t.albom_id = a.albom_id 
LEFT JOIN singer_in_albom sia ON a.albom_id = sia.albom_id 
LEFT JOIN singers s ON sia.singer_id = s.singer_id 
WHERE singer_name LIKE 'Drake'