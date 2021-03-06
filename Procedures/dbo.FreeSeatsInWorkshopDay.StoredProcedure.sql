USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[FreeSeatsInWorkshopDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create PROCEDURE [dbo].[FreeSeatsInWorkshopDay]
	-- Add the parameters for the stored procedure here
	@ConferenceID int,
	@DayNo int,
	@WorkshopID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	return ((select PersonsLimit from WorkshopDay where WorkshopID = @WorkshopID and @DayNo = DayNo and ConferenceID = @ConferenceID) - 
	(select count (*) from WorkshopAtendees wa
	where wa.ConferenceID = @ConferenceID and wa.DayNo = @DayNo and wa.WorkshopID = @WorkshopID))


END

GO
