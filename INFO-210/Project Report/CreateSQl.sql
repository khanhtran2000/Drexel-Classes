-------Dropping tables--------

drop table RentBook;
drop table Purchasing;
drop table DVD;
drop table OnlineMovie;
drop table RentMovie;
drop table Customer;
drop table Book;
drop table Membership;
drop table Movies;


--------Creating tables---------

--Create table Customer
create table Customer(
    cusID number primary key,
    cusName varchar(128) not null,
    address varchar(128) not null,
    email varchar(128)
);

--Populate data for table Customer
insert into Customer values (001,'Tony Aldred','1 Taylor Street Lebanon, NH','ferne30@hotmail.com');
insert into Customer values (002,'Williard Gislason','447 NH-4A Enfield, NH','darrell64@hotmail.com');
insert into Customer values (003,'Felipa Upton','7 Lebanon Street Hanover, NH','trinity.keeling@yahoo.com');
insert into Customer values (004,'Emile Gusikowski','1760 Quechee Main Street Queche, VT','bryana_rowe17@gmail.com');
insert into Customer values (005,'Flo Hintz','135 US-5 Norwich, VT','brayan_turner@hotmail.com');
insert into Customer values (006,'Cayla Reichel','164 Main Street Bradford, VT','pascale_baumbach@gmail.com');
insert into Customer values (007,'Alivia Mraz','5 Allen Street Bradford, VT','maurine7@yahoo.com');
insert into Customer values (008,'Lysanne Borer','74 Chestnut Street Philadelphia, PA','jarrett32@hotmail.com');
insert into Customer values (009,'Freddy Green','7633 Holly Street Jackson, NJ','gadley25619@gmail.com');
insert into Customer values (010,'Armando Batz','128 South Magnolia Lane Pompano Beach, FL','ruckel2634@gmail.com');

--Create table Membership
create table Membership(
    membership_name varchar(128) primary key,
    pricing_per_year number not null,
    numb_rent number not null --the maximum number of books a member can rent in a month
);

--Populate data for table Membership
insert into Membership values ('Bronze',30,10);
insert into Membership values ('Silver',45,20);
insert into Membership values ('Gold',70,30);



--Create table Purchasing
create table Purchasing(
    cusID number,
    start_date date,
    end_date date,
    type_membership varchar(128),
    primary key(cusID, type_membership, start_date),
    foreign key (cusID) references Customer(cusID),
    foreign key (type_membership) references Membership(membership_name)
);

--Populate data for table Purchasing
insert into Purchasing values (001, TO_DATE('1 Jan 2017', 'DD MM YYYY'),TO_DATE('1 Jan 2018','DD MM YYYY'),'Bronze');
insert into Purchasing values (002, TO_DATE('6 Feb 2017', 'DD MM YYYY'),TO_DATE('6 Feb 2018','DD MM YYYY'),'Bronze');
insert into Purchasing values (003, TO_DATE('15 Jun 2017', 'DD MM YYYY'),TO_DATE('15 Jun 2018','DD MM YYYY'),'Silver');
insert into Purchasing values (004, TO_DATE('20 Aug 2017', 'DD MM YYYY'),TO_DATE('20 Aug 2018','DD MM YYYY'),'Gold');
insert into Purchasing values (002, TO_DATE('14 Feb 2018', 'DD MM YYYY'),TO_DATE('14 Feb 2019','DD MM YYYY'),'Bronze');
insert into Purchasing values (001, TO_DATE('25 Apr 2018', 'DD MM YYYY'),TO_DATE('25 Apr 2019','DD MM YYYY'),'Silver');
insert into Purchasing values (005, TO_DATE('16 Jul 2018', 'DD MM YYYY'),TO_DATE('16 Jul 2019','DD MM YYYY'),'Bronze');
insert into Purchasing values (006, TO_DATE('21 Sep 2018', 'DD MM YYYY'),TO_DATE('21 Sep 2019','DD MM YYYY'),'Silver');
insert into Purchasing values (007, TO_DATE('11 Oct 2018', 'DD MM YYYY'),TO_DATE('11 Oct 2019','DD MM YYYY'),'Gold');
insert into Purchasing values (008, TO_DATE('20 Oct 2018', 'DD MM YYYY'),TO_DATE('20 Oct 2019','DD MM YYYY'),'Silver');
insert into Purchasing values (004, TO_DATE('15 May 2019', 'DD MM YYYY'),TO_DATE('15 May 2020','DD MM YYYY'),'Bronze');
insert into Purchasing values (003, TO_DATE('3 Jun 2019', 'DD MM YYYY'),TO_DATE('3 Jun 2020','DD MM YYYY'),'Silver');
insert into Purchasing values (001, TO_DATE('13 Jun 2019', 'DD MM YYYY'),TO_DATE('13 Jun 2020','DD MM YYYY'),'Bronze');
insert into Purchasing values (005, TO_DATE('17 Jul 2019', 'DD MM YYYY'),TO_DATE('17 Jul 2020','DD MM YYYY'),'Silver');
insert into Purchasing values (009, TO_DATE('5 Aug 2019', 'DD MM YYYY'),TO_DATE('5 Aug 2020','DD MM YYYY'),'Gold');
insert into Purchasing values (008, TO_DATE('31 Dec 2019', 'DD MM YYYY'),TO_DATE('31 Dec 2020','DD MM YYYY'),'Silver');
insert into Purchasing values (004, TO_DATE('31 May 2020', 'DD MM YYYY'),TO_DATE('31 May 2021','DD MM YYYY'),'Bronze');
insert into Purchasing values (007, TO_DATE('3 Jun 2020', 'DD MM YYYY'),TO_DATE('3 Jun 2021','DD MM YYYY'),'Bronze');
insert into Purchasing values (010, TO_DATE('7 Jun 2020', 'DD MM YYYY'),TO_DATE('7 Jun 2021','DD MM YYYY'),'Silver');



