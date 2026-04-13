------------------------------
--Create External Table---
------------------------------

CREATE EXTERNAL TABLE GOLD.EXTSALES
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parqueyt
)
AS
SELECT * FROM GOLD.SALES;


SELECT * FROM GOLD.EXTSALES;