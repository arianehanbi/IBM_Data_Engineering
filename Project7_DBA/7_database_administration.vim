# PostgreSQL

# Download the lab setup bash file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN-SkillsNetwork/labs/Final%20Assignment/postgres-setup.sh

# Create users/ roles
CREATE USER backup_operator;
CREATE ROLE backup;

# Grant privileages to the role/ users
GRANT CONNECT ON DATABASE tolldata TO backup;
GRANT SELECT ON ALL TABLES IN SCHEMA toll TO backup;

GRANT backup TO backup_operator;



# MySQL

# Download the backup file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN-SkillsNetwork/labs/Final%20Assignment/billingdata.sql

# Start MySQL
start_mysql

# Initiate the mysql command prompt session within the MySQL 
mysql

# Create a new database and use the database
CREATE DATABASE billing;
USE billing;

# Restore the mysql dump file and check the list of tables
SOURCE billingdata.sql;
SHOW TABLES;

# Create an index
CREATE INDEX billedamount_index ON billdata(billedamount);

# Find supported storage engines
SHOW ENGINES;

# Find the storage engine of a table
SELECT TABLE_NAME, ENGINE FROM information_schema.TABLES WHERE TABLE_NAME='billdata';

