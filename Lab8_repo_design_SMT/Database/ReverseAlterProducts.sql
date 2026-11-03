USE BMS_DB;
GO

-- Reverse the schema changes - revert description back to VARCHAR(50)
ALTER TABLE dbo.products
ALTER COLUMN [description] VARCHAR(50) NOT NULL;
GO

-- Revert status back to original size if needed
-- If your original was different, adjust accordingly
-- ALTER TABLE dbo.products
-- ALTER COLUMN [status] VARCHAR(10) NOT NULL;
GO
