INSERT INTO artists (name) VALUES ('Anton First');
INSERT INTO artists (name) VALUES ('Dima');
INSERT INTO artists (name) VALUES ('Petya Third');
INSERT INTO artists (name) VALUES ('Vasya');

INSERT INTO genres (name) VALUES ('Pop');
INSERT INTO genres (name) VALUES ('Rock');
INSERT INTO genres (name) VALUES ('Rap');

INSERT INTO albums (name, year) VALUES ('First album', 2001);
INSERT INTO albums (name, year) VALUES ('Second album', 2019);
INSERT INTO albums (name, year) VALUES ('Third album', 2023);
INSERT INTO albums (name, year) VALUES ('4 album', 2020);
INSERT INTO albums (name, year) VALUES ('5 album', 2009);
INSERT INTO albums (name, year) VALUES ('6 album', 2020);

INSERT INTO tracks (name, album, duration) VALUES ('1st track', 1, 180);
INSERT INTO tracks (name, album, duration) VALUES ('2nd track мой', 1, 250);
INSERT INTO tracks (name, album, duration) VALUES ('3th track', 2, 160);
INSERT INTO tracks (name, album, duration) VALUES ('4th track', 3, 140);
INSERT INTO tracks (name, album, duration) VALUES ('5th mytrack', 3, 135);
INSERT INTO tracks (name, album, duration) VALUES ('6th track', 3, 290);
INSERT INTO tracks (name, album, duration) VALUES ('7th track', 4, 135);
INSERT INTO tracks (name, album, duration) VALUES ('8th track', 5, 165);
INSERT INTO tracks (name, album, duration) VALUES ('9th track', 6, 185);

INSERT INTO collections (name, year) VALUES ('First collection', 2020);
INSERT INTO collections (name, year) VALUES ('Second collection', 2021);
INSERT INTO collections (name, year) VALUES ('Third collection', 2022);
INSERT INTO collections (name, year) VALUES ('Fourth collection', 2023);

INSERT INTO artist_genre (genre, artist) VALUES (1, 1);
INSERT INTO artist_genre (genre, artist) VALUES (2, 1);
INSERT INTO artist_genre (genre, artist) VALUES (3, 2);
INSERT INTO artist_genre (genre, artist) VALUES (1, 3);
INSERT INTO artist_genre (genre, artist) VALUES (2, 3);
INSERT INTO artist_genre (genre, artist) VALUES (3, 3);
INSERT INTO artist_genre (genre, artist) VALUES (1, 2);
INSERT INTO artist_genre (genre, artist) VALUES (2, 4);

INSERT INTO artist_album (artist, album) VALUES (1, 3);
INSERT INTO artist_album (artist, album) VALUES (1, 2);
INSERT INTO artist_album (artist, album) VALUES (3, 1);
INSERT INTO artist_album (artist, album) VALUES (3, 4);
INSERT INTO artist_album (artist, album) VALUES (4, 5);
INSERT INTO artist_album (artist, album) VALUES (2, 6);

INSERT INTO collection_track (collection, track) VALUES (1, 1);
INSERT INTO collection_track (collection, track) VALUES (1, 6);
INSERT INTO collection_track (collection, track) VALUES (2, 2);
INSERT INTO collection_track (collection, track) VALUES (2, 3);
INSERT INTO collection_track (collection, track) VALUES (2, 4);
INSERT INTO collection_track (collection, track) VALUES (3, 5);
INSERT INTO collection_track (collection, track) VALUES (1, 3);
INSERT INTO collection_track (collection, track) VALUES (2, 5);
INSERT INTO collection_track (collection, track) VALUES (3, 2);
INSERT INTO collection_track (collection, track) VALUES (3, 7);
INSERT INTO collection_track (collection, track) VALUES (3, 8);
INSERT INTO collection_track (collection, track) VALUES (4, 8);

