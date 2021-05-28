CREATE TABLE [dbo].[infor]
(
	[Id] INT NOT NULL IDENTITY(100, 1) , 
    [name] NVARCHAR(50) NOT NULL, 
    [contactno] NVARCHAR(50) NOT NULL, 
    [address] NVARCHAR(MAX) NOT NULL, 
    [datetime] NVARCHAR(50) NOT NULL, 
    PRIMARY KEY ([datetime])
)
