# Kubernetes

# Setup

git clone https://github.com/ibm-developer-skills-network/fgskh-new_horizons.git
cd fgskh-new_horizons
alias k='kubectl'
my_namespace=$(kubectl config view --minify -o jsonpath='{..namespace}') # save current namesapce in an env variable



# Deploy the Apache Spark Kubernetes Pod

k apply -f spark/pod_spark.yaml           # install the Spark POD
k get po                                  # check the status of the POD
k delete po spark                         # delete the POD



# Submit Spark jobs to Kubernetes

k exec spark -c spark  -- echo "Hello from inside the container"

k exec spark -c spark -- ./bin/spark-submit \
--master k8s://http://127.0.0.1:8001 \
--deploy-mode cluster \
--name spark-pi \
--class org.apache.spark.examples.SparkPi \
--conf spark.executor.instances=1 \
--conf spark.kubernetes.container.image=romeokienzler/spark-py:3.1.2 \
--conf spark.kubernetes.executor.request.cores=0.2 \
--conf spark.kubernetes.executor.limit.cores=0.3 \
--conf spark.kubernetes.driver.request.cores=0.2 \
--conf spark.kubernetes.driver.limit.cores=0.3 \
--conf spark.driver.memory=512m \
--conf spark.kubernetes.namespace=${my_namespace} \
local:///opt/spark/examples/jars/spark-examples_2.12-3.1.2.jar \
10
