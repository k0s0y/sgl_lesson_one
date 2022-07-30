-- Вносим исполнителей(8)
insert into authors (name) values ('AC/DC');
insert into authors (name) values ('Metallica');
insert into authors (name) values ('Green Day');
insert into authors (name) values ('Rammstein');
insert into authors (name) values ('The Beatles');
insert into authors (name) values ('Led Zeppelin');
insert into authors (name) values ('The Rolling Stones');
insert into authors (name) values ('Five Finger Death Punch');

--Вносим жанры(5)
insert into genres (name) values ('Rock');
insert into genres (name) values ('Electro');
insert into genres (name) values ('Folk');
insert into genres (name) values ('Rap');
insert into genres (name) values ('Classic');


--Вносим альбомы(8)
insert into albums (name, date_of_relise) values ('Album 1', '2021-06-20');
insert into albums (name, date_of_relise) values ('Album 2', '2021-01-20');
insert into albums (name, date_of_relise) values ('Album 3', '2021-02-20');
insert into albums (name, date_of_relise) values ('Album 4', '2021-03-20');
insert into albums (name, date_of_relise) values ('Album 5', '2021-04-20');
insert into albums (name, date_of_relise) values ('Album 6', '2021-05-20');
insert into albums (name, date_of_relise) values ('Album 7', '2021-07-20');
insert into albums (name, date_of_relise) values ('Album 8', '2021-08-20');
insert into albums (name, date_of_relise) values ('Album 9', '2018-08-20');
insert into albums (name, date_of_relise) values ('Album 10', '2018-08-20');
insert into albums (name, date_of_relise) values ('Album 11', '2019-08-20');
insert into albums (name, date_of_relise) values ('Album 12', '2020-04-20');

--Вносим треки(15)
insert into tracks (name, time, album_id) values ('Track 1', 5.01, 1);
insert into tracks (name, time, album_id) values ('Track 2', 3.02, 2);
insert into tracks (name, time, album_id) values ('Track 3', 6.04, 3);
insert into tracks (name, time, album_id) values ('Track 4', 7.11, 4);
insert into tracks (name, time, album_id) values ('Track 5', 2.12, 5);
insert into tracks (name, time, album_id) values ('Track 6', 4.12, 6);
insert into tracks (name, time, album_id) values ('Track 7', 5.22, 7);
insert into tracks (name, time, album_id) values ('Track 8', 3.33, 8);
insert into tracks (name, time, album_id) values ('Track 9', 2.44, 8);
insert into tracks (name, time, album_id) values ('Track 10', 1.28, 7);
insert into tracks (name, time, album_id) values ('Track 11', 8.11, 6);
insert into tracks (name, time, album_id) values ('Track 12', 7.22, 5);
insert into tracks (name, time, album_id) values ('Track 13', 3.01, 4);
insert into tracks (name, time, album_id) values ('Track 14', 0.11, 3);
insert into tracks (name, time, album_id) values ('Track 15', 2.01, 3);
insert into tracks (name, time, album_id) values ('My track', 2.01, 3);
insert into tracks (name, time, album_id) values ('Track 17', 7.05, 9);
insert into tracks (name, time, album_id) values ('Track 18', 3.12, 9);
insert into tracks (name, time, album_id) values ('Track 19', 3.15, 10);
insert into tracks (name, time, album_id) values ('Track 20', 2.11, 10);
insert into tracks (name, time, album_id) values ('Track 21', 4.13, 11);
insert into tracks (name, time, album_id) values ('Track 22', 2.22, 11);
insert into tracks (name, time, album_id) values ('Track 23', 3.33, 11);
insert into tracks (name, time, album_id) values ('Track 24', 4.04, 12);
insert into tracks (name, time, album_id) values ('Track 25', 1.48, 12);
insert into tracks (name, time, album_id) values ('Track 26', 4.12, 12);
insert into tracks (name, time, album_id) values ('Track 27', 8.25, 12);
insert into tracks (name, time, album_id) values ('Track 28', 8.50, 12);


