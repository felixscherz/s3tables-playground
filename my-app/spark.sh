#!/usr/bin/env bash

pyspark \
    --jars "target/my-app-1.0-SNAPSHOT-jar-with-dependencies.jar" \
    --conf "spark.sql.catalog.s3tablesbucket=org.apache.iceberg.spark.SparkCatalog" \
    --conf "spark.sql.catalog.s3tablesbucket.catalog-impl=software.amazon.s3tables.iceberg.S3TablesCatalog" \
    --conf "spark.sql.catalog.s3tablesbucket.warehouse=$ARN" \
    --conf "spark.sql.extensions=org.apache.iceberg.spark.extensions.IcebergSparkSessionExtensions"


#    --jars "target/my-app-1.0-SNAPSHOT-jar-with-dependencies.jar,s3-tables-catalog-for-iceberg-0.1.3.jar,s3tables-2.29.31.jar,iceberg-spark-runtime-3.5_2.12-1.7.1.jar" \
