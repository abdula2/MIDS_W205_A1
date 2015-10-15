from pyspark.sql import HiveContext
sqlContext = HiveContext(sc)
sqlContext.sql('create table effective_trans as select provider_id,measureid,(score/sample) as norm_score from effectivecare_raw_new')
sqlContext.sql('create table readmissions_trans as select provider_id,measureid,(score/denominator) as norm_score from readmissions_raw_new')
sqlContext.sql('create table procedures_trans as select * from readmissions_trans union all select * from effective_trans')
sqlContext.sql('create table hospitals_trans as select distinct provider_id,hospital_name,address,city,state,zip from hospital_raw_new')
sqlContext.sql('create table survey_trans as select provider_id,hcahps_base_score,hcahps_cons_score,(hcahps_base_score+hcahps_cons_score) as total_score from survery_response_raw_new')
sqlContext.sql('create table measures_trans as select measureid,measurename from measuredates_raw_new')
