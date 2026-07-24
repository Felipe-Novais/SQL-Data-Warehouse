/*
This script will create the Data Warehouse database and its three schemas (bronze, silver, gold)

WARNING: By running this script, should a database named 'DataWarehouse' exist, it will be immediately dropped along
with all the content inside and will be replaced by an empty database, also named DataWarehouse.
*/

-- Switch to master database
USE master;
GO

-- Check if database already exists
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO

-- Create DataWarehouse database and set it as active
CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO