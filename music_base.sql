create table if not exists genres(
  id serial primary key,
  name varchar(60)
  );

create table if not exists authors(
  id serial primary key,
  name varchar(60)
  );

create table if not exists albums(
  id serial primary key,
  name varchar(60)
  );

create table if not exists tracks(
  id serial primary key,
  name varchar(60),
  time numeric (3,2),
  album_id serial references albums(id)
  );

create table if not exists collections(
  id serial primary key,
  name varchar(60),
  date_of_relise date not null,
  track_id serial references tracks(id)
  );

create table artists_genres(
  id serial primary key,
  genre_id serial references genres(id),
  author_id serial references authors(id)
  );

create table author_albums(
  id serial primary key,
  author_id serial references authors(id),
  album_id serial references albums(id)
  );

create table track_collections(
  id serial primary key,
  track_id serial references tracks(id),
  collection_id serial references collections(id)
  );
