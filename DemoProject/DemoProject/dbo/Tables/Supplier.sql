CREATE TABLE [dbo].[Supplier] (
    [SupplierID]   INT           IDENTITY (1, 1) NOT NULL,
    [SupplierName] VARCHAR (50)  NOT NULL,
    [DateCreated]  DATETIME2 (3) CONSTRAINT [DF_Supplier_DateCreated] DEFAULT (getdate()) NOT NULL,
    [DateModified] DATETIME2 (3) NULL,
    CONSTRAINT [PK_Supplier_SupplierID] PRIMARY KEY CLUSTERED ([SupplierID] ASC)
);

