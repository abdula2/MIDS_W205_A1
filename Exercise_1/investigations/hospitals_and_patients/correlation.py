from pyspark.sql import HiveContext
sqlContext = HiveContext(sc)
sqlContext.sql('create table correlation as select hos.hospital_name,hos.provider_id, avg(ps.norm_score) as norm_score,avg(surv.total_score) as survey_score from survey_trans surv join hospitals_trans hos  on hos.provider_id=surv.provider_id  join procedures_trans ps  on hos.provider_id=ps.provider_id group by hos.hospital_name,hos.provider_id')
results=sqlContext.sql('select corr(norm_score,survey_score) as correlatn from correlation')

