drop table if exists microposts cascade;
drop table if exists authors cascade;
drop table if exists tags cascade;
drop table if exists microposts_tags;

create table authors(
  id serial primary key,
  name varchar(255) not null,
  birthdate date,
  photo_url text,
  date_joined date,
  gender varchar(255)
);

create table microposts(
  id serial primary key,
  date_created date not null,
  img_url text,
  title varchar(255),
  content text,
  author_id integer references authors
);

create table tags(
  id serial primary key,
  name varchar(255)
);

create table microposts_tags(
  micropost_id integer references microposts,
  tag_id integer references tags
);