# IBM Data Engineering 

<br>
<br>

## PROJECT 4 Introduction to Relational Database </sup>

#### Scenario

> In this scenario, you have recently been hired as a Data Engineer by a New York based coffee shop chain that is looking to expand nationally by opening a number of franchise locations. As part of their expansion process, they want to streamline operations and revamp their data infrastructure.
> 
> Your job is to design their relational database systems for improved operational efficiencies and to make it easier for their executives to make data driven decisions.
> 
> Currently their data resides in several different systems: accounting software, suppliers’ databases, point of sales (POS) systems, and even spreadsheets. You will review the data in all of these systems and design a central database to house all of the data. You will then create the database objects and load them with source data. Finally, you will create subsets of data that your business partners require, export them, and then load them into staging databases that use different RDBMS.

#### Objectives

After completing this lab, you will be able to:

1. Identify entities.
2. Identity attributes.
3. Create an entity relationship diagram (ERD) using the pgAdmin ERD Tool.
4. Normalize tables.
5. Define keys and relationships.
6. Create database objects by generating and running the SQL script from the ERD Tool.
7. Create a view and export the data.
8. Create a materialized view and export the data.
9. Import data into a Db2 database.
10. Import data into a MySQL database.

<br>
<br>

## PROJECT 5 Database and SQL for Data Science with Python

#### Scenario

> As a hands on Assignment, you will be working on a real world dataset provided by the Chicago Data Portal. Imagine, you have been hired by a non-profit organization that strives to improve educational outcomes for children and youth in the City of Chicago. Your job is to analyze the census, crime, and school data for a given neighborhood or district. You will identify causes that impact the enrollment, safety, health, environment ratings of schools.
> 
> You will be asked questions that will help you understand the data just like a data analyst or data scientist would. You will be assessed both on the correctness of your SQL queries and results.
> 
> A Python based Jupyter notebook has been provided to help with completing this assignment. Follow the instructions to complete all the problems. Then share the Queries and Results with your peers for reviewing.

<br>
<br>

## PROJECT 6 Hands-on Introduction to Linux commands and Shell Scripting

#### Scenario

> You are a lead linux developer at the top-tech company "ABC International INC." ABC currently suffers from a huge bottleneck - each day, interns must painstakingly access encrypted password files on core servers, and backup those that were updated within the last 24-hours. This introduces human error, lowers security, and takes an unreasonable amount of work.
> 
> As ABC INC's most trusted linux developer, you have been tasked with creating a script `backup.sh` which automatically backs up any of these files that have been updated within the past 24 hours.

#### Objectives

1. The objective of this lab is to incorporate much of the shell scripting you've learned over this course into a single script.
2. You will schedule your shell script to run every 24 hours using crontab.
3. TIP: If you're unsure whether some of your code will work as wanted, you can try the command directly in the terminal - and even create your own test scripts!

<br>
<br>

## PROJECT 7 Database Administration

#### Scenario

> For this project you will assume the role of database administrator at a data analytics consulting company. You have been assigned to a project where you need to setup, test and optimize the data platform. The platform contains different on premises database servers like MySQL, PostgreSQL, and cloud-based databases like IBM DB2. Your job is to configure, tune, secure, backup and monitor those databases and keep them running at peak performance.
> 
> This is a three-part assignment.

**Part 1** You will work with PostgreSQL server and perform the User Management tasks and handle the backup of the databases.

**Part 2** You will work with MySQL server and perform the tasks like configuration check, recovery of data. You will use indexing to improve the database performance. You will identify which storage engines are supported by the server and which table uses which storage engine. Optionally you will also automate backup tasks.

**Part 3** You will work with the cloud instance of IBM DB2 server and perform the tasks like restoration of data, index creation to improve the query performance. You will create views to make queries easier to write. Optionally you will also connect to the cloud instance of IBM DB2 server and from command line.

<br>
<br>

## PROJECT 8.1 Creating ETL Data Pipelines using Apache Airflow

#### Senario

> You are a data engineer at a data analytics consulting company. You have been assigned to a project that aims to de-congest the national highways by analyzing the road traffic data from different toll plazas. Each highway is operated by a different toll operator with a different IT setup that uses different file formats. Your job is to collect data available in different formats and consolidate it into a single file.

#### Objectives
In this assignment you will author an Apache Airflow DAG that will:

1. Extract data from a csv file
2. Extract data from a tsv file
3. Extract data from a fixed width file
4. Transform the data
5. Load the transformed data into the staging area

<br>
<br>

## PROJECT 8.2 Creating Streaming Data Pipelines using Kafka

#### Senario

> You are a data engineer at a data analytics consulting company. You have been assigned to a project that aims to de-congest the national highways by analyzing the road traffic data from different toll plazas. As a vehicle passes a toll plaza, the vehicle’s data like `vehicle_id`, `vehicle_type`, `toll_plaza_id` and timestamp are streamed to Kafka. Your job is to create a data pipe line that collects the streaming data and loads it into a database.

#### Objectives

In this assignment you will create a streaming data pipe by performing these steps:

1. Start a MySQL Database server.
2. Create a table to hold the toll data.
3. Start the Kafka server.
4. Install the Kafka python driver.
5. Install the MySQL python driver.
6. Create a topic named toll in kafka.
7. Download streaming data generator program.
8. Customize the generator program to steam to toll topic.
9. Download and customise streaming data consumer.
10. Customize the consumer program to write into a MySQL database table.
11. Verify that streamed data is being collected in the database table.

