USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[AddPersonAsEmployee]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Samuel Tomczyk
-- Create date: 2017-01-09
-- Description:	Procedures for adding new person as employee. 
-- If PersonID passed, adds only to ClientEmployees. 
-- Otherwise creates a new Person.
-- =============================================
CREATE PROCEDURE [dbo].[AddPersonAsEmployee] 
	-- Add the parameters for the stored procedure here
	@FirstName varchar(20) = 0,
	@LastName varchar(20) = 0,
	@Email varchar (50),
	@PersonID int = null,
	@ClientID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @PersonID is null
	begin
	exec AddPerson @FirstName, @LastName, @Email
	set @PersonID = SCOPE_IDENTITY()
	end
	INSERT INTO ClientEmployees
	values (@PersonID, @ClientID)
END

GO
