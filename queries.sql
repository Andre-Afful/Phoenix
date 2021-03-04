Go
create view bd_safdi_in_details as
SELECT *
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
And TABLE_NAME in ('Items','SellOut','SellIn','Retailer','PurchaseOrders',
'PurchaseOrdersUsed','Prediction','ProductsDisplayedTmp','ProductsDisplayed')
Go

 

Go
create view vw_column_count as
SELECT COUNT(*)number_of_columns
  FROM INFORMATION_SCHEMA.COLUMNS
 WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
 And TABLE_NAME in ('Items','SellOut','SellIn','Retailer','PurchaseOrders',
'PurchaseOrdersUsed','Prediction','ProductsDisplayedTmp','ProductsDisplayed')
 Go

 

 Go
 create view num_of_cols_in_tables as
 SELECT TABLE_NAME, 
    count(COLUMN_NAME)as number_of_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
And TABLE_NAME in ('Items','SellOut','SellIn','Retailer','PurchaseOrders',
'PurchaseOrdersUsed','Prediction','ProductsDisplayedTmp','ProductsDisplayed')
 group by TABLE_NAME
 Go

 

Go
create view vw_num_of_distinct_datatypes as
 SELECT TABLE_NAME, count (distinct DATA_TYPE)as num_of_distinct_datatypes
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
And TABLE_NAME in ('Items','SellOut','SellIn','Retailer','PurchaseOrders',
'PurchaseOrdersUsed','Prediction','ProductsDisplayedTmp','ProductsDisplayed')
GROUP BY TABLE_NAME
Go

 

GO
CREATE VIEW number_of_tables as
SELECT COUNT(*)number_of_TABLES
  FROM INFORMATION_SCHEMA.TABLES
 WHERE table_catalog = 'bd_safdi_ods_engine_dashboard'
 And TABLE_NAME in ('Items','SellOut','SellIn','Retailer','PurchaseOrders',
'PurchaseOrdersUsed','Prediction','ProductsDisplayedTmp','ProductsDisplayed')
GO