/*
 * MySQL to MSSQL Migration
 * Project #62 - Complete Database Implementation
 * SQL Server 2008/2012
 * Technology: SSIS, T-SQL
 * Created: 2011
 */

USE master;
GO

IF EXISTS (SELECT name FROM sys.databases WHERE name = 'MigrationDB2')
BEGIN
    ALTER DATABASE MigrationDB2 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE MigrationDB2;
END
GO

CREATE DATABASE MigrationDB2
ON PRIMARY
(
    NAME = 'MigrationDB2_Data',
    FILENAME = 'C:\SQLData\MigrationDB2_Data.mdf',
    SIZE = 100MB,
    MAXSIZE = 5GB,
    FILEGROWTH = 10MB
)
LOG ON
(
    NAME = 'MigrationDB2_Log',
    FILENAME = 'C:\SQLData\MigrationDB2_Log.ldf',
    SIZE = 50MB,
    MAXSIZE = 1GB,
    FILEGROWTH = 5MB
);
GO

ALTER DATABASE MigrationDB2 SET RECOVERY SIMPLE;
ALTER DATABASE MigrationDB2 SET AUTO_UPDATE_STATISTICS ON;
GO

USE MigrationDB2;
GO

PRINT 'Database MigrationDB2 created successfully';
PRINT 'Project: MySQL to MSSQL Migration';
PRINT 'Description: Schema conversion and data migration';
GO