--Create table Movies
create table Movies(
    movieID number primary key,
    movie_name varchar(128) not null,
    director varchar(128) not null,
    genre varchar(128) not null,
    IMDB float
);

--Populate data for table Movies
insert into Movies values (001,'When in Rome','Mark Steven Johnson','Comedy',7.0);
insert into Movies values (002,'The Godfather','Francis Ford Cappola','Crime',9.2);
insert into Movies values (003,'The Dark Knight','Christopher Nolan','Action',9.0);
insert into Movies values (004,'Pulp Fiction','Quentin Tarantino','Crime',8.9);
insert into Movies values (005,'Schindler''s List','Steven Spielberg','Biography',8.9);
insert into Movies values (006,'12 Angry Men','Sidney Lumet','Crime',8.9);
insert into Movies values (007,'Inception','Christopher Nolan','Action',8.8);
insert into Movies values (008,'Fight Club','David Fincher','Drama',8.8);
insert into Movies values (009,'Forrest Gump','Robert Zemeckis','Drama',8.8);
insert into Movies values (010,'The Goood, the Bad and the Ugly','Sergio Leone','Western',8.8);
insert into Movies values (011,'The Matrix','Lana Wachowski, Lilly Wachowski','Action',8.7);
insert into Movies values (012,'Goodfellas','Martin Scorsesse','Biography',8.7);
insert into Movies values (013,'One Flew Over the Cuckoo''s Nest','Milos Forman','Drama',8.7);
insert into Movies values (014,'Harakiri','Masaki Kobayashi','Action',8.7);
insert into Movies values (015,'Parasite','Bong Joon Ho','Comedy',8.6);
insert into Movies values (016,'Interstellar','Christopher Nolan','Adventure',8.6);
insert into Movies values (017,'City of God','Fernando Meirelles','Crime',8.6);
insert into Movies values (018,'Spirited Away','Hayao Miyazaki','Aniamtion',8.6);
insert into Movies values (019,'Saving Private Ryan','Steven Spielberg','War',8.6);
insert into Movies values (020,'The Green Mile','Frank Darabont','Crime',8.6);
insert into Movies values (021,'Life Is Beautiful','Roberto Benigni','Comedy',8.6);
insert into Movies values (022,'Se7en','David Fincher','Crime',8.6);
insert into Movies values (023,'The Silence of the Lambs','Jonathan Demme','Crime',8.6);
insert into Movies values (024,'Star Wars: Episode IV - A New Hope','George Lucas','Adventure',8.6);
insert into Movies values (025,'Anand','Hrishikesh Mukherjee','Drama',8.6);
insert into Movies values (026,'Dragon Ball Super: Broly','Yamauchi Shigeyasu','Action', 7.5);
insert into Movies values (027,'Rush Hour','Brett Ratner','Action', 7.0);
insert into Movies values (028,'Rush Hour 2','Brett Ratner','Action', 6.6);
insert into Movies values (029,'Rush Hour 3','Brett Ratner','Action', 6.2);
insert into Movies values (030,'Home Alone','Chris Columbus','Family', 7.6);
insert into Movies values (031,'Elf','Jon Favreau','Comedy', 6.9);
insert into Movies values (032,'Spider-Man 3','Sam Raimi','Action', 6.2);
insert into Movies values (033,'Avengers: Endgame','Joe Russo','Action', 8.4);
insert into Movies values (034,'The Call of the Wild','Chris Sanders','Drama', 6.8);
insert into Movies values (035,'Sonic the Hedgehog','Jeff Fowler','Family', 6.6);
insert into Movies values (036,'Pokemon Detective Pikachu','Adventure', 6.6);
insert into Movies values (037,'Joker','Todd Phillips','Crime', 8.5);
insert into Movies values (038,'Extraction','Sam Hargrave','Action', 6.8);
insert into Movies values (039,'Black Panther','Ryan Coogler','Action', 7.3);
insert into Movies values (040,'My Hero Academia: Heroes: Rising','Kenji Nagasaki','Action', 8.0);
insert into Movies values (041,'Uncut Gems','Josh Safdie','Crime', 7.5);
insert into Movies values (042,'Space Jam','Joe Pytka','Family', 6.4);
insert into Movies values (043,'Finding Nemo','Andrew Stanton','Family', 8.1);
insert into Movies values (044,'Mulan','Niki Caro','Action', 6.1);
insert into Movies values (045,'Venom','Ruben Fleischer','Action', 6.7);
insert into Movies values (046,'Pokemon: The First Movie','Kunihiko Yuyama','Adventure', 6.3);
insert into Movies values (047,'The Last: Naruto the Movie','Tsuneo Kobayashi','Action', 7.6);
insert into Movies values (048,'Air Bud','Charles Martin Smith','Family', 5.2);
insert into Movies values (049,'Toy Story 3','Lee Unkrich','Family', 8.3);
insert into Movies values (050,'Furious 7','James Wan','Action', 7.1);



