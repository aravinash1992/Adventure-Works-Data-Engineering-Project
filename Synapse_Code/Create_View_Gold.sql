-----------------------
--CREATE VIEW CALENDAR
-----------------------
CREATE VIEW GOLD.CALENDAR
AS
SELECT 
    * 
FROM
    OPENROWSET(
                BULK 'https://aviawstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
                FORMAT = 'PARQUET'
    )as query1;


-----------------------
--CREATE VIEW CUSTOMERS
-----------------------

CREATE VIEW GOLD.CUSTOMERS
AS
SELECT 
    * 
FROM
    OPENROWSET(
                BULK 'https://aviawstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Customers/',
                FORMAT = 'PARQUET'
    )as query1;

-----------------------
--CREATE VIEW PRODUCT SUBCATEGORIES
-----------------------

CREATE VIEW GOLD.PRODUCT_SUBCATEGORIES
AS
SELECT 
    * 
FROM
    OPENROWSET(
                BULK 'https://aviawstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
                FORMAT = 'PARQUET'
    )as query1;
	

-----------------------
--CREATE VIEW PRODUCTS
-----------------------

CREATE VIEW GOLD.PRODUCTS
AS
SELECT 
    * 
FROM
    OPENROWSET(
                BULK 'https://aviawstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Products/',
                FORMAT = 'PARQUET'
    )as query1;
	

-----------------------
--CREATE VIEW RETURNS
-----------------------

CREATE VIEW GOLD.RETURNS
AS
SELECT 
    * 
FROM
    OPENROWSET(
                BULK 'https://aviawstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Returns/',
                FORMAT = 'PARQUET'
    )as query1;
	

-----------------------
--CREATE VIEW SALES
-----------------------

CREATE VIEW GOLD.SALES
AS
SELECT 
    * 
FROM
    OPENROWSET(
                BULK 'https://aviawstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Sales/',
                FORMAT = 'PARQUET'
    )as query1;
	
	

-----------------------
--CREATE VIEW TERRITORIES
-----------------------

CREATE VIEW GOLD.TERRITORIES
AS
SELECT 
    * 
FROM
    OPENROWSET(
                BULK 'https://aviawstoragedatalake.dfs.core.windows.net/silver/AdventureWorks_Territories/',
                FORMAT = 'PARQUET'
    )as query1;