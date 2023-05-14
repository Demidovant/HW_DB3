--Задание 2

--Название и продолжительность самого длительного трека.
SELECT name, duration FROM tracks
WHERE duration = (SELECT MAX(duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут.
SELECT name FROM tracks
WHERE duration >= 210;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT name FROM collections
WHERE year BETWEEN 2018 AND 2020;

--Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artists
WHERE name NOT LIKE '% %';

--Название треков, которые содержат слово «мой» или «my».
SELECT name FROM tracks
WHERE name LIKE '%my%' OR name LIKE '%мой%';



--Задание 3

--Количество исполнителей в каждом жанре. Вывод id жанра
SELECT genre, count(*) FROM artist_genre
GROUP BY genre
ORDER BY count(*)  DESC

--Количество исполнителей в каждом жанре. Вывод названия жанра
SELECT  name, COUNT(*) FROM artist_genre ag
JOIN genres g ON ag.genre = g.genre_id
GROUP BY name
ORDER BY COUNT(*) DESC




--Количество треков, вошедших в альбомы 2019–2020 годов. Вывод названия альбома и количество треков
SELECT a.name, COUNT(*) FROM tracks t
JOIN albums a ON t.album = a.album_id
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.name
ORDER BY COUNT(*) DESC

--Количество треков, вошедших в альбомы 2019–2020 годов. Вывод общего количества треков во всех альбомах за указанный период
SELECT SUM(cnt_track_by_albums.count) FROM
(
SELECT a.name, COUNT(*) FROM tracks t
JOIN albums a ON t.album = a.album_id
WHERE a.year BETWEEN 2019 AND 2020
GROUP BY a.name
)
AS cnt_track_by_albums

--Средняя продолжительность треков по каждому альбому
SELECT tracks_by_albums.name, AVG(tracks_by_albums.duration) FROM
(
SELECT a.name, t.duration FROM tracks t
JOIN albums a ON t.album = a.album_id
)
AS tracks_by_albums
GROUP BY tracks_by_albums.name

--Все исполнители, которые не выпустили альбомы в 2020 году
SELECT a.name FROM artists a
JOIN artist_album aa ON aa.artist = a.artist_id
JOIN albums alb ON aa.album = alb.album_id
WHERE alb.year != 2020
GROUP BY a.name 

--Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
SELECT c.name FROM collections c
JOIN collection_track ct ON ct.collection = c.collection_id
JOIN tracks t ON ct.track = t.track_id
JOIN artist_album aa ON t.album = aa.album
JOIN artists a ON aa.artist = a.artist_id
WHERE a.name = 'Anton First'
GROUP BY c.name


--Задание 4(необязательное)

--Названия альбомов, в которых присутствуют исполнители более чем одного жанра.
SELECT alb.name FROM
(
SELECT artist, COUNT(*) FROM artist_genre
GROUP BY artist
HAVING COUNT(*) > 1
)
AS genres_count
JOIN artist_album aa ON genres_count.artist = aa.artist
JOIN albums alb ON aa.album = alb.album_id 

--Наименования треков, которые не входят в сборники.
SELECT t.name FROM collections c
FULL JOIN collection_track ct ON ct.collection = c.collection_id
FULL JOIN tracks t ON ct.track = t.track_id
FULL JOIN artist_album aa ON t.album = aa.album
FULL JOIN artists a ON aa.artist = a.artist_id
WHERE c.name IS NULL

--Исполнитель или исполнители, написавшие самый короткий по продолжительности трек, — теоретически таких треков может быть несколько.
SELECT a.name FROM tracks
JOIN albums alb ON tracks.album = alb.album_id
JOIN artist_album aa ON alb.album_id = aa.album
JOIN artists a ON aa.artist = a.artist_id
WHERE tracks.duration = (SELECT MIN(duration) FROM tracks)
GROUP BY a.name

--Названия альбомов, содержащих наименьшее количество треков.
SELECT alb.name FROM tracks t
JOIN albums alb ON t.album = alb.album_id
GROUP BY alb.name
HAVING COUNT(*) = (SELECT MIN(x.cnt) FROM (SELECT COUNT(*) AS cnt FROM tracks GROUP BY album) x)
