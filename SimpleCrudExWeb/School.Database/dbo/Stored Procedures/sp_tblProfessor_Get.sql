CREATE PROCEDURE [dbo].[sp_tblProfessor_Get] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	SELECT p.ID, p.ProfFirstName ,p.ProfLastName, p.ProfMiddleName,d.ID as DepartmentID, d.DepartmentCode, d.DepartmentDescription
	FROM		tbl_Professor p INNER JOIN tbl_Department d ON(p.DepartmentID = d.ID)
END