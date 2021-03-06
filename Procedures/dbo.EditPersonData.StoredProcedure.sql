USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[EditPersonData]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jakub Wilkosz
-- Create date: 2017-01-09
-- Description:	Procedures for adding new student
-- =============================================
create PROCEDURE [dbo].[EditPersonData] 
	-- Add the parameters for the stored procedure here
	@PersonID int, 
	@Name varchar(20) = null,
	@Surname varchar(20) = null,
	@Email varchar(20) = null
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @Name is not null
	begin
	update Persons
	set Name = @Name
	where PersonID = @PersonID
	end

	if @Surname is not null
	begin
	update Persons
	set Surname = @Surname
	where PersonID = @PersonID
	end

	if @Email is not null
	begin
	update Persons
	set Email = @Email
	where PersonID = @PersonID
	end

END

GO
