-- Create a customer table
create table customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	address VARCHAR(100),
	email VARCHAR(100),
	prime_member BOOLEAN
);


select * from customer;


-- Create an order table
create table order_(
	order_id SERIAL primary key,
	order_date DATE default CURRENT_DATE,
	total NUMERIC(7,2),
	customer_id INTEGER not null, -- not null means that this column cannot be empty
	foreign key(customer_id) references customer(customer_id)
	-- FOREIGN KEY(column_in_domestic_table) REFERENCES foreign_table(column_in_foreign_table)
);

select * from order_;


-- Create an order-product table
create table order_product(
	order_product_id SERIAL primary key,
	order_id INTEGER not null,
	foreign key(order_id) references order_(order_id),
	prod_id INTEGER not null
)


-- Create Product table
create table product(
	prod_id SERIAL primary key,
	prod_name VARCHAR(50),
	description VARCHAR(200),
	price NUMERIC(5,2),
	rating NUMERIC(2,1),
	seller_id INTEGER not null
);


-- Add a foreign key to the order_product table referencing product
alter table order_product
add foreign key(prod_id) references product(prod_id);



-- Create a seller table
create table seller(
	seller_id SERIAL primary key,
	brand VARCHAR(50),
	email VARCHAR(100)
);


-- Add a foreign key to the product table referencing seller
alter table product
add foreign key(seller_id) references seller(seller_id);


-- Rename the email column in the seller table to email_address
alter table seller 
rename column email to email_address;


-- Add phone_number column to seller table
alter table seller 
add phone_number VARCHAR(15);


-- Rename seller table to brand
alter table seller 
rename to brand;


-- CREATE A TEST TABLE
create table test(
	test_id SERIAL primary key,
	column_1 INTEGER,
	column_2 VARCHAR(20)
)

-- Remove a column from a table
alter table test 
drop column column_2;


-- Remove a table completely
drop table if exists test;