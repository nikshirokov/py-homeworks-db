CREATE TABLE IF NOT EXISTS singers(
	singer_id SERIAL PRIMARY KEY, 
	singer_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS genres(
	genre_id SERIAL PRIMARY KEY,
	genre_name VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS alboms(
	albom_id SERIAL PRIMARY KEY,
	albom_name VARCHAR(60) NOT NULL,
	year_of_manufacture INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS collections(
	collection_id SERIAL PRIMARY KEY,
	collection_name VARCHAR(60) NOT NULL,
	year_of_manufacture INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks(
	track_id SERIAL PRIMARY KEY,
	track_name VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	albom_id INTEGER NOT NULL REFERENCES alboms(albom_id) 
);

CREATE TABLE IF NOT EXISTS singer_in_albom(
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id),
	albom_id INTEGER NOT NULL REFERENCES alboms(albom_id)
);

CREATE TABLE IF NOT EXISTS genre_singer(
	singer_id INTEGER NOT NULL REFERENCES singers(singer_id),
	genre_id INTEGER NOT NULL REFERENCES genres(genre_id)
);

CREATE TABLE IF NOT EXISTS tracks_collections(
	collection_id INTEGER NOT NULL REFERENCES collections(collection_id),
	track_id INTEGER NOT NULL REFERENCES tracks(track_id)
);
