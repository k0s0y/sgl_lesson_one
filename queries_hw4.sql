--количество исполнителей в каждом жанре;
select genre_id, count(author_id) from artists_genres
group by genre_id

--количество треков, вошедших в альбомы 2019-2020 годов;
select t.album_id, count(t.id) from tracks t 
inner join albums a on a.id = t.album_id 
where a.date_of_relise > '2019-01-01' and a.date_of_relise <= '2020-12-31'
group by t.album_id
--средняя продолжительность треков по каждому альбому;
select a.name, round(avg(t.time),2) from albums a 
join tracks t on a.id = t.album_id 
group by a.name

--все исполнители, которые не выпустили альбомы в 2020 году
select a.name, a2.date_of_relise 
from authors a 
join author_albums aa on a.id = aa.author_id 
join albums a2 on aa.album_id = a2.id 
where (SELECT EXTRACT(YEAR from a2.date_of_relise)) != '2020'

--названия сборников, в которых присутствует конкретный исполнитель (выберите сами);
select distinct c.name 
from collections c
join track_collections tc on c.id = tc.track_id 
join tracks t on tc.id = t.id 
join albums a on t.album_id = a.id 
join author_albums aa on a.id = aa.author_id 
join authors a2 on aa.author_id = a2.id 
where a2.name iLike 'rammstein'

--название альбомов, в которых присутствуют исполнители более 1 жанра;
select a.name
from albums a 
join author_albums aa on a.id = aa.author_id 
join authors a2 on aa.author_id = a2.id 
join artists_genres ag on a2.id = ag.author_id 
group by a2."name", a."name" 
having count(ag.genre_id) > 1 

--наименование треков, которые не входят в сборники;
select t.name
from tracks t  
left join track_collections tc on t.id = tc.track_id 
where tc.collection_id is NULL

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);
select a.name
from authors a 
join author_albums aa on a.id = aa.author_id 
join albums a2 on aa.author_id = a2.id 
join tracks t on a2.id = t.album_id 
where t.time in (select min(time) from tracks)

--название альбомов, содержащих наименьшее количество треков.
select  a.name, count(t.id) 
from Albums a 
join tracks t ON a.id = t.album_id 
group by a.name 
having  count(t.id) in (
	select count(t.id) 
	from Albums a 
	join tracks t ON a.id = t.album_id 
	group by a.name 
	order by count(t.id) 
  limit 1)

