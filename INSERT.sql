--Имена групп/исполнителей
INSERT INTO singers (singer_name)
VALUES 
		('The Beatles'),
		('Queen'),
		('Taylor Swift'),
		('Ed Sheeran'),
		('Drake'),
		('Billie Eilish');

--Название жанров
INSERT INTO genres (genre_name)
VALUES 
		('Rock'),
		('Pop'),
		('Indie'),
		('Hip hop'),
		('Rap');

--Название альбомов
INSERT INTO alboms (albom_name,year_of_manufacture)
VALUES 
		('Abbey Road', 1969),
		('A Night at the Opera', 1975),
		('1989', 2014),
		('Lover', 2019),
		('Divide', 2017),
		('Scorpion', 2018),
		('When We All Fall Asleep, Where Do We Go?', 2019);
		
--Название треков
INSERT INTO tracks (track_name,duration,albom_id)
VALUES
		('Come Together', 260, 1),
		('Bohemian Rhapsody', 355, 2), 
		('Shake It Off', 219, 3),
		('Perfect', 263, 5),
		('Hey Jude', 428, 1), 
		('Dont Stop Me Now', 209, 2),
		('Blank Space', 231, 3),
		('Gods Plan', 198, 6),
		('Bad Guy', 194, 7),
		('You Belong with Me', 232, 4);

--Название коллекций
INSERT INTO collections (collection_name,year_of_manufacture)
VALUES 
		('Greatest Hits: The Beatles', 1970),
		('Queens Greatest Hits', 1977),
		('Taylor Swift: Collection', 2020),
		('Greatest Hits', 2018),
		('Drakes Essentials', 2019),
		('Billies Best', 2021);

--Присоединение артистов к жанру
INSERT INTO genre_singer (singer_id,genre_id)
VALUES
		(1, 1),
		(2, 1),
		(3, 2),
		(4, 3),
		(5, 5),
		(6, 4);
	
--Присоединение артистов и альбомов
INSERT INTO singer_in_albom (singer_id,albom_id)
VALUES
		(1, 1),
		(2, 2),
		(3, 3),
		(3, 4),
		(4, 5),
		(5, 6),
		(6, 7);

--Присоединение названия треков и сборников
INSERT INTO tracks_collections(track_id, collection_id)
VALUES
		(21, 1),
		(22, 2),
		(23, 3),
		(24, 4),
		(25, 1),
		(26, 2),
		(27, 3),
		(28, 5),
		(29, 6),
		(30, 3);