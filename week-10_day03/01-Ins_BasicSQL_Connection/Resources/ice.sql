create database icecream_db;

use icecream_db;

create table flavors (
	id integer(99) auto_increment not null,
	flavor varchar(30),
	rating integer(100), 
	price FLOAT,
    primary key (id)
    );
    
insert into flavors (flavor, rating, price)
values 
('vanilla', 80, 1.25),
('chocolate', 62, 2.50),
('strawberry', 90, 1.25),
('pistachio', 100, 0.50),
('mint chocolate chip', 95, 1.25);



select * from flavors;