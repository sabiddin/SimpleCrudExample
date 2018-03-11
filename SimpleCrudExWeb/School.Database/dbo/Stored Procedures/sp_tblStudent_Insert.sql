CREATE PROCEDURE [dbo].[sp_tblStudent_Insert] 
	-- Add the parameters for the stored procedure here    
    @StudFirstName      VARCHAR (50) NULL,
    @StudLastName        VARCHAR (50) NULL,
    @StudMiddleName VARCHAR (50) NULL,    
    @DepartmentID      INT          NULL    
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;    
	INSERT INTO 
			tbl_Student(StudFirstName, StudLastName, StudMiddleName, DepartmentID)
	VALUES
						 (@StudFirstName ,@StudLastName, @StudMiddleName, @DepartmentID)
END