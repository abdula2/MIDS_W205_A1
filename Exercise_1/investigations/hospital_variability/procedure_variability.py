from pyspark.sql import HiveContext
sqlContext = HiveContext(sc)
results=sqlContext.sql('select ms.measurename, variance(ps.norm_score) as score_variance from procedures_trans ps join measures_trans ms  on ms.measureid=ps.measureid group by ms.measurename order by score_variance desc')