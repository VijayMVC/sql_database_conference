USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[reseed]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[reseed]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	dbcc CHECKIDENT ('Persons', reseed, 0);
	dbcc CHECKIDENT ('Clients', reseed, 0);
	dbcc CHECKIDENT ('Workshops', reseed, 0);
	dbcc CHECKIDENT ('Conferences', reseed, 0);
	dbcc CHECKIDENT ('Reservations', reseed, 0);
    
END


GO
