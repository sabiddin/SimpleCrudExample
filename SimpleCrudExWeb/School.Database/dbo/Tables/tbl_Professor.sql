CREATE TABLE [dbo].[tbl_Professor] (
    [ID]             INT          IDENTITY (1, 1) NOT NULL,
    [ProfFirstName]  VARCHAR (50) NULL,
    [ProfLastName]   VARCHAR (50) NULL,
    [ProfMiddleName] VARCHAR (50) NULL,
    [DepartmentID]   INT          NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

