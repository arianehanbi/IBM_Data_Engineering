# Prepare the lab environment
1) Download Kafka
wget https://archive.apache.org/dist/kafka/2.8.0/kafka_2.12-2.8.0.tgz

2) Extract Kafka
tar -xzf kafka_2.12-2.8.0.tgz

3) Install python kafka Module
python3 -m pip install kafka-python




# Start Zookeeper
cd kafka_2.12-2.8.0
bin/zookeeper-server-start.sh config/zookeeper.properties

# Start Kafka server
cd kafka_2.12-2.8.0
bin/kafka-server-start.sh config/server.properties

# Create a topic named `toll` 
cd kafka_2.12-2.8.0
bin/kafka-topics.sh --bootstrap-server localhost:9092 --create --topic toll --partitions 2
bin/kafka-topics.sh --bootstrap-server localhost:9092 --list
bin/kafka-topics.sh --bootstrap-server localhost:9092 --describe --topic toll

# Create a producer and consumer
cd kafka_2.12-2.8.0
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic toll 

cd kafka_2.12-2.8.0
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic toll --from-beginning




# Produce and consume with message keys
# Start a new producer with message key enabled
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic toll --property parse.key=true --property key.separator=:
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic toll --from-beginning --property print.key=true --property key.separator=:

# Consumer Offset
# Create a new consumer within a consumer group
bin/kafka-console-consumer.sh --bootstrap-server localhost:9092 --topic toll --group atm-app

# Show the details of the consumer group
bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092 --describe --group atm-app

# Reset Offset
bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092  --topic toll --group atm-app --reset-offsets --to-earliest --execute

# Shift the offset to left by 2
bin/kafka-consumer-groups.sh --bootstrap-server localhost:9092  --topic toll --group atm-app --reset-offsets --shift-by -2 --execute




# Download `toll_traffic_generator.py` and `streaming_data_reader.py`
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Final%20Assignment/toll_traffic_generator.py
wget https://cf-courses-data.s3.us.cloud-object-storage.appdomain.cloud/IBM-DB0250EN-SkillsNetwork/labs/Final%20Assignment/streaming_data_reader.py

# Run `toll_traffic_generator.py`
python3 toll_traffic_generator.py
python3 streaming_data_reader.py

