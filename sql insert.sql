INSERT INTO artist(id, name)
    VALUES (1, 'Tom Waits'),
     (2, 'Би-2'),
     (3, 'КИНО'),
     (4, 'Руки Вверх'),
     (5, 'David Rawlings'),
     (6, 'Melody Gardot'),
     (7, 'Мари Краймбрери'),
     (8, 'Hugh Laurie');

INSERT INTO genre(id, name)
    VALUES(1, 'Блюз'),
    (2, 'Кантри'),
    (3, 'Рок'),
    (4, 'Поп'),
    (5, 'Джаз');    
 
INSERT INTO artist_genre(artist_id, genre_id) 
	VALUES(1, 1),
	(5, 2),
	(2, 3),
	(3, 3),
	(7, 4),
	(4, 4),
	(6, 5),
	(8, 1);

INSERT INTO album(id, name, album_date)
    VALUES(1, 'My One And Only Thrill', '2008-11-20'),
    (2, 'Если устал', '2022-05-15'),
    (3, 'Звезда по имени Солнце', '1989-01-22'),
    (4, 'МУЗА', '2009-12-25'),
    (5, 'Забери ключи', '2017-04-11'),
    (6, 'Poor David Almanack', '2018-06-10'),
    (7, 'Didnt It Rain', '2013-02-28'),
    (8, 'Minneapolis Drive Time', '2016-09-18');


INSERT INTO track(id, name, track_duration,album_id) 
    VALUES(1, 'Забери ключи ', 3.48, 5),
	(2, 'Airplane ', 4.44, 6),
	(3, 'Good God A Woman ', 3.31, 6),
	(4, 'Over The Rainbow ', 4.33, 1),
	(5, 'If The Stars Were Mine ', 2.48, 1),
	(6, 'Звезда по имени Солнце ', 3.45, 3),
	(7, 'Better off Without a Wife', 4.46, 8),
	(8, 'Если устал', 3.17, 2),
	(9, 'Снайпер ', 3.22, 4),
	(10, 'Пачка сигарет ', 4.28, 3),
	(11, 'Virginia Avenue', 2.47, 8),
	(12, 'Our Love Is Easy ', 5.28, 1),
	(13, 'Kiss of Fire ', 3.27, 7),
	(14, 'Муза ', 3.14, 4),
	(15, 'Кассандра ', 4.31, 4),
	(16, 'Changes ', 3.58, 7),
	(17, 'my track', 3.25, 6),
    (18, 'мой трек', 5.35, 2);
    
INSERT INTO collections(id, name, release_year) 
	VALUES(1, 'Сборник_1', '2008-12-12'),
	(2, 'Сборник_2', '2022-01-22'),
	(3, 'Сборник_3', '2016-12-12'),
	(4, 'Сборник_4', '2013-11-11'),
	(5, 'Сборник_5', '1989-10-10'),
	(6, 'Сборник_6', '2009-01-09'),
	(7, 'Сборник_7', '2017-09-01'),
	(8, 'Сборник_8', '2018-05-10');
    
INSERT INTO album_artist(id, artist_id, album_id) 
	VALUES(1, 6, 1),
	(2, 4, 5),
	(3, 3, 3),
	(4, 2, 4),
	(5, 7, 2),
	(6, 5, 6),
	(7, 8, 7),
	(8, 1, 8);
    
INSERT INTO collections_track(id, collections_id, track_id) 
	VALUES(1, 1, 4),
	(2, 1, 5),
	(3, 1, 12),
	(4, 2, 8),
	(5, 3, 7),
	(6, 3, 11),
	(7, 4, 13),
	(8, 4, 16),
	(9, 5, 6),
	(10, 5, 10),
	(11, 6, 9),
	(12, 6, 14),
	(13, 6, 15),
	(14, 7, 1),
	(15, 8, 2),
	(16, 8, 3),
	(17, 2, 17);