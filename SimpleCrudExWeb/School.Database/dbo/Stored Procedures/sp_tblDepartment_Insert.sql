-- =============================================
-- Author:		<Author: Syed Abiddin>
-- Create date: <Create Date: 2/12/2018>
-- Description:	<Description: This proc inserts data into tbl_Course>
-- =============================================
CREATE PROCEDURE [dbo].[sp_tblDepartment_Insert] 
	-- Add the parameters for the stored procedure here
@DepartmentCode VARCHAR(3),
@DepartmentDescription VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	INSERT INTO 
			tbl_Department(DepartmentCode ,DepartmentDescription)
	VALUES
					(@DepartmentCode ,@DepartmentDescription);
END