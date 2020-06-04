CREATE EXTERNAL TABLE `deliveries`(
  `match_id` bigint, 
  `inning` bigint, 
  `batting_team` string, 
  `bowling_team` string, 
  `over` bigint, 
  `ball` bigint, 
  `batsman` string, 
  `non_striker` string, 
  `bowler` string, 
  `is_super_over` bigint, 
  `wide_runs` bigint, 
  `bye_runs` bigint, 
  `legbye_runs` bigint, 
  `noball_runs` bigint, 
  `penalty_runs` bigint, 
  `batsman_runs` bigint, 
  `extra_runs` bigint, 
  `total_runs` bigint, 
  `player_dismissed` string, 
  `dismissal_kind` string, 
  `fielder` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://yogiadibucket/IPLData/deliveries/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='IPL', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='143', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='107987', 
  'sizeKey'='15442270', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
