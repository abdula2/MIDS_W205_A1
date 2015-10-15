tail -n +2 /root/Hospital_Revised_Flatfiles/Timely\ and\ Effective\ Care\ -\ Hospital.csv > /data/effective_care.csv
tail -n +2 /root/Hospital_Revised_Flatfiles/Measure\ Dates.csv > /data/measure_dates.csv
tail -n +2 /root/Hospital_Revised_Flatfiles/hvbp_hcahps_05_28_2015.csv > /data/surveys_responses.csv
tail -n +2 /root/Hospital_Revised_Flatfiles/Hospital\ General\ Information.csv > /data/hospitals.csv
tail -n +2 /root/Hospital_Revised_Flatfiles/Readmissions\ and\ Deaths\ -\ Hospital.csv  > /data/readmissions.csv

sudo -u hdfs hdfs dfs -put /data/hospitals.csv /data/w205/hospitalcompare/hospital/hospitals
sudo -u hdfs hdfs dfs -put /data/measure_dates.csv /data/w205/hospitalcompare/measuredates/measure_dates
sudo -u hdfs hdfs dfs -put /data/surveys_responses.csv /data/w205/hospitalcompare/surveyresponses/surveys_responses
sudo -u hdfs hdfs dfs -put /data/effective_care.csv /data/w205/hospitalcompare/effectivecare/effective_care
sudo -u hdfs hdfs dfs -put /data/readmissions.csv /data/w205/hospitalcompare/readmissions/readmissions
