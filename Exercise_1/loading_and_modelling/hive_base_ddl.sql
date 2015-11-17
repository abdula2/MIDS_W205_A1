CREATE EXTERNAL TABLE hospital_raw_new(
  provider_id varchar(500),
  hospital_name varchar(500),
  address varchar(500),
  city varchar(500),
  state varchar(500),
  zip varchar(500),
  county varchar(500),
  phone varchar(500),
  hospital_type varchar(500),
  hospital_ownership varchar(500),
  emergency_services varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\"
 ) 
STORED AS TEXTFILE
LOCATION '/data/w205/hospitalcompare/hospital';

CREATE EXTERNAL TABLE effectivecare_raw_new(
  provider_id varchar(500),
  hospital_name varchar(500),
  address varchar(500),
  city varchar(500),
  state varchar(500),
  zip varchar(500),
  county varchar(500),
  phone varchar(500),
  condition varchar(500),
  measureid varchar(500),
  measurename varchar(500),
  score int,
  sample varchar(500),
  footnot varchar(500),
  measure_start_date varchar(500),
  measure_stop_date varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\"
 ) 
STORED AS TEXTFILE
LOCATION '/data/w205/hospitalcompare/effectivecare';


CREATE EXTERNAL TABLE measuredates_raw_new(
  measurename varchar(500),
  measureid varchar(500),
  measurestartquarter varchar(500),
  measure_start_date varchar(500),
  measureendquarter varchar(500),
  measure_stop_date varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\"
 ) 
STORED AS TEXTFILE
LOCATION '/data/w205/hospitalcompare/measuredates';

CREATE EXTERNAL TABLE readmissions_raw_new(
  provider_id varchar(500),
  hospital_name varchar(500),
  address varchar(500),
  city varchar(500),
  state varchar(500),
  zip varchar(500),
  county varchar(500),
  phone varchar(500),
  measurename varchar(500),
  measureid varchar(500),
  compared varchar(500),
  denominator varchar(500),
  score int,
  lower_estimate float,
  higher_estimate float,
  footnote varchar(500),
  measure_start_date varchar(500),
  measure_stop_date varchar(500))
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\"
 ) 
STORED AS TEXTFILE
LOCATION '/data/w205/hospitalcompare/readmissions;


CREATE EXTERNAL TABLE survery_response_raw_new(
  provider_id varchar(500),
  hospital_name varchar(500),
  address varchar(500),
  city varchar(500),
  state varchar(500),
 zip varchar(500),
  county varchar(500),
  com_nurse1 varchar(500),
  com_nurse2 varchar(500),
  com_nurse3 varchar(500),
  com_doc1 varchar(500),
  com_doc2 varchar(500),
  com_doc3 varchar(500),
  com_staff1 varchar(500),
  om_staff2 varchar(500),
  com1_temp varchar(500),
  com2_temp varchar(500),
  com_staff3 varchar(500),
  com_pain1 varchar(500),
  com_pain2 varchar(500),
  com_pain3 varchar(500),
  com_med1 varchar(500),
  om_med2 varchar(500),
  com_med3 varchar(500),
  clean_1 varchar(500),
  clean_2 varchar(500),
  clean_3 varchar(500),
  disc_1 varchar(500),
  disc_2 varchar(500),
  disc_3 varchar(500),
  overall varchar(500),
  hcahps_base_score int,
  hcahps_cons_score int)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
with serdeproperties (
  "separatorChar" = ",",
  "quoteChar"     = "\"",
  "escapeChar"    = "\\"
 ) 
STORED AS TEXTFILE
LOCATION '/data/w205/hospitalcompare/surveyresponses';
