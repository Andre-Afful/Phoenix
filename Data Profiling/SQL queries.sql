/* NOTE: THE INFORMATION SCHEMA is a table 
that contains all the information about each database in the system*/ 
 
-- Displays all the information about the safdi database
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_catalog = 'bd_safdi_ods_engine_dashboard' -- the name of the database
  
-- Total Number of columns within the safdi engine
SELECT COUNT(*)
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
 
 
--List of tables in bd_safdi_ods_engine_dashboard and their respective number of columns
SELECT TABLE_NAME, 
    count(COLUMN_NAME)as number_of_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
 group by TABLE_NAME


-- Columns under Retailer and their respective Data types
SELECT COLUMN_NAME,DATA_TYPE
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
 AND TABLE_NAME='Retailer'

 -- Columns under Items and their respective Data types
 SELECT COLUMN_NAME,DATA_TYPE
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
 AND TABLE_NAME='Items'