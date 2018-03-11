
CREATE PROCEDURE [dbo].[sp_tblProfessor_Delete]
 
	-- Add the parameters for the stored procedure here	
    @ID int
AS	

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	DELETE FROM tbl_Professor 	
	WHERE ID= @ID;
		
END