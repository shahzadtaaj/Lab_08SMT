-- Database and Table Setup Script for Lab8_repo_design_SMT
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'BMS_DB')
BEGIN
    CREATE DATABASE BMS_DB;
END
GO

USE BMS_DB;
GO

IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = N'products' AND type = 'U')
BEGIN
    CREATE TABLE dbo.products (
        Id INT IDENTITY(1,1) PRIMARY KEY,
        Title VARCHAR(50) NOT NULL,
        [description] VARCHAR(50) NOT NULL,
        [image] VARCHAR(255) NOT NULL,
        price INT NOT NULL,
        quantity INT NOT NULL,
        [status] VARCHAR(20) NOT NULL CONSTRAINT DF_products_status DEFAULT 'A'
    );
END
GO