--Create table OnlineMovie
create table OnlineMovie(
    movieID number primary key,
    foreign key (movieID) references Movies (movieID)
);

--Populate data for table OnlineMovie
insert into OnlineMovie values (001);
insert into OnlineMovie values (003);
insert into OnlineMovie values (006);
insert into OnlineMovie values (008);
insert into OnlineMovie values (010);
insert into OnlineMovie values (011);
insert into OnlineMovie values (012);
insert into OnlineMovie values (015);
insert into OnlineMovie values (016);
insert into OnlineMovie values (017);
insert into OnlineMovie values (019);
insert into OnlineMovie values (020);
insert into OnlineMovie values (022);
insert into OnlineMovie values (023);
insert into OnlineMovie values (024);
insert into OnlineMovie values (025);


--Create table DVD
create table DVD (
    movieID number primary key,
    condition char(4),
    foreign key (movieID) references Movies (movieID),
    check (condition in ('good', 'bad'))
);

--Populating data for table DVD
insert into DVD values (001,'good');
insert into DVD values (002,'good');
insert into DVD values (003,'good');
insert into DVD values (004,'bad');
insert into DVD values (005,'good');
insert into DVD values (006,'good');
insert into DVD values (007,'good');
insert into DVD values (008,'good');
insert into DVD values (009,'bad');
insert into DVD values (010,'good');
insert into DVD values (011,'bad');
insert into DVD values (012,'good');
insert into DVD values (013,'good');
insert into DVD values (014,'good');
insert into DVD values (015,'good');
insert into DVD values (016,'good');
insert into DVD values (017,'good');
insert into DVD values (018,'good');
insert into DVD values (019,'good');
insert into DVD values (020,'good');
insert into DVD values (021,'good');
insert into DVD values (022,'bad');
insert into DVD values (023,'good');
insert into DVD values (024,'good');
insert into DVD values (025,'good');


--Create table RentMovie
create table RentMovie(
    cusID number,
    movieID number,
    start_date date not null,
    end_date date not null,
    late_return char(1),
    primary key (cusID, movieID, start_date, end_date),
    foreign key (movieID) references Movies(movieID),
    foreign key (cusID) references Customer(cusID),
    check (late_return in ('Y', 'N'))
);

