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



#### KEYSPACE Operations

CREATE KEYSPACE training
WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};

ALTER KEYSPACE training
WITH REPLICATION = {'class': 'NetworkTopologyStrategy'};

DROP KEYSPACE training;


DESCRIBE KEYSPACES;
DESCRIBE name_keyspaces;

USE name_keyspaces;




#### TABLE Operations

USE name_keyspaces;


CREATE TABLE table_name(                 \\ Static Table
  id int PRIMARY KEY,
  name text,
  price decimal,
  date date,
);

CREATE TABLE table_name(                 \\ Dynamic Table
  id int,
  name text,
  group_name text STATIC,
  price decimal,
  date date,
  
  PRIMARY KEY ((id), name))
) WITH CLUSTERING ORDER BY (name ASC);


ALTER TABLE table_name ADD year int;
ALTER TABLE table_name DROP price;
ALTER TABLE table_name RENAME user_name TO user_name;   \\ renaming support for clustering key, not partition key
ALTER TABLE table_name WITH default_time_to_live=10;    \\ change table properties


DROP TABLE table_name;                  \\ remote all data and schema
TRUNCATE TABLE table_name;              \\ remove all data from a table, but not from table schema definition
TRUNCATE table_name;


DESCRIBE TABLES;
DESCRIBE table_name;




#### CRUD Operations

\\ By default no reads before write: INSERT and UPDATE operations behave similary
\\ Always start your query using the "partition key"

INSERT INTO table_name(id, name, year)
VALUES (1, 'Toy Story', 1995)
USING TTL 10;                          \\ in 10s from insertion, the data will not be available for query

UPDATE table_name SET year = 1996 WHERE id = 4;


DELETE colname FROM table_name WHERE id = 5;
DELETE FROM table_name WHERE id = 5;


SELECT * FROM table_name WHERE partition_key = x;
SELECT * FROM table_name WHERE id = 1;




#### Create Index

CREATE INDEX price_index ON diamonds(price);




#### import/export data from Cassandra

COPY training.diamonds(id,clarity,cut,price) FROM 'mongodb_exported_data.csv' 
WITH DELIMITER=',' AND HEADER=TRUE;

COPY diamonds TO 'cassandra-diamonds.csv';        \\ exoprt diamods table into a csv file



