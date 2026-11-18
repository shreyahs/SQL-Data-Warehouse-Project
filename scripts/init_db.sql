/*Initializing the database 

This script creates a new database 'DataWarehouse' after checking if it already exists. If it exists, I have set it to use the existing database . 
Additionally the script creates three schemas bronze, silver and gold 

WARNING:
Running this script will create the DataWarehouse database if it does not already exist. If the database already exists, the script will use the existing database and create the schema structure within it.

If this is not intended, ensure you either use a different database name or drop the existing database before running the script to create a new one.

*/

USE master;
GO

IF NOT EXISTS (
    SELECT 1
    from sys.databases
    where name = 'DataWarehouse'
)

BEGIN 
CREATE DATABASE DataWarehouse;
END;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO

/*Notes
-- master is a system database that SQL Server automatically creates when you install or initialize a SQL Server instance
-- (semicolon) marks the end of a SQL statement.
-- GO marks the end of a batch of SQL statements.

in order to drop datbase if exists, can use below sql statemnts

*ALTER DATABASE DataWarehouse
SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE DataWarehouse;
GO*

*/
