-- Creating a table and data types
create table my_table (
  id serial PRIMARY KEY,
  name text,
  age integer,
  income decimal,
  email varchar,
  password varchar(30),
  savings float(3)
);

-- Basic SELECTS
Select * from album;

Select album_id, title from album;

-- Select (distinct)

-- ** Returns 59 **
Select country from customer;

-- ** Returns 24 **
Select distinct country from customer;

-- Where clause 
Select * from invoice
where total = 10;

-- Comparison operators

-- ** >  **
Select * from invoice
where total > 10;

-- ** <  **
Select * from invoice
where total < 10;

-- ** >=  **
Select * from invoice
where total >= 10;

-- ** !=  **
Select * from invoice
where total != 10;

-- Logical operators 

-- ** AND  **
Select * from customer
where first_name = 'Leonie'
and last_name = 'Köhler';

-- ** OR  **
Select * from customer
where first_name = 'Leonie'
or first_name = 'Helena';

-- Null 

-- ** is null  **
Select * from customer
where company is null;

-- ** is not null  **
Select * from customer
where company is not null;

-- In
Select * from invoice
where total in (2, 6, 14, 12);

-- not in
Select * from invoice
where total not in (2, 6, 14, 12);

-- Between
Select * from invoice
where total between 5 and 20;

-- Limit 
Select * from invoice
where total between 5 and 20
limit 50;

-- Order by

-- ** default  ** (defaults to ascending by primary key)
select * from invoice;

-- ** ascending  **
select invoice_id, customer_id, total from invoice
order by total asc;

-- ** descending  **
select invoice_id, customer_id, total from invoice
order by total desc;

-- Aggregate functions 

-- ** min  **
select min(total) from invoice;

-- ** max  **
select max(total) from invoice;

-- ** sum  **
select sum(total) from invoice;

-- ** avg  **
select avg(total) from invoice;

-- ** count  ** (excludes null values) (use count(*) to count all rows)
select count(billing_state) from invoice;

-- Pattern matching

-- ** like  ** (case sensitive)
select * from employee
where last_name like 'adams';

-- ** ilike  ** (case insensitive)
select * from employee
where last_name like 'adams';

-- ** partial match  ** (% means any character after match)
select * from customer
where first_name like 'L%';

select * from customer
where first_name like '%s';

select * from customer
where first_name like '%s%';

-- (will stand in for however many characters )
select * from customer
where first_name like '_eonie';

-- Adding rows into table
INSERT INTO my_table (password, email, income, age, name)
values ('1234', 'myemail@gmail.com', 2345.23, 23, 'John');

INSERT INTO my_table (password, email, income, age, name)
values ('1234', 'myemail@gmail.com', 2345.23, 23, 'John'), ('supersecurepassword', 'hacker@mail.com', 90000.1, 45, 'Hacker man');

-- Updating table ( run select first )
select * from my_table;

-- (Leaving off the where clause will update that value for every user in the table)
update my_table
set age = 29
where id = 3;

-- Deleting from table 
select * from my_table
where id = 3;

delete from my_table
where id = 3;

-- Drop table (show dropping a table that has foreign keys refereincing)
drop table my_table;

