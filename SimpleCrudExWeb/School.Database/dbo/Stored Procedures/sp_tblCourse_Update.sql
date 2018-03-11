-- =============================================
-- Author:		<Author: Syed Abiddin>
-- Create date: <Create Date: 2/12/2018>
-- Description:	<Description: This proc selects data from tbl_Course>
-- =============================================
CREATE PROCEDURE [dbo].[sp_tblCourse_Update]
 
	-- Add the parameters for the stored procedure here	
    @ID int,
	@CourseNumber varchar(50),
	@CourseName varchar(50), 
	@CourseDescription varchar(50), 
	@Credits int,
	@DepartmentID int
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	UPDATE tbl_Course SET CourseNumber = @CourseNumber ,
						  CourseName = @CourseName,
						  CourseDescription= @CourseDescription, 
						  Credits = @Credits,
						  DepartmentID = @DepartmentID
	WHERE ID= @ID;
		
END