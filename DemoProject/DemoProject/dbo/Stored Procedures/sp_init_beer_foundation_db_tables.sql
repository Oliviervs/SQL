-- =============================================
-- Author:		Van Steenlandt Olivier
-- Create date: 2018-07-08
-- Description:	Initialize Database
-- =============================================
CREATE PROCEDURE [dbo].[sp_init_beer_foundation_db_tables]
	-- Add the parameters for the stored procedure here

AS
BEGIN

	SET NOCOUNT ON;

	DROP TABLE IF EXISTS dbo.Supplier
	DROP TABLE IF EXISTS dbo.Product

	CREATE TABLE dbo.Supplier(
		SupplierID INT IDENTITY(1,1),
		SupplierName VARCHAR(50) NOT NULL,
		DateCreated DATETIME2(3) NOT NULL,
		DateModified DATETIME2(3) NULL
	) ON BeerFoundation;

	ALTER TABLE dbo.Supplier
		ADD CONSTRAINT PK_Supplier_SupplierID PRIMARY KEY (SupplierID);

	ALTER TABLE dbo.Supplier
		ADD CONSTRAINT DF_Supplier_DateCreated DEFAULT (GETDATE()) FOR DateCreated;

	CREATE TABLE dbo.Product(
		ProductID INT IDENTITY(1,1),
		ProductName VARCHAR(50) NOT NULL,
		SupplierID INT NOT NULL,
		DateCreated DATETIME2(3) NOT NULL,
		DateModified DATETIME2(3) NULL
	) ON BeerFoundation;

	ALTER TABLE dbo.Product
		ADD CONSTRAINT PK_Product_ProductID PRIMARY KEY (ProductID);

	ALTER TABLE dbo.Product
		ADD CONSTRAINT DF_Product_DateCreated DEFAULT (GETDATE()) FOR DateCreated;

END