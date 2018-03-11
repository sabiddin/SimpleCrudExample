CREATE PROCEDURE [dbo].[sp_tblProfessor_Insert] 
	-- Add the parameters for the stored procedure here    
    @ProfFirstName      VARCHAR (50) NULL,
    @ProfLastName        VARCHAR (50) NULL,
    @ProfMiddleName VARCHAR (50) NULL,    
    @DepartmentID      INT          NULL    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	INSERT INTO 
			tbl_Professor(ProfFirstName, ProfLastName, ProfMiddleName, DepartmentID)
	VALUES
						 (@ProfFirstName ,@ProfLastName, @ProfMiddleName, @DepartmentID)
END