USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[getReservedPlacesLeft]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
create FUNCTION [dbo].[getReservedPlacesLeft](@ReservationID int, @DayNo int, @ConferenceID int)
RETURNS int
AS 
BEGIN 
	
	declare @ret int
	exec @ret = getReservedNo @ReservationID, @DayNo, @ConferenceID
	return @ret - (select count (*) from DayAtendees as da
	where da.ReservationID = @ReservationID and da.DayNo = @DayNo and da.ConferenceID = @ConferenceID
	) 
	

END

GO
