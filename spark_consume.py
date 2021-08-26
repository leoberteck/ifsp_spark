import os
import json
import findspark
from pathlib import Path
from pandas import DataFrame as PandasDataFram
from pyspark.sql.types import *
from pyspark.sql import SparkSession
from pyspark.sql.functions import to_json, from_json, col, window, sum, count, struct, lit
from confluent_kafka.admin import AdminClient
from kafka_utils import create_topic_if_not_exists

findspark.init(spark_home='/usr/local/spark')

os.system('clear')
os.environ["CURRPATH"] = str(Path(__file__).parent.absolute())
config = json.loads(open(os.environ["CURRPATH"] + '/local.properties.json').read())
kafka_topic = config['kafka_topic']
kafka_result_topic = kafka_topic + "_agg_result"
kafka_bootstrap_server = config['kakfa_bootstrap_servers']
checkpoint_path = os.environ["CURRPATH"] + "/checkpoint"

spark = SparkSession \
    .builder \
    .appName("Python Spark SQL basic example") \
    .config("spark.jars.packages", "org.apache.spark:spark-sql-kafka-0-10_2.12:3.1.1") \
    .config("spark.driver.memory", "2g") \
    .getOrCreate()

spark.sparkContext.setLogLevel("WARN")

admCli = AdminClient({'bootstrap.servers': kafka_bootstrap_server})
create_topic_if_not_exists(client=admCli, topic=kafka_result_topic, confs={
    'num_partitions': 2,
    'retention.ms': '1800000',
    'delete.retention.ms': '1800000'
})

schema = StructType() \
    .add("country_code", StringType()) \
    .add("next_balance_change", FloatType()) \
    .add("timestamp", StringType())

df = spark.readStream \
    .format("kafka") \
    .option("kafka.bootstrap.servers", kafka_bootstrap_server) \
    .option("subscribe", kafka_topic) \
    .option("startingOffsets", "latest") \
    .option("failOnDataLoss", False) \
    .load() \
    .select(from_json(col("value").cast("string"), schema).alias("value")) \
    .select("value.country_code", "value.next_balance_change", col("value.timestamp").cast(TimestampType()).alias("timestamp"))\
    .withWatermark("timestamp", "5 seconds") \
    .groupBy(window("timestamp", "5 seconds"), "country_code")\
    .agg(sum("next_balance_change").alias("balance_change"), count("country_code").alias("num_changes"))\
    .withColumn("topic", lit(kafka_result_topic))\
    .select("topic", col("country_code").alias("key"), to_json(struct(col("window.end").alias("timestamp"), col("country_code"), col("balance_change"), col("num_changes"))).alias("value"))\
    .writeStream\
    .format("kafka")\
    .option("checkpointLocation", checkpoint_path)\
    .option("kafka.bootstrap.servers", kafka_bootstrap_server)\
    .trigger(processingTime="5 seconds")\
    .start()\
    .awaitTermination()