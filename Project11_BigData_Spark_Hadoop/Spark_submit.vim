# spark-submit
# : a unified interface to submit the Spark application, no matter the cluster manager or application language


# install Apache Spark cluster using Docker Compose

python3 -m pip install pyspark
git clone https://github.com/big-data-europe/docker-spark.git
cd docker-spark                            # change to the downloaded code
docker-compose up                          # start the cluster



# create submit.py code

from pyspark import SparkContext, SparkConf
from pyspark.sql import SparkSession
from pyspark.sql.types import StructField, StructType, IntegerType, StringType

sc = SparkContext.getOrCreate(SparkConf().setMaster('spark://localhost:7077'))
sc.setLogLevel("INFO")
spark = SparkSession.builder.getOrCreate()
spark = SparkSession.builder.getOrCreate()
df = spark.createDataFrame(
    [
        (1, "foo"),
        (2, "bar"),
    ],
    StructType(
        [
            StructField("id", IntegerType(), False),
            StructField("txt", StringType(), False),
        ]
    ),
)
print(df.dtypes)
df.show()




# execute code/ submit Spark job
python3 submit.py
