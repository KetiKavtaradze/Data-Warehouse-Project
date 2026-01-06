--Create database 'Data Warehouse'
use master;

if exists (select 1 from sys.databases where name='DataWarehouse')
begin
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
end

create database DataWarehouse;

use DataWarehouse;
-- create schemas according to layers
create schema bronze;
create schema silver;
create schema gold;
