CREATE TABLE [dbo].[tbl_Department] (
    [ID]                    INT          IDENTITY (1, 1) NOT NULL,
    [DepartmentCode]        VARCHAR (3)  NULL,
    [DepartmentDescription] VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

