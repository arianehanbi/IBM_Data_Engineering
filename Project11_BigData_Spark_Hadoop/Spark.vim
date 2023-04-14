# Create Spark session
import pandas as pd
from pyspark import SparkContext, SparkConf
from pyspark.sql import SparkSession

sc = SparkContext()           # Creating a spark context class
spark = SparkSession \        # Creating a spark session
    .builder.appName("Python Spark DataFrames basic example").config("spark.some.config.option", "some-value").getOrCreate()

spark                         # Initialize Spark session



# Spark DataFrame

sdf = spark.createDataFrame(pd_df)
sdf.show()
sdf.printSchema()



# Transformation

sdf.select()

sdf.filter(func)          : returns a new dataset formed by selecting those                        
sdf.withColumn(func)      : create a new column by procession and aggregationg data

sdf.groupby([col]).agg({'col':'AVG'}).sort('col', ascending=False).show()



map(func)             : returns a new distributed dataset formed 
                        by passing each element of the source through a function
distinct([numTasks])  : returns a new dataset that contains the distinct elements of the source dataset
flatmpa(func)         : similar to map. It can map each input item to zero or more output items. 
                        Func should return a Seq rather than a single item
                        
                        
                        
                        
# Action

redunce(func)            : Func takes two arguemtns and
                           returns one is commutative/ associative/ can be computed correctly in parallel
take(n)                  : returns an array with the first n element
collect()                : returns all the elements as an array
takeOrdered(n, key=func) : returns n elements ordered in ascending order or 
                           as specified by the optional key function
