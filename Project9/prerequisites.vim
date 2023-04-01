course 9

#### Setting up a Staging Area


start_postgres

# Create a database
createdb -h localhost -U postgres -p 5432 (dbname: billingDW)

# Download schema files
wget (source url)
tar  -xvzf filename.tgz

# Create DWH schema
psql  -h localhost -U postgres -p 5432 billingDW < star-schema.sql

# Load data into Dimension tables
psql  -h localhost -U postgres -p 5432 billingDW < DimCustomer.sql
psql  -h localhost -U postgres -p 5432 billingDW < DimMonth.sql

# Load data into Fact tables
psql  -h localhost -U postgres -p 5432 billingDW < FactBilling.sql

# Run a sample query
psql  -h localhost -U postgres -p 5432 billingDW < verify.sql


#### Verify Data Quality for DWH
pip install psycopg2 pandas


# Run bash script
bash setup_staging_area.sh



#### Populating a DWH


#3 Create a db2cli dsn to access your cloud IBM DB2 instance from the command line
db2cli writecfg add -database dbname -host hostname -port 50001 -parameter "SecurityTransportMode=SSL"
db2cli writecfg add -dsn dsn_name -database dbname -host hostname -port 50001

#4 Veirfy a db2cli dsn
db2cli validate -dsn alias -connect -user userid -passwd password


#5 Create the schema on production DWH
# Download the schema file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Populating%20a%20Data%20Warehouse/star-schema.sql

# Create the schema
db2cli execsql -dsn production -user userid -passwd password -inputsql star-schema.sql


#6 Populate the production DWH
# Download the data filew
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Populating%20a%20Data%20Warehouse/DimCustomer.sql
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Populating%20a%20Data%20Warehouse/DimMonth.sql
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Populating%20a%20Data%20Warehouse/FactBilling.sql

ls *.sql

# Load the data in the DWH
db2cli execsql -dsn production -user userid -passwd password -inputsql DimCustomer.sql
db2cli execsql -dsn production -user userid -passwd password -inputsql DimMonth.sql
db2cli execsql -dsn production -user userid -passwd password -inputsql FactBilling.sql


#7 Verify the data on the production DWH
# Download the verification SQL file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0260EN-SkillsNetwork/labs/Populating%20a%20Data%20Warehouse/verify.sql

# Verify the data in the DWH
db2cli execsql -dsn production -user userid -passwd password -inputsql verify.sql


#8 Work with db2cli interactive command line
db2cli execsql -dsn production -user userid -passwd password
select count(*) from DimMonth;


#9 Create a Materialized view (MQT)
CREATE TABLE avg_customer_bill (customerid, averagebillamount) AS
(select customerid, avg(billedamount)
from factbilling
group by customerid
)
     DATA INITIALLY DEFERRED
     REFRESH DEFERRED
     MAINTAINED BY SYSTEM;
     
# Refresh the create MQT
refresh table avg_customer_bill;




#### Querying the DWH (Cubes, Rollups, Grouping sets, Materialized views)


















