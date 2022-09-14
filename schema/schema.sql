
-- creating genre table

create table genre(
   id int GENERATED ALWAYS AS Identity PRIMARY key , 
   name VARCHAR(40)
        );

-- creating author table

create table author(
    id int GENERATED always as identity primary key ,
	first_name varchar(40),
	last_name varchar(40)
);

-- creating lable table

create table lable(
	id int GENERATED ALWAYS as Identity PRIMARY key, 
	title VARCHAR(30),
	color varchar(20)
);

-- creating source table 

create table source(
    id int GENERATED always as identity primary key,
	name varchar(40)
		);


-- creating item table

create table item(
	id int generated always as identity primary key,
	genre_id INT,
	author_id INT,
	source_id INT,
	lable_id INT,
	publish_date DATE,
	archived BOOLEAN,
	CONSTRAINT genre_fk FOREIGN key(genre_id) REFERENCES genre(id),
	CONSTRAINT author_fk FOREIGN KEY(author_id) REFERENCES author(id),
	CONSTRAINT source_fk FOREIGN KEY(source_id) REFERENCES source(id),
	CONSTRAINT lable_fk FOREIGN KEY(lable_id) REFERENCES lable(id)
				 );


-- creating book table

create table book(
	id int generated always as identity primary key,
	genre_id int,
	author_id int,
	source_id int,
	lable_id int,
	publisher VARCHAR(40),
	cover_state VARCHAR(20),
	FOREIGN Key(genre_id) REFERENCES genre(id),
	FOREIGN Key(author_id) REFERENCES author(id),
	FOREIGN Key(source_id) REFERENCES source(id),
	FOREIGN Key(lable_id) REFERENCES lable(id)
				 );


-- creating game table

create table game(
	id int generated always as identity primary key,
	name VARCHAR(40),
	genre_id int,
	author_id int,
	source_id int,
	lable_id int,
	multiplayer BOOLEAN,
	last_played_at DATE,
	FOREIGN Key(genre_id) REFERENCES genre(id),
	FOREIGN Key(author_id) REFERENCES author(id),
	FOREIGN Key(source_id) REFERENCES source(id),
	FOREIGN Key(lable_id) REFERENCES lable(id)
				 );


-- creating movie table

 create table movie(
	id int generated always as identity primary key,
	name VARCHAR(40),
	genre_id int,
	author_id int,
	source_id int,
	lable_id int,
	silent BOOLEAN,
	FOREIGN Key(genre_id) REFERENCES genre(id),
	FOREIGN Key(author_id) REFERENCES author(id),
	FOREIGN Key(source_id) REFERENCES source(id),
	FOREIGN Key(lable_id) REFERENCES lable(id)
				 );

-- creating music-album table  

 create table music_album(
	id int generated always as identity primary key,
	genre_id int,
	author_id int,
	source_id int,
	lable_id int,
	on_spotify BOOLEAN,
	FOREIGN Key(genre_id) REFERENCES genre(id),
	FOREIGN Key(author_id) REFERENCES author(id),
	FOREIGN Key(source_id) REFERENCES source(id),
	FOREIGN Key(lable_id) REFERENCES lable(id)
				 );









