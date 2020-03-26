CREATE DATABASE conviva;
use conviva;

CREATE TABLE Customer (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255) NOT NULL,
    sex varchar(255),
    Age int,
    PRIMARY KEY (id)
);

insert into customer (name, sex, age) values 
('c1 ', 'male', 33),
('c2 ', 'male', 21),
('d1 ', 'female', 19),
('d3 ', 'female', 25),
('c4 ', 'male', 55),
('c5 ', 'male', 15),
('c6 ', 'male', 28),
('c7 ', 'male', 34),
('d4 ', 'male', 12),
('d5 ', 'male', 25),
('d8 ', 'male', 43),
('d9 ', 'male', 34);

CREATE TABLE address (
    id int NOT NULL AUTO_INCREMENT,
    city varchar(255) NOT NULL,
    state varchar(255) NOT NULL,
    zip int NOT NULL,
    PRIMARY KEY (id),
    customer_id int NOT NULL,
	FOREIGN KEY (customer_id) REFERENCES customer (id) ON DELETE CASCADE
);

insert into address (city, state, zip, customer_id) values 
('Bangalore ', 'Karnataka', 560023, 4),
('Delhi', 'Delhi', 450321, 4);


