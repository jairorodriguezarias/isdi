-- Databricks notebook source
-- MAGIC %md
-- MAGIC ## Exploración básica de la información

-- COMMAND ----------

-- MAGIC %md
-- MAGIC **Análisis de la tabla Lineitem**
-- MAGIC 1. Precio total por pedido
-- MAGIC 2. Top10 pedidos con mayor precio ordenados de mayor precio a menor
-- MAGIC 3. Media de lineas por pedido
-- MAGIC 4. Media de lineas por pedido según modo de envio
-- MAGIC 5. Media de lineas por pedido cada mes
-- MAGIC 6. Número de proveedor por pais

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 1. Precio total por pedido

-- COMMAND ----------

SELECT 
  L_ORDERKEY AS ORDERKEY
  , sum(L_EXTENDEDPRICE) AS EXTENDEDPRICE 
FROM LINEITEM
GROUP BY L_ORDERKEY

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 2. Top10 pedidos con mayor precio ordenados de mayor precio a menor

-- COMMAND ----------

SELECT 
  L_ORDERKEY AS ORDERKEY
  , sum(L_EXTENDEDPRICE) AS EXTENDEDPRICE 
FROM LINEITEM
GROUP BY L_ORDERKEY
ORDER BY EXTENDEDPRICE DESC limit 10

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 3. Media de lineas por pedido

-- COMMAND ----------

SELECT 
  AVG(L_LINENUMBER) AS LINENUMBER
FROM LINEITEM

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 4. Media de lineas por pedido según modo de envio

-- COMMAND ----------

SELECT 
  AVG(L_LINENUMBER) AS LINENUMBER
  , L_SHIPMODE
FROM LINEITEM
GROUP BY L_SHIPMODE

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 5. Media de lineas por pedido cada mes

-- COMMAND ----------

SELECT 
  AVG(L_LINENUMBER) AS LINENUMBER
  , MONTH(L_COMMITDATE) AS MONTH
FROM LINEITEM
GROUP BY MONTH(L_COMMITDATE)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 1. Número de proveedor por pais

-- COMMAND ----------

SELECT S_NATIONKEY AS NUM_PROV
  , N_NAME AS NOMBRE
FROM SUPPLIER
JOIN NATION
ON S_NATIONKEY = N_NATIONKEY
