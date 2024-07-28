ALTER TABLE moon ADD FOREIGN KEY (name) REFERENCES planet(name);
ALTER TABLE moon ADD COLUMN name VARCHAR(50) UNIQUE NOT NULL;
ALTER TABLE star ADD COLUMN name VARCHAR(60) UNIQUE NOT NULL;

ALTER TABLE star ADD COLUMN distance_from_earth INT;
ALTER TABLE moon ADD COLUMN has_life BOOLEAN;
ALTER TABLE moon ADD COLUMN description TEXT;
ALTER TABLE moon ADD COLUMN is_myth BOOLEAN;

ALTER TABLE galaxy ADD CONSTRAINT unique_ref_id UNIQUE (ref_id);


INSERT INTO galaxy (name,distance_from_earth,age_in_millions_of_years,galaxy_name,is_myth)
VALUES
('Tony',521,2,'nihoma',true),('Stark',521,3,'nihoma',true),('Chris',521,4,'nihoma',true),
('Evans',521,5,'nihoma',true),('Hemsworth',521,6,'nihoma',true),('Bruce',521,7,'nihoma',true),
('Nick',521,8,'nihoma',true),('Fury',521,9,'nihoma',true),('Sam',521,10,'nihoma',true),
('Bingo',521,11,'nihoma',true),('Hems',521,12,'nihoma',true),('Xavier',521,13,'nihoma',true),
('Vicky',521,14,'nihoma',true),('Calvin',521,15,'nihoma',true),('Logan',521,16,'nihoma',true),
('Natasha',521,17,'nihoma',true),('Strange',521,18,'nihoma',true),('Stephen',521,19,'nihoma',true);


INSERT INTO planet 
(name, age_in_millions_of_years, is_spherical, has_life, description, distance_from_earth) 
VALUES('John',3,true,true,'gg6tfuygi',987),('wick',4,true,true,'gg6tfuygi',988),('Hugh',5,true,true,'gg6tfuygi',951),
('Jackman',6,true,true,'gg6tfuygi',952),('Deadpool',7,true,true,'gg6tfuygi',953),('Wade',8,true,true,'gg6tfuygi',954),
('Tony',9,true,true,'gg6tfuygi',990),('Stark',10,true,true,'gg6tfuygi',989),('Chris',11,true,true,'gg6tfuygi',957),
('Evans',12,true,true,'gg6tfuygi',958),('Hemsworth',13,true,true,'gg6tfuygi',951),('Bruce',14,true,true,'gg6tfuygi',945),
('Nick',31,true,true,'gg6tfuygi',9912),('Fury',32,true,true,'gg6tfuygi',9829),('Sam',33,true,true,'gg6tfuygi',9572),
('Bingo',34,true,true,'gg6tfuygi',9518),('Hems',35,true,true,'gg6tfuygi',9351),('Xavier',36,true,true,'gg6tfuygi',1945),
('Vicky',37,true,true,'gg6tfuygi',9952),('Calvin',38,true,true,'gg6tfuygi',9876),('Logan',39,true,true,'gg6tfuygi',91),
('Natasha',40,true,true,'gg6tfuygi',958),('Strange',41,true,true,'gg6tfuygi',951),('Stephen',42,true,true,'gg6tfuygi',9245);

INSERT INTO star 
(name, galaxy_types, planet_types, distance_from_earth) 
VALUES
('John', 3, 4, 987),('wick', 0, 0, 988),('Hugh', 0, 0, 951),
('Jackman', 0, 0, 952),('Deadpool', 0, 0, 953),('Wade', 0, 0, 954),
('Tony',3,3,990),('Stark',3,3,989),('Chris',3,3,957),
('Evans',3,3,958),('Hemsworth',3,3,951),('Bruce',3,3,945),
('Nick',3,3,9912),('Fury',3,3,9829),('Sam',3,3,9572),
('Bingo',3,3,9518),('Hems',3,3,9351),('Xavier',3,3,1945),
('Vicky',3,3,9952),('Calvin',3,3,9876),('Logan',3,3,91),
('Natasha',3,3,958),('Strange',3,3,951),('Stephen',3,3,9245);

INSERT INTO moon
(name, planet_types, galaxy_types, has_life) 
VALUES
('John', 3, 4, true),('wick', 0, 0, false),('Hugh', 0, 0, true),
('Jackman', 0, 0, false),('Deadpool', 0, 0, true),('Wade', 0, 0, false),
('Tony',3,3,true),('Stark',3,3,false),('Chris',3,3,true),
('Evans',3,3,false),('Hemsworth',3,3,true),('Bruce',3,3,false),
('Nick',3,3,true),('Fury',3,3,false),('Sam',3,3,true),
('Bingo',3,3,false),('Hems',3,3,true),('Xavier',3,3,false),
('Vicky',3,3,true),('Calvin',3,3,false),('Logan',3,3,true),
('Natasha',3,3,false),('Strange',3,3,true),('Stephen',3,3,false);

INSERT INTO connect_all
(name,planet_types)
VALUES
('John', 3),('wick', 0),('Hugh', 0),
('Jackman', 0),('Deadpool', 0),('Wade', 0);


