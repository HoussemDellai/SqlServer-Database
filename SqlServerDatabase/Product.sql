DROP TABLE [dbo].[Product];


CREATE TABLE [dbo].[Product]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NULL, 
    [Cost] INT NULL, 
    [Color] NVARCHAR(50) NULL,
    [Size] VARCHAR(50) NOT NULL
)
