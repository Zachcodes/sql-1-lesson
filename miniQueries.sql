-- SELECT all the data FROM the artist table.
select * from artist;

-- SELECT the first_name, last_name, and country FROM the employee table.
select first_name, last_name, country from employee;

-- SELECT the name, composer, and milliseconds FROM the track table WHERE the milliseconds are greater than 299000.
select name, composer, milliseconds from track
where milliseconds > 299000;

-- SELECT the count FROM the track table WHERE the milliseconds are greater than 299000.
select count(*) from track
where milliseconds > 299000;

-- Find the average length of all tracks in milliseconds
select avg(milliseconds) from track;

-- Find the number of invoices in the USA
select count(*) from invoice;

-- Make a list of all the First Names of Customers that contain an 'a'
select * from customer
where first_name ilike '%a%';

-- Make a list of the 10 longest tracks
select * from track
order by milliseconds desc
limit 10;

-- Make a list of the 20 shortest tracks
select * from track
order by milliseconds asc
limit 20;

-- Find all the customers that live in California or Washington
select * from customer
where state in ('CA', 'WA');

-- Find all the customers that live in California, Washington, Utah, Florida, or Arizona (Use IN keyword)
select * from customer
where state in ('CA', 'WA', 'UT', 'FL', 'AZ');

-- Insert an artist to the database.
insert into artist (name)
values ('Zach');

-- Insert yourself as a customer to the database
insert into customer (state, first_name, last_name, email)
values ('UT', 'Zach', 'Springer', 'zachsemail@gmail.com');

-- Find a list of all Playlists that start with Classical
select * from playlist
where name ilike 'Classical%';