-- DDL Data Definition Language 

-- Create customer table 

--create table customer(
--	customer_id SERIAL primary key,
--	first_name VARCHAR(50),
--	last_name VARCHAR(50),
--	email VARCHAR(50) unique,
--	prime_member BOOLEAN default false,
--	address VARCHAR(100)
--);

select *
from customer;


-- Create order table 

--create table order_(
--	order_id SERIAL primary key,
--	order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--	total NUMERIC (6,2),
--	customer_id INTEGER not null, -- NOT null means that this column CANNOT be empty
--	 foreign key(column_in_domestic_table) references foreign_table(column_in_foreign_table)
--	foreign key(customer_id) REFERENCES customer(customer_id)
--);

select * 
from order_;


-- Create order product table (Join table between many to many relationship)

--create table order_product(
--	order_product_id SERIAL primary key,
--	ORDER_ID integer not null,
--	foreign key(order_id) references order_(order_id),
--	prod_id integer not null
--	-- foreign key(prod_id) references product(prod_id) -- CANNOT ADD FK W/O PRODUCT TABLE EXISTING 
--);

select * 
from order_product 


-- Create Product Table 

--create table product(
--	prod_id serial primary key,
--	prod_name varchar(50),
--	description varchar(50),
--	price numeric(5,2),
--	rating numeric(2,1)
--);

select *
from product 



-- Add a foreign key to the order_product table and reference the product table 
alter table order_product 
add foreign key(prod_id) references product(prod_id)


-- Create a seller table 

--create table seller(
--	seller_id SERIAL primary key,
--	brand_name VARCHAR(50),
--	email VARCHAR(50) unique,
--	phone varchar(14)
--);

select *
from seller; 

-- Add the seller_id column to the product table 
alter table product 
add seller_id integer not null;


-- Add foreign key to the seller id 
alter table product 
add foreign key(seller_id) references seller(seller_id);




-- rename a column 
alter table seller 
rename column email to email_address;

-- rename a table 
alter table seller rename to brand;


-- CREATE A TEST TABLE 
CREATE TABLE test(
	test_id SERIAL PRIMARY KEY,
	column_1 INTEGER,
	column_2 VARCHAR(10) NOT NULL
);


select *
from test

-- Remove a constraint
ALTER TABLE test 
ALTER COLUMN column_2 DROP NOT NULL;


-- Remove a column from a table 
ALTER TABLE test 
DROP COLUMN column_1;


-- Delete data from a table 
-- delete from table_name
-- WHERE condition* not necessary but HIGHLY HIGHLY recommended 

-- Remove table completely
DROP TABLE IF EXISTS test;
-- BE CAREFUL -- CANNOT UNDO





















