-- Database: Musicians_new

-- DROP DATABASE IF EXISTS "Musicians_new";

CREATE TABLE IF NOT EXISTS Musician ( id SERIAL PRIMARY KEY, name VARCHAR(100) );
CREATE TABLE IF NOT EXISTS Album ( id SERIAL PRIMARY KEY, name VARCHAR(100), data_release DATE );
CREATE TABLE IF NOT EXISTS Track ( id SERIAL PRIMARY KEY, name VARCHAR(100), duration TIME );
CREATE TABLE IF NOT EXISTS Collection ( id SERIAL PRIMARY KEY, name VARCHAR(100), data_release DATE );
CREATE TABLE IF NOT EXISTS Style ( id SERIAL PRIMARY KEY, name VARCHAR(100) );
CREATE TABLE IF NOT EXISTS MusicianAlbum ( musician_id INTEGER REFERENCES Musician(id), album_id INTEGER REFERENCES Album(id) );
CREATE TABLE IF NOT EXISTS MusicianStyle ( musician_id INTEGER REFERENCES Musician(id), style_id INTEGER REFERENCES Style(id) );
CREATE TABLE IF NOT EXISTS TrackCollection ( track_id INTEGER REFERENCES Track(id), collection_id INTEGER REFERENCES Collection(id) ); 	