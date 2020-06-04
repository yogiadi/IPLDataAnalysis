CREATE EXTERNAL TABLE `matches`(
  `id` bigint, 
  `season` bigint, 
  `city` string, 
  `date` string, 
  `team1` string, 
  `team2` string, 
  `toss_winner` string, 
  `toss_decision` string, 
  `result` string, 
  `dl_applied` bigint, 
  `winner` string, 
  `win_by_runs` bigint, 
  `win_by_wickets` bigint, 
  `player_of_match` string, 
  `venue` string, 
  `umpire1` string, 
  `umpire2` string, 
  `umpire3` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://yogiadibucket/IPLData/matches/'
TBLPROPERTIES (
  'CrawlerSchemaDeserializerVersion'='1.0', 
  'CrawlerSchemaSerializerVersion'='1.0', 
  'UPDATED_BY_CRAWLER'='IPL', 
  'areColumnsQuoted'='false', 
  'averageRecordSize'='191', 
  'classification'='csv', 
  'columnsOrdered'='true', 
  'compressionType'='none', 
  'delimiter'=',', 
  'objectCount'='1', 
  'recordCount'='613', 
  'sizeKey'='117096', 
  'skip.header.line.count'='1', 
  'typeOfData'='file')
