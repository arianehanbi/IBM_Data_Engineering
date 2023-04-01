# IBM Data Engineering 

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



## PROJECT 5 Database and SQL for Data Science with Python

#### Scenario

> As a hands on Assignment, you will be working on a real world dataset provided by the Chicago Data Portal. Imagine, you have been hired by a non-profit organization that strives to improve educational outcomes for children and youth in the City of Chicago. Your job is to analyze the census, crime, and school data for a given neighborhood or district. You will identify causes that impact the enrollment, safety, health, environment ratings of schools.
> 
> You will be asked questions that will help you understand the data just like a data analyst or data scientist would. You will be assessed both on the correctness of your SQL queries and results.
> 
> A Python based Jupyter notebook has been provided to help with completing this assignment. Follow the instructions to complete all the problems. Then share the Queries and Results with your peers for reviewing.


## PROJECT 6 Hands-on Introduction to Linux commands and Shell Scripting

#### Scenario

> You are a lead linux developer at the top-tech company "ABC International INC." ABC currently suffers from a huge bottleneck - each day, interns must painstakingly access encrypted password files on core servers, and backup those that were updated within the last 24-hours. This introduces human error, lowers security, and takes an unreasonable amount of work.
> 
> As ABC INC's most trusted linux developer, you have been tasked with creating a script `backup.sh` which automatically backs up any of these files that have been updated within the past 24 hours.

#### Objectives

1. The objective of this lab is to incorporate much of the shell scripting you've learned over this course into a single script.
2. You will schedule your shell script to run every 24 hours using crontab.
3. TIP: If you're unsure whether some of your code will work as wanted, you can try the command directly in the terminal - and even create your own test scripts!


## PROJECT 7 Database Administration

#### Scenario

> For this project you will assume the role of database administrator at a data analytics consulting company. You have been assigned to a project where you need to setup, test and optimize the data platform. The platform contains different on premises database servers like MySQL, PostgreSQL, and cloud-based databases like IBM DB2. Your job is to configure, tune, secure, backup and monitor those databases and keep them running at peak performance.
> 
> This is a three-part assignment.

**Part 1** You will work with PostgreSQL server and perform the User Management tasks and handle the backup of the databases.

**Part 2** You will work with MySQL server and perform the tasks like configuration check, recovery of data. You will use indexing to improve the database performance. You will identify which storage engines are supported by the server and which table uses which storage engine. Optionally you will also automate backup tasks.

**Part 3** You will work with the cloud instance of IBM DB2 server and perform the tasks like restoration of data, index creation to improve the query performance. You will create views to make queries easier to write. Optionally you will also connect to the cloud instance of IBM DB2 server and from command line.

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
