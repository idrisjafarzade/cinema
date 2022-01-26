--CREATE DATABASE Cinemasdb
-- use Cinemasdb
-- CREATE TABLE Movies(
--	Id int primary key identity,
--	Name nvarchar (100) not null,
--	Country nvarchar(100) not null,
--	Time nvarchar (50) not null
-- )

-- INSERT INTO Movies
-- VALUES ('Red Notice', 'US','117 minutes'),
--		('Fury', 'US', '134 minutes'),
--		('Soyuq Gunes', 'Azerbaijan', '125 minutes'),
--		('Kağıttan Hayatlar', 'Turkey', '97 minutes')
	
--INSERT INTO Movies
-- VALUES ('Delibal', 'Turkey','117 minutes')

--CREATE TABLE Actors(
--	Id int primary key identity,
--	Fulname nvarchar (100) not null
-- )
-- INSERT INTO Actors
-- VALUES ('Cagatay Ulusoy'),
--		('Brad Pitt'),
--		('Dwayne Jhonson'),
--		('İrane Kerimova')

	
--CREATE TABLE ActorsMovies(
--	Id int primary key identity,
--	ActorId int references Actors(Id),
--	MovieId int references Movies(Id)
-- )

--INSERT INTO ActorsMovies 
--VALUES (1,4),
--	   (1,5),
--	   (3,1),
--	   (2,2),
--	   (4,3)


--CREATE TABLE Genres(
--	Id int primary key identity,
--	Type nvarchar (50) not null
-- )

--INSERT INTO Genres
--VALUES ('Drama'),
--	   ('Romantic'),
--	   ('Action'),
--	   ('War')

--CREATE TABLE GenresMovies(
--	Id int primary key identity,
--	GenreId int references Genres(Id),
--	MovieId int references Movies(Id)
-- )


-- SELECT * FROM ActorsMovies am
-- JOIN Actors a
-- on am.actorid=a.id
-- join Movies m
-- on am.movieid=m.id

--INSERT INTO GenresMovies
--VAlUES (3,1),
--	   (2,3),
--	   (1,5),
--	   (4,2),
--	   (1,4)

--SELECT * FROM GenresMovies gm
--inner JOIN Genres g
-- on gm.genreid=g.id
--inner join Movies m
-- on gm.movieid=m.id

--CREATE TABLE Halls(
--	Id int primary key identity,
--	Name nvarchar (50) not null
-- )
--  INSERT INTO Halls
--  values ('west'),
--		 ('east')

--CREATE TABLE Sessions(
--	Id int primary key identity,
--	Date nvarchar (50) not null,
--	MovieId int references Movies(Id),
--	HallId int references Halls(Id),
-- )
-- INSERT INTO Sessions
-- VALUES ('12:00',4,1) 


	
-- INSERT INTO Sessions
--	VALUES ('15:00',5,2),
--			('18:00',2,1),
--			('21:00',1,2),
--			('23:00',3,2)

 --Select Date, m.Name 'Film Name', Country, Time, h.Name 'Hall Name'   from Sessions s
 --join  Movies m
 --on s.MovieId=m.Id
 --join Halls h
 --on s.HallId= h.Id

 --CREATE TABLE Customers(
	--Id int primary key identity,
	--Name nvarchar (50) not null,
	--Surname nvarchar (50) not null
 --)
 -- INSERT INTO Customers
 -- values ('Idris', 'Jafarzade'),
	--	('Alisimran', 'Mammadli')

	
 --CREATE TABLE Tickets(
	--Id int primary key identity,
	--Price decimal(10,2) not null,
	--SessionId int references Sessions(Id),
	--CustomerId int references Customers(Id)
 --)
	--INSERT INTO Tickets
	--VALUES (14.20, 1,1)
--INSERT INTO Tickets
--	VALUES (18.50, 2,2)

CREATE VIEW v_TicketsInfo
AS
Select  c.Name 'Customer Name', c.surname 'Customer Surname',h.Name'Hall Name', Date, m.name 'Movie',Price, time  from Tickets t
	join Sessions s
	on t.SessionId=s.Id
	join Customers c
	on t.CustomerId=c.Id
	 join  Movies m
	 on s.movieId=m.id
	 join Halls h
    on s.HallId= h.Id

	select *from v_TicketsInfo






	

