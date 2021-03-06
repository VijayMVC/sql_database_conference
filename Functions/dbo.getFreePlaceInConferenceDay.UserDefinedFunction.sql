USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[getFreePlaceInConferenceDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
CREATE FUNCTION [dbo].[getFreePlaceInConferenceDay](@ConferenceID int, @DayNo int)
RETURNS int
AS 
BEGIN 
	
	return ((select PersonsLimit from Conferences where ConferenceID = @ConferenceID) - 
	(select sum(rcd.ReservedNo+isnull(rcd.StudentReservedNo,0)) from ReservationConferenceDay as rcd 
	where rcd.ConferenceID = @ConferenceID and rcd.DayNo = @DayNo))


END

GO
