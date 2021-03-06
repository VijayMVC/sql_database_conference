USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[AddPersonToConferenceDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[AddPersonToConferenceDay]
	-- Add the parameters for the stored procedure here
	@PersonID int,
	@ConferenceID int, 
	@DayNo int,
	@ReservationID int
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	insert into DayAtendees
	values (@ConferenceID, @DayNo, @ReservationID, @PersonID)
    

END

GO
