-- Create a customer table 
create table customer(
	customer_id SERIAL primary key,
	first_name varchar(50),
	last_name varchar(50)
);

select * from customer 


-- Create Movie table 
create table movie(
	movie_id serial primary key,
	title varchar(50),
	description varchar(300),
	length_min numeric(5)
)

select * from movie


-- Create Ticket_order

create table ticket_order(
	ticket_order_id serial primary key,
	ticket_amount integer,
	customer_id integer not null,
	foreign key (customer_id) references customer(customer_id)
);

select * from ticket_order 


-- Create Ticket 
create table ticket(
	ticket_id serial primary key,
	price integer,
	movie_id integer not null,
	ticket_order_id integer not null,
	foreign key(movie_id) references movie(movie_id),
	foreign key(ticket_order_id) references ticket_order(ticket_order_id)
)


select * from ticket 



-- Attempting to add a total to ticket_order 
alter table ticket_order            
add column total_price numeric



-- Add ratings to 
create table ratings(
	rating_id serial primary key,
	rating varchar(50)
)


-- Adding ratings to movie 
select * from movie 

select * from ratings

alter table movie 
add column rating integer 


alter table movie 
add foreign key(rating) references ratings(rating_id);


-- Adding ticket price 

create table ticket_price(
	ticket_price_id serial primary key,
	ticket_description varchar(50),
	ticket_price numeric 
);

select * from ticket_price 

select * from ticket 

alter table ticket 
add foreign key(price) references ticket_price(ticket_price_id)




 -- Concession table 
create table product(
	product_id serial primary key,
	product_name varchar(50),
	description varchar (100),
	product_price numeric
);


select * from product 


-- Concession order table 
create table product_order(
	product_order_id serial primary key,
	order_amount integer,
	customer_id integer,
	product_id integer
)

alter table product_order 
add foreign key(customer_id) references customer(customer_id),
add foreign key(product_id) references product(product_id)

select * from product_order



-- database was missing??? 
select datname from pg_database WHERE datname = 'movie_theater'

-- "You can right click on the postgres database and select edit connection option. Under the PostgreSQL tab, check the Show all databases option."









