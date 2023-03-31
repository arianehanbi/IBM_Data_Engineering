# PostgreSQL

# Download the lab setup bash file
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0231EN-SkillsNetwork/labs/Final%20Assignment/postgres-setup.sh

# Create users/ roles
CREATE USER backup_operator;
CREATE ROLE backup;

# Grant privileages to the role
GRANT CONNECT ON DATABASE tolldata TO backup;
GRANT SELECT ON ALL TABLES IN SCHEMA toll TO backup;