--Populate data for RentMovie table
insert into RentMovie values (001,002,TO_DATE('3 Jan 2017','DD MM YYYY'),TO_DATE('3 Mar 2017','DD MM YYYY'),'N');
insert into RentMovie values (002,015,TO_DATE('15 Mar 2017','DD MM YYYY'),TO_DATE('15 Jun 2017','DD MM YYYY'),'N');
insert into RentMovie values (001,008,TO_DATE('20 Mar 2017','DD MM YYYY'),TO_DATE('20 Jun 2017','DD MM YYYY'),'N');
insert into RentMovie values (001,010,TO_DATE('20 Mar 2017','DD MM YYYY'),TO_DATE('20 Jun 2017','DD MM YYYY'),'N');
insert into RentMovie values (002,001,TO_DATE('10 May 2017','DD MM YYYY'),TO_DATE('10 Aug 2017','DD MM YYYY'),'N');
insert into RentMovie values (005,020,TO_DATE('29 Jul 2018','DD MM YYYY'),TO_DATE('29 Oct 2018','DD MM YYYY'),'N');
insert into RentMovie values (004,010,TO_DATE('2 Aug 2018','DD MM YYYY'),TO_DATE('2 Aug 2018','DD MM YYYY'),'N');
insert into RentMovie values (005,005,TO_DATE('20 Aug 2018','DD MM YYYY'),TO_DATE('20 Nov 2018','DD MM YYYY'),'Y');
insert into RentMovie values (007,012,TO_DATE('12 Oct 2018','DD MM YYYY'),TO_DATE('12 Jan 2019','DD MM YYYY'),'N');
insert into RentMovie values (007,014,TO_DATE('12 Oct 2018','DD MM YYYY'),TO_DATE('12 Jan 2019','DD MM YYYY'),'N');
insert into RentMovie values (004,025,TO_DATE('20 May 2019','DD MM YYYY'),TO_DATE('20 Aug 2019','DD MM YYYY'),'N');
insert into RentMovie values (004,006,TO_DATE('21 May 2019','DD MM YYYY'),TO_DATE('21 Aug 2019','DD MM YYYY'),'N');
insert into RentMovie values (001,019,TO_DATE('13 Jun 2019','DD MM YYYY'),TO_DATE('13 Sep 2019','DD MM YYYY'),'N');
insert into RentMovie values (001,020,TO_DATE('13 Jun 2019','DD MM YYYY'),TO_DATE('12 Sep 2019','DD MM YYYY'),'N');
insert into RentMovie values (008,022,TO_DATE('7 Aug 2019','DD MM YYYY'),TO_DATE('7 Nov 2019','DD MM YYYY'),'Y');
insert into RentMovie values (004,015,TO_DATE('31 May 2020','DD MM YYYY'),TO_DATE('31 Aug 2020','DD MM YYYY'),'N');
insert into RentMovie values (004,007,TO_DATE('1 Jun 2020','DD MM YYYY'),TO_DATE('1 Sep 2020','DD MM YYYY'),'N');
insert into RentMovie values (007,001,TO_DATE('4 Jun 2020','DD MM YYYY'),TO_DATE('4 Sep 2020','DD MM YYYY'),'N');


--Create table Book
create table Book (
    ISBN number(13) primary key,
    title varchar(255),
    author varchar(255),
    genre varchar(255),
    condition varchar(4),
    check (condition in ('good', 'bad'))
);

