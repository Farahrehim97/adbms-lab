create database moviedatabase;
use moviedatabase;
create table movies(title varchar(30) not null,director varchar(20) not null,myear int(5),rate float(3),primary key(title));
insert into movies values("Fargo","Coen",1996,8.2);
insert into movies values("Raising Arizona","Coen",1987,7.6);
insert into movies values("Spiderman","Raimi",2002,7.4);
insert into movies values("Wonder Boys","Hanson",2000,7.6);
create table actors(actor varchar(20) not null, ayear int(5) not null,primary key(actor));
insert into actors values("Cage",1964);
insert into actors values("Hanks",1956);
insert into actors values("Maguire",1975);
insert into actors values("McDormand",1957);
create table directors(director varchar(20) not null,dyear int(5) not null,primary key(director));
insert into directors values("Coen",1954);
insert into actors values("Hanson",1945);
insert into actors values("Raimi",1959);
create table acts(actor varchar(20) not null,title varchar(30) not null,foreign key(actor) references actors (actor) on delete cascade,foreign key(title) references movies (title) on delete cascade);
insert into acts values("Cage","Raising Arizona");
insert into acts values("Maguire","Spiderman");
insert into acts values("Maguire","Wonder Boys");
insert into acts values("McDormand","Fargo");
insert into acts values("McDormand","Raising Arizona");
insert into acts values("McDormand","Wonder Boys");
select * from movies where myear>1997;  #q1
select *from movies where director="Hanson" and myear>1997;  #q2
select title,rate from movies;  #q3
select movies.director,acts.actor from movies  inner join acts on movies.title=acts.title; #q4
select movies.title from movies inner join acts on movies.title=acts.title where director="Coen" and actor="McDormand";  #q5
