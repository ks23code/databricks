-- Databricks notebook source
-- MAGIC %run ../Copy-Datasets

-- COMMAND ----------

-- MAGIC %python
-- MAGIC files = dbutils.fs.ls(f"{dataset_bookstore}/customers-json")
-- MAGIC display(files)

-- COMMAND ----------

SELECT * FROM json.`${dataset.bookstore}/customers-json/export_001.json`

-- COMMAND ----------

-- all file with specific wild card as mention below
SELECT * FROM json.`${dataset.bookstore}/customers-json/export_*.json`


--  NOTE that we will be geting only 1000 rows @first 1000rows

-- COMMAND ----------

--  total directory files @note that all files should have same file format and the schema
SELECT * FROM json.`${dataset.bookstore}/customers-json`

-- COMMAND ----------

SELECT COUNT(*) FROM json.`${dataset.bookstore}/customers-json`

-- COMMAND ----------


