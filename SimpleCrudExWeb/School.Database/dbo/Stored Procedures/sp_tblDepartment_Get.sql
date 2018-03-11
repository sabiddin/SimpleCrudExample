-- =============================================
-- Author:		<Author: Syed Abiddin>
-- Create date: <Create Date: 2/12/2018>
-- Description:	<Description: This proc selects data from tbl_Course>
-- =============================================
CREATE PROCEDURE [dbo].[sp_tblDepartment_Get] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	-- Select ID,Department Code and Department Description from the 
	-- Departments table.
	SELECT ID,DepartmentCode, DepartmentDescription
	FROM		tbl_Department
	ORDER BY ID ASC;
END