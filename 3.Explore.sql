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
  
FROM LINEITEM
GROUP BY L_ORDERKEY

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 2. Top10 pedidos con mayor precio ordenados de mayor precio a menor

-- COMMAND ----------

SELECT 

FROM LINEITEM


-- COMMAND ----------

-- MAGIC %md
-- MAGIC 3. Media de lineas por pedido

-- COMMAND ----------

SELECT 

FROM LINEITEM

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 4. Media de lineas por pedido según modo de envio

-- COMMAND ----------

SELECT 

FROM LINEITEM

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 5. Media de lineas por pedido cada mes

-- COMMAND ----------

SELECT 
FROM LINEITEM

-- COMMAND ----------

-- MAGIC %md
-- MAGIC 1. Número de proveedor por pais

-- COMMAND ----------

SELECT
FROM SUPPLIER
JOIN NATION