--Populate data for table Book
insert into Book values (9781891830716,'AEIOU or Any Easy Intimacy','Jeffrey Brown','Romance','good');
insert into Book values (9781603090254,'Alec: The Years Have Pants','','Drama','good');
insert into Book values (9781603090773,'Any Empire','Nate Powell','Realistic Fiction','good');
insert into Book values (9781891830402,'Beach Safari','Mawil','Adventure','good');
insert into Book values (9781891830518,'Less Than Heroes','David Yurkovich','Action','good');
insert into Book values (9781603090704,'Liar''s Kiss','Eric Skillman','Crime','good');
insert into Book values (9781891830143,'Speechless','Peter Kuper','History','good');
insert into Book values (9781891830501,'Spiral-Bound','Aaron Renier','Adventure','good');
insert into Book values (9780747532743,'Harry Potter and the Philosopher''s Stone','J.K.Rowling','Fiction','good');
insert into Book values (9780605039070,'Harry Potter and the Deathly Hallows','J.K.Rowling','Fiction','good');
insert into Book values (9781408855928,'Harry Potter and the Goblet of Fire','J.K.Rowling','Fiction','good');
insert into Book values (9780439791328,'Harry Potter and the Half-Blood Prince','J.K.Rowling','Fiction','good');
insert into Book values (9781408855904,'Harry Potter and the Chamber of Secrets','J.K.Rowling','Fiction','good');
insert into Book values (9781484476253,'Harry Potter and the Prisoner of Azkaban','J.K.Rowling','Fiction','good');
insert into Book values (9780439567626,'Harry Potter and the Order of the Phoenix','J.K.Rowling','Fiction','good');
insert into Book values (9780439023481,'The Hunger Games','Suzanne Collins','Fiction, Action','good');
insert into Book values (9781423121701,'Percy Jackson: The Lightning Thief','Rick Riordan','Fiction, Adventure','good');
insert into Book values (9781410467744,'Percy Jackson: The Sea of Monsters','Rick Riordan','Fiction, Adventure','good');
insert into Book values (9781423101451,'Percy Jackson: The Titan''s Curse','Rick Riordan','Fiction, Adventure','good');
insert into Book values (9781423101468,'Percy Jackson: The Battle of the Labyrinth5','Rick Riordan','Fiction, Adventure','good');
insert into Book values (9781423101475,'Percy Jackson: The Last Olympian','Rick Riordan','Fiction, Adventure','good');
insert into Book values (9780385537674,'Fifty Shades of grey','E.L.James','Romance','good');
insert into Book values (9783442313488,'Fifty Shades Darker','E.L.James','Romance','good');
insert into Book values (9780606264815,'Fifty Shades Freed','E.L.James','Romance','good');
insert into Book values (9780062316097,'Sapiens: A Brief History of Humankind','yuval Noah Harari','History','good');
insert into Book values (9783498038083,'To Kill a Mockingbird','Harper Lee','Fiction','good');
insert into Book values (9781572702561,'The Great Gatsby','F. Scott Fitzgerald','Tragedy','good');
insert into Book values (9781402790027,'Romeo and Juliet','William Shakespeare','Drama','good');
insert into Book values (9781569319307,'Dragon Ball Z Vol. 1','Akira Toriyama','Manga','good');
insert into Book values (9781591163633,'Yu-Gi-Oh! Vol. 1','Kazuki Takahashi','Manga','good');
insert into Book values (9787543321724,'The Catcher in the Rye','J.D Salinger','Novel','good');
insert into Book values (9781581163640,'One Piece Vol. 1','Elichiro Oda','Manga','good');
insert into Book values (9781591167532,'Hunter X Hunter Vol. 1','Yoshihiro Togashi','Manga','good');
insert into Book values (9781591167853,'Hunter X Hunter Vol. 2','Yoshihiro Togashi','Manga','good');
insert into Book values (9783551313485,'The Maze Runner','James Dashner','Science Fiction','good');
insert into Book values (9781419396304,'Marley & Me: Life and Love with the Worlds Worst Dog','John Grogan','Biography','good');
insert into Book values (9781421519746,'Naruto 01','Masashi Kishimoto','Manga','good');
insert into Book values (9781421592541,'Dragon Ball Super Vol. 1','Akira Toriyama','Manga','good');
insert into Book values (9781421596471,'Dragon Ball Super Vol 2','Akira Toriyama','Manga','good');
insert into Book values (9781612620244,'Attack On Titan 1','Hajime Isayama','Manga','good');
insert into Book values (9780199536122,'Julius Caesar','William Shakespeare','Play','good');
insert into Book values (9780001951532,'Daedalus and Icarus','Nick Pontikis','Tragedy','good');
insert into Book values (9780544644489,'The Complete Adventures of Curious George: 75th Anniversary Edition','H. A. Rey','Children Humor','good');
insert into Book values (9780394801711,'The Cat in the Hat','Dr. Suess','Early Learning','good');
insert into Book values (9780394800165,'Green Eggs and Ham','Dr. Suess','Early Learning','good');
insert into Book values (9781421582696,'My Hero Academia Vol. 1','Kohei Horikoshi','Manga','good');
insert into Book values (9781421599465,'Dragon Ball Super Vol 3','Akira Toriyama','Manga','good');
insert into Book values (9781974701445,'Dragon Ball Super Vol 4','Akira Toriyama','Manga','good');
insert into Book values (9781974704583,'Dragon Ball Super Vol 5','Akira Toriyama','Manga','good');


