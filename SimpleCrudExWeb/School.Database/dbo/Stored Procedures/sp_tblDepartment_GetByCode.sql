-- =============================================
-- Author:		<Author: Syed Abiddin>
-- Create date: <Create Date: 2/12/2018>
-- Description:	<Description: This proc selects data from tbl_Course>
-- =============================================
CREATE PROCEDURE [dbo].[sp_tblDepartment_GetByCode] 
	-- Add the parameters for the stored procedure here
	@Code varchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	SELECT ID,DepartmentCode, DepartmentDescription
	FROM		tbl_Department
	WHERE DepartmentCode LIKE '%' +@Code+'%'
	ORDER BY DepartmentCode ASC;
END