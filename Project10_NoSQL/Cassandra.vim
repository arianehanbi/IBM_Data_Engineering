// commented text

// cqlsh: CQL Shell
// Create, Alter, Drop keyspaces
// Create, Alter, Drop tables
// Insert, Update, Delete data
// Execute Read queries

cqlsh [options] [host [port]]
cqlsh --help
cqlsh --version



#### Special Commands

CAPTURE:     used to capture the output of a command and adds it ot a file
CONSISTENCY: used to show the current consistency level and tune data consistency
COPY:        used to import/export csv data
DESCRIBE:    used to describe the current cluster of Cassandra and its objects
EXIT:        used to terminate the cqlsh session
PAGING:      used to enable or disable paging of the query results
TACING:      used to enable or disable request tracing

Examples)
> CONSISTENCY QUORUM     //quorum - majority of nodes from the entire cluster
> COPY TO
> COPY FROM



#### Getting the environment ready

start_cassandra                           // start the Cassandra server
cqlsh --username cassandra --password pw  // coneect to the server
show host                                 // show the host details 
show version                              // show the server version 
cls                                       // clear the cqlsh screen
exit                                      // disconnect from the server

describe keyspaces;                       // list keyspaces 
use keyspaces;



#### Create a keyspace

CREATE KEYSPACE training;
WITH REPLICATION = {'class':'Replication_Strategy', 'replication_factor' : 3};

ALTER KEYSPACE training;
WITH REPLICATION = {'class': 'NetworkTopologyStrategy'};

DROP KEYSPACE training;


DESCRIBE KEYSPACES;
DESCRIBE name_keyspaces;

USE name_keyspaces;




#### Create a table

USE name_keyspaces;

CREATE TABLE table_name(
  id int PRIMARY KEY,
  name text,
  price decimal,
  date date
);

ALTER TABLE table_name
ADD year int;

ALTER TABLE table_name
DROP price;

DROP TABLE table_name;


DESCRIBE TABLES;
DESCRIBE table_name;




#### CRUD Operations

INSERT INTO table_name(id, name, year)
VALUES (1, 'Toy Story', 1995);

UPDATE table_name
SET year = 1996
WHERE id = 4;

DELETE FROM table_name
WHERE id = 5;


SELECT * FROM table_name;
SELECT * FROM table_name WHERE id = 1;




