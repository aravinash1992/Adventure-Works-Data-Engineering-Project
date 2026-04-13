CREATE MASTER KEY  ENCRYPTION BY PASSWORD ='KNightghost236$@' ;

CREATE DATABASE SCOPED CREDENTIAL cred_avi
WITH
    IDENTITY='Managed Identity'
;

CREATE EXTERNAL DATA SOURCE source_sliver
WITH
(
    LOCATION ='https://aviawstoragedatalake.dfs.core.windows.net/silver',
    CREDENTIAL = cred_avi
)
;


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION ='https://aviawstoragedatalake.dfs.core.windows.net/gold',
    CREDENTIAL = cred_avi
)
;


CREATE EXTERNAL FILE FORMAT format_parqueyt
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)
;