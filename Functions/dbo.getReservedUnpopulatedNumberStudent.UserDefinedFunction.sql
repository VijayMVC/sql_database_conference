USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[getReservedUnpopulatedNumberStudent]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
CREATE FUNCTION [dbo].[getReservedUnpopulatedNumberStudent](@ReservationID int, @DayNo int, @ConferenceID int)
RETURNS int
AS 
BEGIN 

	return (select isnull(rcd.StudentReservedNo,0) - count(da.PersonID) from DayAtendees as da
	left outer join ReservationConferenceDay as rcd on rcd.ReservationID = da.ReservationID and rcd.ConferenceID = da.ConferenceID and rcd.DayNo = da.DayNo
	where da.ReservationID = @ReservationID and da.DayNo = @DayNo and da.ConferenceID = @ConferenceID and exists (select * from Students as s where s.PersonID = da.PersonID)
	group by da.ConferenceID, da.DayNo, rcd.StudentReservedNo)

END

GO
