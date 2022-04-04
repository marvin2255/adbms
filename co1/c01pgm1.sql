
create database movies1;
use movies;

create table Movies(title varchar(50),director varchar(15),myear int,rating float);
insert into Movies(title,director,myear,rating) values('Fargo','Coen',1996,8.2);
insert into Movies(title,director,myear,rating) values('Razing Arizona','Coen',1987,7.6);
insert into Movies(title,director,myear,rating) values('Spiderman','Raimi',2002,7.4);
insert into Movies(title,director,myear,rating) values('Wonder Boys','Hanson',2000,7.6);
select * from Movies;

create table Actor(actor varchar(50),ayear int);
insert into Actor(actor,ayear) values('cage',1964);
insert into Actor(actor,ayear) values('Hank',1956);
insert into Actor(actor,ayear) values('Maguire',1975);
insert into Actor(actor,ayear) values('McDormand',1957);
select * from Actor;

create table Acts(actor varchar(50),title varchar(50));
insert into Acts(actor,title) values('cage','Razing Arizona');
insert into Acts(actor,title) values('Maguire','Spiderman');
insert into Acts(actor,title) values('Maguire','Wonder Boys');
insert into Acts(actor,title) values('McDormand','Fargo');
insert into Acts(actor,title) values('McDormand','Razing Arizona');
insert into Acts(actor,title) values('McDormand','Wonder Boys');
select * from Acts;

create table director(director varchar(50),dyear int);
insert into director(director,dyear) values('Coen',1954);
insert into director(director,dyear) values('Hanson',1945);
insert into director(director,dyear) values('Raimi',1959);
select * from director;

select * from Movies where myear>=1997;

select * from Movies where director='Hanson'and myear>=1997;

select title,rating from Movies;

select distinct Movies.director,Acts.actor from Movies inner join Acts where Movies.title=Acts.title;

select Movies.title from Movies inner join Acts on Movies.title=Acts.title and Movies.director='Coen' and Acts.actor='McDormand';