CREATE TABLE [dbo].[Product] (
    [ProductID]    INT           IDENTITY (1, 1) NOT NULL,
    [ProductName]  VARCHAR (50)  NOT NULL,
    [SupplierID]   INT           NOT NULL,
    [DateCreated]  DATETIME2 (3) CONSTRAINT [DF_Product_DateCreated] DEFAULT (getdate()) NOT NULL,
    [DateModified] DATETIME2 (3) NULL,
    CONSTRAINT [PK_Product_ProductID] PRIMARY KEY CLUSTERED ([ProductID] ASC)
);

