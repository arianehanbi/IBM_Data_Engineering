# Create Spark session
import pandas as pd
from pyspark import SparkContext, SparkConf
from pyspark.sql import SparkSession
from pyspark.sql.functions import pandas_udf, PandasUDFType

sc = SparkContext()           # Creating a spark context class
spark = SparkSession.builder.appName("Python Spark DataFrames basic example").config("spark.some.config.option", "some-value").getOrCreate()
                              # Creating a spark session
spark                         # Initialize Spark session



# Run SQL query
spark.sql("SELECT * FROM cars").show()
spark.sql("SELECT count(*), cyl from cars GROUP BY cyl").show()



# Spark DataFrame

sdf = spark.createDataFrame(pd_df)
sdf.show()
sdf.printSchema()



# Create a Table View
sdf.createTempView('_name')



# Transformation

sdf.select()
sdf.filter(func)          : returns a new dataset formed by selecting those                        
sdf.withColumn(func)      : create a new column by procession and aggregationg data
sdf.groupby([col]).agg({'col':'AVG'}).sort('col', ascending=False).show()     : aggregation

sdf.distinct([numTasks])  : returns a new dataset that contains the distinct elements of the source dataset
sdf.map(func)             : returns a new distributed dataset formed 
                            by passing each element of the source through a function
sdf.flatmpa(func)         : similar to map. It can map each input item to zero or more output items. 
                            Func should return a Seq rather than a single item
                        
                        
                        
                        
# Action

sdf.take(n)                  : returns an array with the first n element
sdf.collect()                : returns all the elements as an array
sdf.redunce(func)            : Func takes two arguemtns and
                               returns one is commutative/ associative/ can be computed correctly in parallel
sdf.takeOrdered(n, key=func) : returns n elements ordered in ascending order or 
                               as specified by the optional key function
