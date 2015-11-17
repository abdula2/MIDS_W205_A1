from pyspark.sql import HiveContext
sqlContext = HiveContext(sc)
results=sqlContext.sql('select hos.hospital_name,hos.provider_id, avg(ps.norm_score) as average_score, sum(ps.norm_score)as aggregate_score from procedures_trans ps join hospitals_trans hos  on hos.provider_id=ps.provider_id group by hos.hospital_name,hos.provider_id order by average_score desc')
results.show()