--Create table RentBook
create table RentBook (
    cusID number,
    ISBN number(13),
    start_date date,
    end_date date,
    late_return char(1),
    primary key (cusID, ISBN, start_date),
    foreign key (cusID) references Customer(cusID),
    foreign key (ISBN) references book(ISBN),
    check (late_return in ('Y', 'N'))
);

--Populate data for RentBook table
insert into RentBook values (001,9781891830716,TO_DATE('4 Jan 2017','DD MM YYYY'),TO_DATE('4 Mar 2017','DD MM YYYY'),'N');
insert into RentBook values (002,9781603090254,TO_DATE('16 Mar 2017','DD MM YYYY'),TO_DATE('16 Jun 2017','DD MM YYYY'),'N');
insert into RentBook values (001,9781603090773,TO_DATE('21 Mar 2017','DD MM YYYY'),TO_DATE('21 Jun 2017','DD MM YYYY'),'Y');
insert into RentBook values (001,9781891830402,TO_DATE('21 Mar 2017','DD MM YYYY'),TO_DATE('21 Jun 2017','DD MM YYYY'),'Y');
insert into RentBook values (002,9781891830518,TO_DATE('11 May 2017','DD MM YYYY'),TO_DATE('11 Aug 2017','DD MM YYYY'),'N');
insert into RentBook values (005,9781603090704,TO_DATE('30 Jul 2018','DD MM YYYY'),TO_DATE('30 Oct 2018','DD MM YYYY'),'N');
insert into RentBook values (004,9781891830143,TO_DATE('3 Aug 2018','DD MM YYYY'),TO_DATE('3 Aug 2018','DD MM YYYY'),'N');
insert into RentBook values (005,9781891830501,TO_DATE('21 Aug 2018','DD MM YYYY'),TO_DATE('21 Nov 2018','DD MM YYYY'),'N');
insert into RentBook values (007,9780747532743,TO_DATE('13 Oct 2018','DD MM YYYY'),TO_DATE('13 Jan 2019','DD MM YYYY'),'N');
insert into RentBook values (007,9780605039070,TO_DATE('13 Oct 2018','DD MM YYYY'),TO_DATE('13 Jan 2019','DD MM YYYY'),'Y');
insert into RentBook values (004,9781408855928,TO_DATE('21 May 2019','DD MM YYYY'),TO_DATE('21 Aug 2019','DD MM YYYY'),'N');
insert into RentBook values (004,9780439791328,TO_DATE('22 May 2019','DD MM YYYY'),TO_DATE('22 Aug 2019','DD MM YYYY'),'N');
insert into RentBook values (001,9781408855904,TO_DATE('14 Jun 2019','DD MM YYYY'),TO_DATE('14 Sep 2019','DD MM YYYY'),'N');
insert into RentBook values (001,9781484476253,TO_DATE('14 Jun 2019','DD MM YYYY'),TO_DATE('13 Sep 2019','DD MM YYYY'),'N');
insert into RentBook values (008,9780439567626,TO_DATE('8 Aug 2019','DD MM YYYY'),TO_DATE('8 Nov 2019','DD MM YYYY'),'N');
insert into RentBook values (004,9780439023481,TO_DATE('30 May 2020','DD MM YYYY'),TO_DATE('30 Aug 2020','DD MM YYYY'),'N');
insert into RentBook values (004,9781423121701,TO_DATE('2 Jun 2020','DD MM YYYY'),TO_DATE('2 Sep 2020','DD MM YYYY'),'N');
insert into RentBook values (007,9781410467744,TO_DATE('5 Jun 2020','DD MM YYYY'),TO_DATE('5 Sep 2020','DD MM YYYY'),'N');

------Print out tables-------

select * from Customer;
select * from Membership;
select * from Purchasing;
select * from Movies;
select * from OnlineMovie;
select * from DVD;
select * from RentMovie;
select * from Book;
select * from RentBook;


---------Queries----------

--Customers with gmail.com domain that enrolls in gold membership

