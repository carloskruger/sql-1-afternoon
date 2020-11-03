-- 1. Create a table called person that records a person's id, name, age, height ( in cm ), city, favorite_color. 
--     * id should be an auto-incrementing id/primary key - Use type: SERIAL

CREATE TABLE person (
    id SERIAL PRIMARY KEY,
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