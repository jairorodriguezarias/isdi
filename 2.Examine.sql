-- Databricks notebook source
-- MAGIC %md
-- MAGIC ## Lineitem
-- MAGIC Contenido del fichero

-- COMMAND ----------

DESCRIBE DETAIL LINEITEM;

-- COMMAND ----------

SELECT *
FROM LINEITEM
LIMIT 10;

-- COMMAND ----------

DESCRIBE TABLE LINEITEM

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Nation
-- MAGIC Contenido del fichero

-- COMMAND ----------

DESCRIBE DETAIL NATION;

-- COMMAND ----------

SELECT *
FROM NATION
LIMIT 10;

-- COMMAND ----------

DESCRIBE TABLE NATION

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Orders
-- MAGIC Contenido del fichero

-- COMMAND ----------

DESCRIBE DETAIL ORDERS;

-- COMMAND ----------

SELECT *
FROM ORDERS
LIMIT 10;

-- COMMAND ----------

DESCRIBE TABLE ORDERS

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Region
-- MAGIC Contenido del fichero

-- COMMAND ----------

DESCRIBE DETAIL REGION;

-- COMMAND ----------

SELECT *
FROM REGION
LIMIT 10;

-- COMMAND ----------

DESCRIBE TABLE REGION

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ## Supplier
-- MAGIC Contenido del fichero

-- COMMAND ----------

DESCRIBE DETAIL SUPPLIER;

-- COMMAND ----------

SELECT *
FROM SUPPLIER
LIMIT 10;

-- COMMAND ----------

DESCRIBE TABLE SUPPLIER
