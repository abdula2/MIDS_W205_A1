from pyspark.sql import HiveContext
sqlContext = HiveContext(sc)
results=sqlContext.sql('select hos.state, count(distinct hos.provider_id) as hospital_count,avg(ps.norm_score) as average_score, sum(ps.norm_score)as aggregate_score from procedures_trans ps join hospitals_trans hos  on hos.provider_id=ps.provider_id group by hos.state order by average_score desc')
results.show()