<br>
<br>

## PROJECT 9 Getting Started with Data Warehousing and BI Analytics

#### Senario

> You are a data engineer hired by a solid waste management company. The company collects and recycles solid waste across major cities in the country of Brazil. The company operates hundreds of trucks of different types to collect and transport solid waste. The company would like to create a data warehouse so that it can create reports like:
> 
> - total waste collected per year per city
> 
> - total waste collected per month per city
> 
> - total waste collected per quarter per city
> 
> - total waste collected per year per truck type
> 
> - total waste collected per truck type per city
> 
> - total waste collected per truck type per station per city


#### Objectives

In this assignment you will:

1. Design a Data Warehouse
2. Load data into Data Warehouse
3. Write aggregation queries
4. Create MQTs
5. Create a Dashboard

<br>
<br>

## PROJECT 10

#### Senario

> You are a data engineer at a data analytics consulting company. Your company prides itself in being able to efficiently handle data in any format on any database on any platform. Analysts in your office need to work with data on different databases, and data in different formats. While they are good at analyzing data, they count on you to be able to move data from external sources into various databases, move data from one type of database to another, and be able to run basic queries on various databases.

#### Objectives

In this assignment you will:

1. replicate a Cloudant database.
2. create indexes on a Cloudant database.
3. query data in a Cloudant database.
4. import data into a MongoDB database.
5. query data in a MongoDB database.
6. export data from MongoDB.
7. import data into a Cassandra database.
8. query data in a Cassandra database.

<br>
<br>


## PROJECT 12

#### Senario

> In this scenario, you will import data from an external dataset and create a DataFrame. You'll save the data to a Parquet file and follow the steps to train the module using with Apache Spark. You'll complete the project by deploying the model to the IBM Watson Machine Learning (WML) Service. IBM WML is a scalable, scale-to-zero cloud service that supports training and serving of machine learning and deep learning models, providing a HTTP(S) endpoint for seamless consumption from third-party applications.  Detailed instructions provide guidance throughout the project.

#### Objectives

After completing this lab, you will be able to:

1. Pull-in data from the HMP dataset
2. Create a Spark data frame from the raw data
3. Store this to parquet (in Cloud Object Store)
4. Read it again (from Cloud Object Store)
5. Deploy this model to Train a ML-Model on that data set
6. Watson Machine Learning

<br>
<br>

## PROJECT 13

#### Senario

##### OLTP

> You are a data engineer at an e-commerce company. Your company needs you to design a data platform that uses MySQL as an OLTP database. You will be using MySQL to store the OLTP data.

##### NoSQL

> You are a data engineer at an e-commerce company. Your company needs you to design a data platform that uses MongoDB as a NoSQL database. You will be using MongoDB to store the e-commerce catalog data.

##### Data Warehouse

> You are a data engineer hired by an ecommerce company named SoftCart.com. The company retails download only items like E-Books, Movies, Songs etc. The company has international presence and customers from all over the world. The company would like to create a data warehouse so that it can create reports like

> You have designed the schema for the data warehouse in the previous assignment. Data engineering is a team game. Your senior data engineer reviewed your design. Your schema design was improvised to suit the production needs of the company. In this assignment you will generate reports out of the data in the data warehouse.

##### Dashboard Creation

> You are a data engineer at an e-commerce company. Your company has finished setting up a datawarehouse. Now you are assigned the responsibility to design a reporting dashboard that reflects the key metrics of the business.

##### ETL

> You are a data engineer at an e-commerce company. You need to keep data synchronized between different databases/data warehouses as a part of your daily routine. One task that is routinely performed is the sync up of staging data warehouse and production data warehouse. Automating this sync up will save you a lot of time and standardize your process. You will be given a set of python scripts to start with. You will use/modify them to perform the incremental data load from MySQL server which acts as a staging warehouse to the IBM DB2 which is a production data warehouse. This script will be scheduled by the data engineers to sync up the data between the staging and production data warehouse.

##### Pipeline

> Write a pipeline that analyzes the web server log file, extracts the required lines(ending with html) and fields(time stamp, size ) and transforms (bytes to mb) and load (append to an existing file.)

#### Objectives

< OLTP >
1. design the schema for OLTP database.
2. load data into OLTP database.
3. automate admin tasks.

< NoSQL >
1. import data into a MongoDB database.
2. query data in a MongoDB database.
3. export data from MongoDB.

< DWH >
1. ERD Design Tool of pgAdmin
2. PostgreSQL Database Server
3. Load data into Data Warehouse
4. Write aggregation queries
5. Create MQTs

< Dashboard: Cognos >
1. IBM Cognos Analytics (You can either use IBM Cognos Analytics or Cognose Dashboard Embedded and Watson Studio)
2. Cloud instance of IBM DB2 database

< ETL >
1. Connect to IBM DB2 data warehouse and identify the last row on it.
2. Connect to MySQL staging data warehouse and find all rows later than the last row on the datawarehouse.
3. Insert the new data in the MySQL staging data warehouse into the IBM DB2 production data warehouse.
4. Extract data from a web server log file
5. Transform the data
6. Load the transformed data into a tar file

< Pipeline >

1. Extract data from a web server log file
2. Transform the data
3. Load the transformed data into a tar file

<br>
<br>
