CREATE TABLE [dbo].[tbl_Student] (
    [ID]             INT          IDENTITY (1, 1) NOT NULL,
    [StudFirstName]  VARCHAR (50) NULL,
    [StudLastName]   VARCHAR (50) NULL,
    [StudMiddleName] VARCHAR (50) NULL,
    [DepartmentID]   INT          NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

