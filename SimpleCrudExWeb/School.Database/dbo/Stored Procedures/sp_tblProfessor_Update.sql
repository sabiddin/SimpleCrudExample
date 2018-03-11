CREATE PROCEDURE [dbo].[sp_tblProfessor_Update]
 
	-- Add the parameters for the stored procedure here	
    @ID int,	
    @ProfFirstName      VARCHAR (50) NULL,
    @ProfLastName        VARCHAR (50) NULL,
    @ProfMiddleName VARCHAR (50) NULL,    
    @DepartmentID      INT          NULL  
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	UPDATE tbl_Professor SET ProfFirstName = @ProfFirstName ,
						  ProfLastName = @ProfLastName,
						  ProfMiddleName= @ProfMiddleName, 						  
						  DepartmentID = @DepartmentID
	WHERE ID= @ID;
		
END