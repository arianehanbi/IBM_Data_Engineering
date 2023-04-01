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


#### Querying the DWH (Cubes, Rollups, Grouping sets, Materialized views)
