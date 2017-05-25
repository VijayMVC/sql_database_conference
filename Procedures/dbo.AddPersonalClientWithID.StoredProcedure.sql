USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[AddPersonalClientWithID]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Jakub Wilkosz
-- Create date: 2017/01/10
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[AddPersonalClientWithID] 
	-- Add the parameters for the stored procedure here
	@Phone varchar(15),
	@PersonID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO Clients (Phone)
	values (@Phone)
	declare @id int = SCOPE_IDENTITY()
	
	Insert into PersonalClients (ClientID, PersonID)
	values (@id, @PersonID)
	
END

GO
