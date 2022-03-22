-- Add data to Customer Table
insert into customer(
	first_name,
	last_name,
	address,
	email,
	prime_member
) values (
	'Brian',
	'Stanton',
	'555 Circle Drive',
	'brians@codingtemple.com',
	true
);

select * from customer;

insert into customer(
	address,
	email,
	last_name,
	prime_member,
	first_name
)values (
	'444 Square Court',
	'bob@gmail.com',
	'Smith',
	false,
	'Bob'
);


insert into customer(
	first_name,
	last_name,
	address,
	email,
	prime_member
) values (
	'Mike',
	'Wazowski',
	'556 Circle Drive',
	'mike@codingtemple.com',
	true
);

-- Insert Multiple values into a table
insert into brand(
	brand,
	email_address,
	phone_number
) values (
	'Bic',
	'pens@bic.com',
	'(555) 555-5555'
),(
	'Caliber',
	'books@caliber.org',
	'(323) 323-3232'
);


select * from brand;


insert into product(
	prod_name,
	description,
	price,
	rating,
	seller_id
) values (
	'Ballpoint Pen',
	'Writing utensil',
	9.99,
	4.7,
	1
)

select * from product;


-- Reset sequence to 1
alter sequence product_prod_id_seq
restart with 1;


insert into product(
	prod_name,
	description,
	price,
	rating,
	seller_id
) values (
	'Cool Book',
	'This is a good book',
	199.99,
	5.0,
	2
)



insert into product
values (2, 'Highlighter', 'Make your important notes pop!', 5.99, 2.3, 1);


insert into order_(
	total,
	customer_id
) values (
	14.98,
	1
)

select * from order_


insert into order_(
	order_date,
	total,
	customer_id
) values (
	'2022-01-10',
	199.99,
	1
)


select * from customer;
-- Update data in a table
update customer 
set address = '123 Real Street'
where customer_id = 1;

update customer
set prime_member = true 
where customer_id > 1;



-- Delete from a table
delete from product 
where price > 100;

select * from product;