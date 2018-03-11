CREATE PROCEDURE [dbo].[sp_tblStudent_Update]
 
	-- Add the parameters for the stored procedure here	
    @ID int,	
    @StudFirstName      VARCHAR (50) NULL,
    @StudLastName        VARCHAR (50) NULL,
    @StudMiddleName VARCHAR (50) NULL,    
    @DepartmentID      INT          NULL  
AS

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	UPDATE tbl_Student SET StudFirstName = @StudFirstName ,
						  StudLastName = @StudLastName,
						  StudMiddleName= @StudMiddleName, 						  
						  DepartmentID = @DepartmentID
	WHERE ID= @ID;
		
END