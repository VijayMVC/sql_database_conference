USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[AddWorkshopDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Samuel Tomczyk
-- Create date: 2017.01.10
-- Description:	Function to add workshopDay
-- =============================================
CREATE PROCEDURE [dbo].[AddWorkshopDay] 
	-- Add the parameters for the stored procedure here
	@WorkshopID int, 
	@BeginTime time(7),
	@EndTime time(7),
	@ConferenceID int,
	@DayNo int,
	@PersonsLimit int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	insert into WorkshopDay values (@WorkshopID, @BeginTime, @EndTime, @ConferenceID, @DayNo, @PersonsLimit)

    
END

GO
