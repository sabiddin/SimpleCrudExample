CREATE PROCEDURE [dbo].[sp_tblStudent_Delete]
 
	-- Add the parameters for the stored procedure here	
    @ID int
AS	

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	DELETE FROM tbl_Student 	
	WHERE ID= @ID;
		
END