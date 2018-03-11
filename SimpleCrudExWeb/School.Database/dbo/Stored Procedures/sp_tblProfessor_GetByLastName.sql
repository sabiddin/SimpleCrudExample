CREATE PROCEDURE [dbo].[sp_tblProfessor_GetByLastName] 
	-- Add the parameters for the stored procedure here
	@ProfLastName VARCHAR(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	SELECT p.ID,p.ProfFirstName ,p.ProfLastName, p.ProfMiddleName,d.ID as DepartmentID, d.DepartmentCode, d.DepartmentDescription
	FROM		tbl_Professor p INNER JOIN tbl_Department d ON(p.DepartmentID = d.ID)
	WHERE p.ProfLastName like  '%' +@ProfLastName+'%'
END