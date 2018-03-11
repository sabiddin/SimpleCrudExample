-- =============================================
-- Author:		<Author: Syed Abiddin>
-- Create date: <Create Date: 2/12/2018>
-- Description:	<Description: This proc selects data from tbl_Course by the provided ID>
-- =============================================
CREATE PROCEDURE sp_tblCourse_GetByID 
	-- Add the parameters for the stored procedure here
	@ID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	SELECT ID,CourseNumber ,CourseName, CourseDescription, Credits
	FROM		tbl_Course WHERE ID=@ID
END
