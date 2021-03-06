USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[FreeSeatsInConference]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[FreeSeatsInConference]
	-- Add the parameters for the stored procedure here
	@ConferenceID int,
	@DayNo int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	return ((select PersonsLimit from Conferences where ConferenceID = @ConferenceID) - 
	(select count (*) from DayAtendees da
	where da.ConferenceID = @ConferenceID and da.DayNo = @DayNo))


END

GO
