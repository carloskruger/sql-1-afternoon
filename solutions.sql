CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name varchar(100),
    age INTEGER,
    height INTEGER,
    city varchar(100),
    favorite_color varchar(100)
);

INSERT INTO person (name, age, height, city, favorite_color)
VALUES ('Person 1', 18, 179,'New Rochelle', 'yellow'), 
('Person 2', 19, 180,'Mt Vernon', 'yellow'),
 ('Person 3', 20, 181,'Yonkers', 'red'),
 ('Person 4', 21, 182,'Tarrytown', 'blue'),
 ('Person 5', 22, 183,'Port Chester', 'green');

 select * from person order by height desc;


select * from person order by height;

select * from person order by age desc;

select * from person where age > 20;

select * from person where age = 18;

select * from person where age < 20 or age > 30;

select * from person where age <> 27;

select * from person where favorite_color <> 'red';

select * from person where favorite_color <> 'red' and favorite_color <> 'blue';

select * from person where favorite_color = 'orange' or favorite_color = 'green';

select * from person where favorite_color in ('orange', 'green', 'blue');

select * from person where favorite_color in ('yellow', 'purple');