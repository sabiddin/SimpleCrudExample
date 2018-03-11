-- =============================================
-- Author:		<Author: Syed Abiddin>
-- Create date: <Create Date: 2/12/2018>
-- Description:	<Description: This proc inserts data into tbl_Course>
-- =============================================
CREATE PROCEDURE [dbo].[sp_tblCourse_Insert] 
	-- Add the parameters for the stored procedure here
@CourseNumber VARCHAR(50),
@CourseName VARCHAR(50),
@CourseDescription VARCHAR(50),
@Credits int,
@DepartmentID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	INSERT INTO 
			tbl_Course(CourseNumber ,CourseName, CourseDescription, Credits,DepartmentID)
	VALUES
					(@CourseNumber ,@CourseName, @CourseDescription,@Credits, @DepartmentID)
END