--вносим сборники(8)
insert into collections (name, date_of_relise) values ('Collection 1', '2021-01-20');
insert into collections (name, date_of_relise) values ('Collection 2', '2021-02-20');
insert into collections (name, date_of_relise) values ('Collection 3', '2021-03-01');
insert into collections (name, date_of_relise) values ('Collection 4', '2021-03-10');
insert into collections (name, date_of_relise) values ('Collection 5', '2021-04-30');
insert into collections (name, date_of_relise) values ('Collection 6', '2021-02-03');
insert into collections (name, date_of_relise) values ('Collection 7', '2021-06-20');
insert into collections (name, date_of_relise) values ('Collection 8', '2021-08-20');
insert into collections (name, date_of_relise) values ('Collection 9', '2018-06-20');
insert into collections (name, date_of_relise) values ('Collection 10', '2019-08-20');

--Заполняем промежуточную таблицу с жанрами авторов (8)
insert into artists_genres (genre_id, author_id) values (1,1);
insert into artists_genres (genre_id, author_id) values (2,1);
insert into artists_genres (genre_id, author_id) values (1,2);
insert into artists_genres (genre_id, author_id) values (3,3);
insert into artists_genres (genre_id, author_id) values (4,4);
insert into artists_genres (genre_id, author_id) values (5,5);
insert into artists_genres (genre_id, author_id) values (2,6);
insert into artists_genres (genre_id, author_id) values (3,7);
insert into artists_genres (genre_id, author_id) values (4,8);

--Заполняем промежуточную таблицу с альбомами авторов
insert into author_albums (author_id, album_id) values (2,1);
insert into author_albums (author_id, album_id) values (3,1);
insert into author_albums (author_id, album_id) values (1,3);
insert into author_albums (author_id, album_id) values (3,4);
insert into author_albums (author_id, album_id) values (4,5);
insert into author_albums (author_id, album_id) values (5,6);
insert into author_albums (author_id, album_id) values (6,7);
insert into author_albums (author_id, album_id) values (8,8);
insert into author_albums (author_id, album_id) values (7,8);
insert into author_albums (author_id, album_id) values (8,2);
insert into author_albums (author_id, album_id) values (1,9);
insert into author_albums (author_id, album_id) values (2,10);
insert into author_albums (author_id, album_id) values (3, 11);
insert into author_albums (author_id, album_id) values (4,12);

--Заполняем промежуточную таблицу с коллекциями треков (5)
insert into track_collections (track_id, collection_id) values (1,1);
insert into track_collections (track_id, collection_id) values (2,1);
insert into track_collections (track_id, collection_id) values (3,1);
insert into track_collections (track_id, collection_id) values (4,1);
insert into track_collections (track_id, collection_id) values (2,2);
insert into track_collections (track_id, collection_id) values (5,2);
insert into track_collections (track_id, collection_id) values (6,2);
insert into track_collections (track_id, collection_id) values (7,2);
insert into track_collections (track_id, collection_id) values (7,3);
insert into track_collections (track_id, collection_id) values (9,3);
insert into track_collections (track_id, collection_id) values (6,3);
insert into track_collections (track_id, collection_id) values (5,3);
insert into track_collections (track_id, collection_id) values (6,4);
insert into track_collections (track_id, collection_id) values (10,4);
insert into track_collections (track_id, collection_id) values (11,4);
insert into track_collections (track_id, collection_id) values (12,4);
insert into track_collections (track_id, collection_id) values (13,5);
insert into track_collections (track_id, collection_id) values (14,5);
insert into track_collections (track_id, collection_id) values (15,5);
insert into track_collections (track_id, collection_id) values (1,5);
insert into track_collections (track_id, collection_id) values (13,6);
insert into track_collections (track_id, collection_id) values (6,6);
insert into track_collections (track_id, collection_id) values (7,6);
insert into track_collections (track_id, collection_id) values (13,7);
insert into track_collections (track_id, collection_id) values (12,7);
insert into track_collections (track_id, collection_id) values (8,7);
insert into track_collections (track_id, collection_id) values (8,8);
insert into track_collections (track_id, collection_id) values (4,8);
insert into track_collections (track_id, collection_id) values (1,8);
