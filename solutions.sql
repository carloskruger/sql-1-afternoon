-- 1. Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color. 
--     * id should be an auto-incrementing id/primary key - Use type: SERIAL

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    name varchar(100),
    age INTEGER,
    height INTEGER,
    city varchar(100),
    favorite_color varchar(100)
);

-- 2. Add 5 different people into the person database. 
--     * Remember to not include the person_id because it should auto-increment.

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Person 1', 18, 179,'New Rochelle', 'yellow'), 
('Person 2', 19, 180,'Mt Vernon', 'yellow'),
 ('Person 3', 20, 181,'Yonkers', 'red'),
 ('Person 4', 21, 182,'Tarrytown', 'blue'),
 ('Person 5', 22, 183,'Port Chester', 'green');

 -- 3. List all the people in the person table by height from tallest to shortest.

 select * from person order by height desc;

-- 4. List all the people in the person table by height from shortest to tallest.

select * from person order by height;

-- 5. List all the people in the person table by age from oldest to youngest.

select * from person order by age desc;

-- 6. List all the people in the person table older than age 20.

select * from person where age > 20;

-- 7. List all the people in the person table that are exactly 18.

select * from person where age = 18;

-- 8. List all the people in the person table that are less than 20 and older than 30.

select * from person where age < 20 or age > 30;

-- 9. List all the people in the person table that are not 27 (Use not equals).

select * from person where age <> 27;

-- 10. List all the people in the person table where their favorite color is not red.

select * from person where favorite_color <> 'red';


-- 11. List all the people in the person table where their favorite color is not red and is not blue.

select * from person where favorite_color <> 'red' and favorite_color <> 'blue';


-- 12. List all the people in the person table where their favorite color is orange or green.


select * from person where favorite_color = 'orange' or favorite_color = 'green';

-- 13. List all the people in the person table where their favorite color is orange, green or blue (use IN).

select * from person where favorite_color in ('orange', 'green', 'blue');

-- 14. List all the people in the person table where their favorite color is yellow or purple (use IN)

select * from person where favorite_color in ('yellow', 'purple');

-- Create a table called orders that records: order_id, person_id, product_name, product_price, quantity.

CREATE TABLE orders (
    orders_id SERIAL PRIMARY KEY,
    person_id INTEGER,
    product_name varchar(100),
    product_price DECIMAL,
    quantity INTEGER);

-- Add 5 orders to the orders table.
-- Make orders for at least two different people.
-- person_id should be different for different people.

INSERT INTO orders (person_id, product_name, product_price, quantity)
    VALUES (2, 'bananas', 0.30, 10),
    (2, 'apples', 1.50, 3),
    (3, 'onion', 1.50, 8),
    (3, 'garlic', 2.50, 3),
    (3, 'carrots', 1.50, 4);

-- Select all the records from the orders table.

select * from orders;

-- Calculate the total number of products ordered.

select sum(quantity) from orders;

-- Calculate the total order price.

select sum(product_price * quantity) as total_order_price from orders;

-- Calculate the total order price by a single person_id.

select sum(product_price * quantity) as total_order_price from orders group by person_id;

-- Add 3 new artists to the artist table. ( It's already created )

insert into artist(name) values ('artist1'),('artist2'),('artist3');

-- Select 10 artists in reverse alphabetical order.

select name from artist order by name desc limit(10);

-- Select 5 artists in alphabetical order.

select name from artist order by name limit(5);

-- Select all artists that start with the word 'Black'.

select name from artist where name like 'Black%';

-- Select all artists that contain the word 'Black'.

select name from artist where name like '%Black%';

-- List all employee first and last names only that live in Calgary.

select first_name, last_name from employee where city = 'Calgary';

-- Find the birthdate for the youngest employee.
select birth_date from employee order by birth_date desc limit(1);
-- Find the birthdate for the oldest employee.

select birth_date from employee order by birth_date limit(1);

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column).

-- You will need to query the employee table to find the Id for Nancy Edwards

select * from employee where reports_to = ( select employee_id from employee where last_name ='Edwards' and first_name= 'Nancy');


-- Count how many people live in Lethbridge.

select count(*) from employee where city = 'Lethbridge';