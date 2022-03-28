SELECT genre_id, COUNT(artist_id) FROM artist_genre GROUP BY genre_id ORDER BY COUNT(artist_id) DESC;
SELECT COUNT(*) FROM album as a INNER JOIN track as t ON t.album_id = a.id WHERE a."album_date" BETWEEN '2019-01-01' AND '2020-12-31';
SELECT album.name, SUM(track.track_duration) FROM track JOIN album ON track.album_id = album.id GROUP BY album.name ORDER BY SUM(track.track_duration) DESC;
SELECT artist.name FROM album_artist AS aa JOIN artist ON aa.artist_id = artist.id JOIN album ON aa.album_id = album.id WHERE album.album_date NOT BETWEEN '2020-01-01' AND '2020-12-30' GROUP BY artist.name;
SELECT collections.name FROM collections_track AS ct JOIN collections ON ct.collections_id = collections.id JOIN track ON ct.track_id = track.id JOIN album ON track.album_id = album.id JOIN album_artist AS aa ON album.id = aa.album_id JOIN artist ON artist.id = aa.artist_id WHERE artist.name iLIKE '%%Мари Краймбрери%%' GROUP BY collections.name;
SELECT album.name FROM artist_genre AS ag JOIN genre ON ag.genre_id = genre.id JOIN artist ON ag.artist_id = artist.id JOIN album_artist ON album_artist.artist_id = artist.id JOIN album ON album_artist.album_id = album.id GROUP BY album.name HAVING COUNT(genre.name) > 1 ORDER BY album.name;
SELECT t.name FROM track as t LEFT JOIN collections_track as ct ON ct.track_id = t.id WHERE ct.track_id IS NULL;
SELECT artist.name, track.track_duration FROM track JOIN album ON track.album_id = album.id JOIN album_artist AS aa ON album.id = aa.album_id JOIN artist ON artist.id = aa.artist_id GROUP BY artist.name, track.track_duration HAVING track.track_duration = (SELECT min(track_duration) FROM track) ORDER BY artist.name;
SELECT album.name FROM album JOIN track ON album.id = track.album_id WHERE track.album_id IN (SELECT album_id FROM track GROUP BY album_id HAVING COUNT(id) = (SELECT COUNT(id) FROM track GROUP BY album_id ORDER BY count LIMIT 1 )) ORDER BY album.name;

