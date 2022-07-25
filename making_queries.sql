--название и год выхода альбомов, вышедших в 2018 году;
select name, date_of_release 
from albums
where date_of_release > '2018-01-01'

--название и продолжительность самого длительного трека;
select name, time
from tracks
where time = (select max(time) from tracks)

--название треков, продолжительность которых не менее 3,5 минуты;
select name
from tracks
where time >= 3.5

--названия сборников, вышедших в период с 2018 по 2020 год включительно;
select name
from collections 
where date_of_release > '2018-01-01 ' AND date_of_release < '2020-12-31'

--исполнители, чье имя состоит из 1 слова;
select name
from authors
where name not like '% %'

--название треков, которые содержат слово "мой"/"my".
select name
from tracks
where name like '%My%'
