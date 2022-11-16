SQL
  - SQL or Structured Query Language 
  - we use to talk to databases.
    - Databases collect and organize data to
    allow for easy retrieval.

TSQL, SQLite, MySQL, Postgres, Oracle and Microsoft SQL 

No SQL 
  MongoDB CouchDB

PostgreSQL

integer
boolean
dates 
varchar 
text 
time 
timestamp


Database
  The term when describing the whole database server

Table
  A container that is stored inside of the database server
  A Table can have many rows
  To rep an object

Row
  The actual data that is stored in the table
  Often referred to as a record as well

Column
  Is a value that is stored in a Row

PRIMARY KEY
  All database tables should have a primary key, this should be a 
  unique key that is used as a safe way to look up a row in your 
  database
  id 

NOT NULL
  Means that specific value in the row needs to be there or the 
  database won’t let you save that record  

UNIQUE
  Means that the value of data in that row cannot be in any other row

DEFAULT
  This gives a default value to the column of a row







Most Common PostgreSQL DataTypes:
  integer     1
  varchar     c 
  boolean     true false
  date        YYYY-MM-DD
  text        text
  time        HH:MI:SS 
  timestamp   YYYY-MM-DD HH:MI:SS
  null 

CRUD
  create
  Read
  update
  destroy 

SQL Commands
  SELECT - extracts data from a database
  UPDATE - updates data in a database
  DELETE - deletes data from a database
  INSERT INTO - inserts new data into a database
  CREATE DATABASE - creates a new database
  ALTER DATABASE - modifies a database
  CREATE TABLE - creates a new table
  ALTER TABLE - modifies a table
  DROP TABLE - deletes a table
  CREATE INDEX - creates an index (search key)
  DROP INDEX - deletes an index


Constraits
NOT NULL (Links to an external site.) 
  - Ensures that a column cannot have a NULL value
UNIQUE (Links to an external site.) 
  - Ensures that all values in a column are different
PRIMARY KEY (Links to an external site.) 
  - A combination of a NOT NULL and UNIQUE. Uniquely identifies 
    each row in a table
FOREIGN KEY (Links to an external site.) 
  - Uniquely identifies a row/record in another table
CHECK (Links to an external site.) 
  - Ensures that all values in a column satisfy 
  a specific condition
DEFAULT (Links to an external site.) 
  - Sets a default value for a column when no value is specified
INDEX (Links to an external site.) 
  - Use to create and retrieve data from 
  the database very quickly

psql 
-- Comment 
CREATE DATABASE dealership_winter22;

\c dealership_winter22;

CREATE DATABASE dealership_winter22;

CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    make VARCHAR(50) NOT NULL,
    model VARCHAR(50) NOT NULL,
    year INTEGER NOT NULL ,
    color VARCHAR(25) NOT NULL,
    mileage INTEGER NOT NULL,
    runs BOOLEAN DEFAULT true
);

INSERT INTO cars (make, model, color, year, mileage)
VALUES ('Toyota', 'Rav 4', 'grey', 2018, 38000 )

INSERT INTO cars (make, model, color, year, mileage, runs)
VALUES ('Jeep', 'Cherokee', 'Black', 2011, 332131, DEFAULT),
       ('Toyota', 'Tacoma', 'White', 2017, 50, DEFAULT),
       ('Ford', 'F150', 'Sliver', 1999, 100000, false),
       ('Toyota', 'Prius', 'Green', 2013, 54313, DEFAULT),
       ('Dodge', 'Ram', 'Blue', 1983, 65234132, false),
       ('Ford', 'Focus', 'Purple', 1993, 4321421, DEFAULT),
       ('Jaguar', 'F-Type', 'Gold', 2018, 0, DEFAULT);

SELECT * FROM cars
* - all of the columns

SELECT make, model, year, mileage FROM cars 
WHERE cars.mileage < 50000

SELECT make, model, year, mileage FROM cars 
WHERE cars.year > 1990 AND cars.year < 2010 AND cars.mileage < 50000

SELECT make, model, year, mileage FROM cars 
WHERE cars.year > 1990 OR cars.mileage < 50000

SELECT make, model, year, mileage FROM cars 
WHERE NOT cars.year > 1990 

order, inserted, updated

order BY, A-z 0-122, ASC
DESC

SELECT * FROM cars
ORDER BY cars.year 

SELECT * FROM cars
ORDER BY cars.year DESC

UPDATE * warning, when updating make sure you have a where

UPDATE cars 
SET runs = false
WHERE cars.id = 5

DELETE * warning, when updating make sure you have a where
DELETE FROM cars
WHERE cars.id = 8