select cusID, email from Customer where SUBSTR(email, INSTR(email, '@',-1) + 1)='gmail.com';

--Customers living in NH (New Hampshire)

select * from Customer where SUBSTR(address, INSTR(address,' ',-1) + 1)='NH';

--Purchases (considering the time of purchase) from August 2018 to August 2020. 

select * from Purchasing 
where start_date >= TO_DATE('1 Jan 2018','DD MM YYYY') 
and start_date <= TO_DATE('31 Dec 2020', 'DD MM YYYY');

/* Show CusID, total dates of being a member for customers who have enroll in membership 
for more than 365 days and have the same membership type as customer who has ID = 8: */

SELECT CusID, sum(End_Date - Start_date) "Total dates"
FROM purchasing
GROUP BY CusID, type_membership
HAVING SUM(End_date - Start_date) > 365
AND type_membership = (SELECT DISTINCT type_membership
                        FROM purchasing
                        WHERE CusID = 8)
ORDER BY "Total dates" DESC;


/* Calculate the total revenue of each membership type from customers who start membership 
since the beginning of 2018. */

SELECT p.type_membership, sum(m.pricing_per_year) "Total Revenue"
FROM purchasing p, membership m
WHERE p.type_membership = m.membership_name
AND p.start_date > TO_DATE('01 Jan 2017', 'DD MM YYYY')
GROUP BY p.type_membership
ORDER BY "Total Revenue" DESC;

--Show customer ID, name, and their average money spent by each customer.

SELECT p.CusID, c.CusName, avg(m.pricing_per_year) "Average money spent"
FROM customer c, purchasing p, membership m
WHERE p.type_membership = m.membership_name
and p.CusID = c.CusID
GROUP BY p.CusID, c.CusName
ORDER BY "Average money spent" DESC;

--Silver membership in 2017 Purchases. 

select Count(Purchasing.type_membership)
from Purchasing
where Purchasing.type_membership = 'Silver'
and Purchasing.start_date > TO_DATE('01 Jan 2017', 'DD MM YYYY')
and Purchasing.start_date < TO_DATE('01 Jan 2018', 'DD MM YYYY');

--Calculate average IMDB score for eachcategory. 

select Movies.genre, avg(Movies.IMDB) as "Average IMDB"
from Movies
GROUP BY Movies.genre;

--Select customers who borrow the most comedy movies. 

select Customer.cusName, count(Movies.genre) as "Total"
from Movies, Customer join RentMovie on Customer.cusID = RentMovie.cusID 
where Movies.genre = 'Comedy' 
and Movies.movieID = RentMovie.movieID
group by Customer.cusName
order by count(Movies.genre) desc;

--DVD Movies rented (considering time of starting date) from 2017 to 2018.

SELECT Movies.movie_name, Movies.movieID, RentMovie.start_date, RentMovie.end_date
FROM Movies, RentMovie
WHERE RentMovie.movieID = Movies.movieID
AND RentMovie.start_date >= TO_DATE('01 Jan 2017','DD MM YYYY')
AND RentMovie.start_date <= TO_DATE('01 Dec 2018','DD MM YYYY');

--How many times each online movie was rented? 

SELECT Movies.movie_name, Movies.movieID
FROM RentMovie, Movies
INNER JOIN OnlineMovie ON Movies.movieID = OnlineMovie.movieID
WHERE RentMovie.movieID = Movies.movieID;

--Harry Potter books. 

SELECT Book.title, RentBook.ISBN, RentBook.start_date, RentBook.end_date
FROM Book, RentBook
WHERE Book.ISBN = RentBook.ISBN
AND Book.title LIKE '%Harry Potter%';

--How many times were Percy Jackson books rented from 2018 to 2019?

select R.ISBN, B.title, count(*) "Number of times borrowed"
from RentBook R, Book b
WHERE R.ISBN = B.ISBN
AND B.title like '%Percy Jackson%'
GROUP BY R.ISBN, B.title;

--Find the number of times each book was rented. 

SELECT *
FROM RENTBOOK
WHERE Late_return = 'Y'
AND start_date >= TO_DATE('1 Jan 2017','DD MM YYYY')
and start_date <= TO_DATE('31 Dec 2028', 'DD MM YYYY');

--Number of books of each author in the library. 

select author, count(title) as "Num of books"
from book 
group by (author)
order by count(title) desc;













