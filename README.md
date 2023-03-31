# IBM Data Engineering 

## PROJECT 8.1 Creating ETL Data Pipelines using Apache Airflow

#### Scenario

For this project you will assume the role of database administrator at a data analytics consulting company. You have been assigned to a project where you need to setup, test and optimize the data platform. The platform contains different on premises database servers like MySQL, PostgreSQL, and cloud-based databases like IBM DB2. Your job is to configure, tune, secure, backup and monitor those databases and keep them running at peak performance.

This is a three-part assignment.

**Part 1** You will work with PostgreSQL server and perform the User Management tasks and handle the backup of the databases.

**Part 2** You will work with MySQL server and perform the tasks like configuration check, recovery of data. You will use indexing to improve the database performance. You will identify which storage engines are supported by the server and which table uses which storage engine. Optionally you will also automate backup tasks.

**Part 3** You will work with the cloud instance of IBM DB2 server and perform the tasks like restoration of data, index creation to improve the query performance. You will create views to make queries easier to write. Optionally you will also connect to the cloud instance of IBM DB2 server and from command line.

## PROJECT 8.1 Creating ETL Data Pipelines using Apache Airflow

#### Senario

You are a data engineer at a data analytics consulting company. You have been assigned to a project that aims to de-congest the national highways by analyzing the road traffic data from different toll plazas. Each highway is operated by a different toll operator with a different IT setup that uses different file formats. Your job is to collect data available in different formats and consolidate it into a single file.

#### Objectives
In this assignment you will author an Apache Airflow DAG that will:

1. Extract data from a csv file
2. Extract data from a tsv file
3. Extract data from a fixed width file
4. Transform the data
5. Load the transformed data into the staging area


## PROJECT 8.2 Creating Streaming Data Pipelines using Kafka

#### Senario

You are a data engineer at a data analytics consulting company. You have been assigned to a project that aims to de-congest the national highways by analyzing the road traffic data from different toll plazas. As a vehicle passes a toll plaza, the vehicle’s data like `vehicle_id`, `vehicle_type`, `toll_plaza_id` and timestamp are streamed to Kafka. Your job is to create a data pipe line that collects the streaming data and loads it into a database.

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
