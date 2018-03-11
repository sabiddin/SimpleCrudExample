-- =============================================
-- Author:		<Author: Syed Abiddin>
-- Create date: <Create Date: 2/12/2018>
-- Description:	<Description: This proc selects data from tbl_Course>
-- =============================================
CREATE PROCEDURE [dbo].[sp_tblCourse_Get] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	SELECT c.ID,c.CourseNumber ,c.CourseName, c.CourseDescription, c.Credits,d.DepartmentCode, d.DepartmentDescription
	FROM		tbl_Course c INNER JOIN tbl_Department d ON(c.DepartmentID = d.ID)
END