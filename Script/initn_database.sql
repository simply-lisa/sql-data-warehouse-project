/*
============================================================================
CREATING DATABASE AND SCHEMAS
============================================================================
This script creates a new database called 'DataWarehouse' after initially checking if it exists.
If it exists, it is dropped and recreated. The script also creates three schemas within the database 
namely 'bronze','silver', and 'gold'

WARNING:
Backups should be used to preserve data as the database "DataWarehouse", including all saved data 
would be deleted if it exists.
*/


USE master;
GO

-- DROP and RECREATE Database if necessary
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO


-- CREATE Database 'DataWarehouse'


CREATE DATABASE DataWarehouse;





-- CREATE SCHEMAS FOR EACH LAYER

 USE DataWarehouse;

 CREATE SCHEMA bronze;
 
 CREATE SCHEMA silver;

 CREATE SCHEMA gold;

-- SHOW EXISTING SCHEMAS

SELECT name
FROM sys.schemas;


