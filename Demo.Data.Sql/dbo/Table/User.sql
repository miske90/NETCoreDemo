CREATE TABLE [dbo].[User]
(
	[Id] bigINT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [Username] NVARCHAR(50) NOT NULL, 
    [Password] NVARCHAR(200) NOT NULL, 
    [Name] NVARCHAR(250) NOT NULL, 
    [Archived] BIT NOT NULL DEFAULT 0, 
    [RoleId] BIGINT NOT NULL, 
    CONSTRAINT [FK_User_Role] FOREIGN KEY ([RoleId]) REFERENCES [Role]([Id])
)
