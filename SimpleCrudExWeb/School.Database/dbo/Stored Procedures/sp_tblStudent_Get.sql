CREATE PROCEDURE [dbo].[sp_tblStudent_Get] 
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	SELECT s.ID, s.StudFirstName ,s.StudLastName, s.StudMiddleName,d.ID as DepartmentID, d.DepartmentCode, d.DepartmentDescription
	FROM		tbl_Student s INNER JOIN tbl_Department d ON(s.DepartmentID = d.ID)
END