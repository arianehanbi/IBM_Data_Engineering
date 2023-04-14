#### Set up single-node Hadoop

# download
curl https://dlcdn.apache.org/hadoop/common/hadoop-3.2.3/hadoop-3.2.3.tar.gz --output hadoop-3.2.3.tar.gz
tar -xvf hadoop-3.2.3.tar.gz
cd hadoop-3.2.3

# check the hadoop command to see if it is setup
bin/hadoop                                

# download data
curl source_url/data.txt --output data.txt

# run the MapReduce application for wordcount on data.txt, and store the output
bin/hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.3.jar wordcount data.txt output
ls output



#### Set up cluster nodes dockerized Hadoop

# clone the repository ot your theia environment
git clone https://github.com/ibm-developer-skills-network/ooxwv-docker_hadoop.git
cd ooxwv-docker_hadoop

# compose the docker application
docker-compose up -d

# run the namenode as a mounted drive on bash
docker exec -it namenode /bin/bash



#### Explore the Hadoop environment

docker exec -it namenode /bin/bash
ls /opt/hadoop-3.2.1/etc/hadoop/*.xml

# hadoop-env.sh   : Serves as a master file to configure YARN, HDFS, MapReduce, and Hadoop-related project settings.
# core-site.xml   : Defines HDFS and Hadoop core properties
# hdfs-site.xml   : Governs the location for storing node metadata, fsimage file and log file.
# mapred-site-xml : Lists the parameters for MapReduce configuration.
# yarn-site.xml   : Defines settings relevant to YARN. It contains configurations for the Node Manager, Resource Manager, Containers, and Application Master.



#### Create a file in the HDFS

docker exec -it namenode /bin/bash

# In the HDFS, create a directory structure named "user/root/input"
hdfs dfs -mkdir -p /user/root/input

# Copy all the hadoop configuration xml files into the input directory
hdfs dfs -put $HADOOP_HOME/etc/hadoop/*.xml /user/root/input

# Create a data.txt file
curl source_url/SampleMapReduce.txt --output data.txt 

# Copy the data.txt file into /user/root
hdfs dfs -put data.txt /user/root/

# Check if the file has been copied into the HDFS by viewing its content
hdfs dfs -cat /user/root/data.txt





