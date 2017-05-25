USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[AddPersonToWorkshopDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPersonToWorkshopDay]
	-- Add the parameters for the stored procedure here
	@PersonID int,
	@ConferenceID int, 
	@DayNo int,
	@WorkshopID int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	begin
	insert into WorkshopAtendees
	values (@WorkshopID, @DayNo, @ConferenceID, @PersonID)
	end
	
	
    

END

GO
