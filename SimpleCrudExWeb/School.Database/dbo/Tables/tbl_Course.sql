CREATE TABLE [dbo].[tbl_Course] (
    [ID]                INT          IDENTITY (1, 1) NOT NULL,
    [CourseNumber]      VARCHAR (50) NULL,
    [CourseName]        VARCHAR (50) NULL,
    [CourseDescription] VARCHAR (50) NULL,
    [Credits]           INT          NULL,
    [DepartmentID]      INT          NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

