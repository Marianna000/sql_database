SELECT style_id, COUNT(*) FROM musicianstyle
GROUP BY style_id
ORDER BY COUNT(*) DESC;
SELECT track, COUNT(*) FROM album
WHERE data_release between '2019-01-01' and '2020-12-31';

SELECT track, AVG(duration) FROM album;

SELECT *
FROM musician
WHERE musician."name" NOT IN 
(SELECT musician."name" FROM musician WHERE data_release != '2020-01-01')

SELECT distinct c.name_collection FROM сollection c
JOIN collection_track ct ON c.uniqueid = ct.collection_id
JOIN track t ON ct.track_id = t.uniqueid
JOIN album a ON t.album_id = a.uniqueid
JOIN album_executor ae ON a.uniqueid = ae.album_id
JOIN musician e ON ae.musician_id = e.uniqueid
WHERE e.name_executor LIKE 'Madonna';


SELECT track.name, tc.id_collection FROM track t
LEFT JOIN trackcollection tc ON tc.track_id = tc.track_id
LEFT JOIN collection c ON tc.collection_id = tc.collection_id
HAVING tc.collection_id IS null;


SELECT album.name, COUNT(track.name) FROM aLbum a
JOIN track t ON a.id = t.album_id
WHERE COUNT(track.name) IN (SELECT MIN(COUNT(track.name)) FROM Track)
GROUP BY album.name
ORDER BY COUNT(track.name) ASC;
