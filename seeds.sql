drop table if exists posts;
create table posts (
    id integer primary key,
    body text,
    created datetime default (datetime('now','localtime'))

);

insert into posts (body, created) values ('body1',datetime('now','localtime'));
insert into posts (body, created) values ('body2',datetime('now','localtime'));
insert into posts (body, created) values ('body3',datetime('now','localtime'));