INSERT INTO artists (name) VALUES
('Anton First'),
('Dima'),
('Petya Third'),
('Vasya');

INSERT INTO genres (name) VALUES
('Pop'),
('Rock'),
('Rap');

INSERT INTO albums (name, year) VALUES
('First album', 2001),
('Second album', 2019),
('Third album', 2023),
('4 album', 2020),
('5 album', 2009),
('6 album', 2020);

INSERT INTO tracks (name, album, duration) VALUES
('1st track', 1, 180),
('2nd track мой', 1, 250),
('3th track', 2, 160),
('4th track', 3, 140),
('5th mytrack', 3, 135),
('6th track', 3, 290),
('7th track', 4, 135),
('8th track', 5, 165),
('9th track', 6, 185);

INSERT INTO collections (name, year) VALUES
('First collection', 2020),
('Second collection', 2021),
('Third collection', 2022),
('Fourth collection', 2023);

INSERT INTO artist_genre (genre, artist) VALUES
(1, 1),
(2, 1),
(3, 2),
(1, 3),
(2, 3),
(3, 3),
(1, 2),
(2, 4);

INSERT INTO artist_album (artist, album) VALUES
(1, 3),
(1, 2),
(3, 1),
(3, 4),
(4, 5),
(2, 6);

INSERT INTO collection_track (collection, track) VALUES
(1, 1),
(1, 6),
(2, 2),
(2, 3),
(2, 4),
(3, 5),
(1, 3),
(2, 5),
(3, 2),
(3, 7),
(3, 8),
(4, 8);
