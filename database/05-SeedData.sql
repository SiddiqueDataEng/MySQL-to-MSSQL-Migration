/*
 * MySQL to MSSQL Migration
 * Sample Data
 * SQL Server 2008/2012
 */

USE MigrationDB2;
GO

-- Insert sample records
INSERT INTO dbo.MainRecords (RecordCode, RecordName, Description, CreatedBy)
VALUES
('REC001', 'Sample Record 1', 'First sample record for MySQL-to-MSSQL-Migration', 'admin'),
('REC002', 'Sample Record 2', 'Second sample record for MySQL-to-MSSQL-Migration', 'admin'),
('REC003', 'Sample Record 3', 'Third sample record for MySQL-to-MSSQL-Migration', 'admin');

PRINT 'Sample data inserted successfully';
PRINT 'Total records: ' + CAST(@@ROWCOUNT AS VARCHAR(10));
GO
