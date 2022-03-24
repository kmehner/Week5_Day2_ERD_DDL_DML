
-- Add data into customer table
insert into customer(first_name,last_name)
values('Kate', 'Mehner')

insert into customer(first_name,last_name)
values('Brian', 'Stanton')

select * from customer 



-- Add data into movie table 
insert into movie(title, description, length_min)
values('Journey to the Center of the Earth', 'Explorers get trapped in a volcanic cave end their only way up is down. As volcanic activity increases, they just quickly find a way out.', 93),
('The Devil Wears Prada', 'Andy is a recent graduate with big dreams. Upon landing a job at prestigious Runway magazine, she finds herself the assistant to a diabolical editor. Andy questions her ability to survive her grim tour without getting scorched.', 109)

select * from movie



-- Create an order for 5 tickets to movie_id 1 for customer 1
insert into ticket_order(ticket_amount, customer_id)
values (5, 1)

select * from ticket_order



	-- Creating the tickets (refer to diagram for price information)

insert into ticket(price, movie_id, ticket_order_id)
values (1, 1, 1), (1, 1, 1), (2, 1, 1), (2, 1, 1), (3, 1, 1)

select * from ticket 


-- Create an 2 orders for 2 new customers to movie_id 2 
insert into customer(first_name, last_name)
values('Coding', 'Temple'), ('Milo', 'Mehner')

select * from customer

insert into ticket_order(ticket_amount, customer_id)
values (3, 3), (2, 4)

select * from ticket_order 

insert into ticket(price, movie_id, ticket_order_id)
values (1, 2, 2), (1, 2, 2), (2, 2, 2), (2, 2, 3), (3, 2, 3)

select * from ticket


-- Attempting to add a total to ticket_order 

-- note: price was changed to a table so this sum function no longer works 

select sum(price) as total  
from ticket 
where ticket_order_id = '3' -- (1) 45.95, (2), 31.97 (3) 25.98

update ticket_order 
set total_price = 49.95
where ticket_order_id  = '1'

update ticket_order 
set total_price = 31.97
where ticket_order_id  = '2'

update ticket_order 
set total_price = 25.98
where ticket_order_id  = '3'

select * from ticket_order 


-- Adding the ratings 
select * from ratings 

select * from movie 


insert into ratings(rating)
values ('PG-13'), ('NC-17'), ('G'), ('PG'), ('R')

update movie 
set rating = 4
where movie_id = 2

update movie 
set rating = 1
where movie_id = 1



-- Adding ticket_price
select * from ticket_price 

insert into ticket_price (ticket_description, ticket_price)
values('Child', 5.99), ('Adult', 12.99), ('Senior', 7.99)



-- Making the customers buy some food
select * from customer 


-- Add products to order from 
select * from product

insert into product(product_name, description, product_price)
values('Kit Kat', 'Yummy deliciousness', 2.99),('M&M', 'Small chocolate raindrops', 3.50), ('Popcorn', 'Buttery fluffy pops', 7.00), ('Slushie', 'Raspberry or Cherry slushie goodness', 5.00)

-- creating orders 

select * from product_order 

insert into product_order (product_id, order_amount, customer_id)
values(3, 2, 1), (4, 1, 1), (1, 1, 3), (3, 1, 3), (2, 1, 4)





select datname from pg_database WHERE datname = 'movie_theater'







