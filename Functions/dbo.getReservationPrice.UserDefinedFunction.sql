USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[getReservationPrice]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
CREATE FUNCTION [dbo].[getReservationPrice](@ReservationID int)
RETURNS money
AS 
BEGIN 
	Declare @sum money = 0

	set @sum = @sum + isnull((select distinct sum(rcd.ReservedNo * dbo.pricePerPerson(rcd.ConferenceID, 0)) from Reservations as r
	inner join ReservationConferenceDay as rcd on rcd.ReservationID = r.ReservationID
	where r.ReservationID = @ReservationID),0)

	set @sum = @sum + isnull((select distinct sum(rcd.StudentReservedNo * dbo.pricePerPerson(rcd.ConferenceID, 1)) from Reservations as r
	inner join ReservationConferenceDay as rcd on rcd.ReservationID = r.ReservationID
	where r.ReservationID = @ReservationID),0)

	set @sum = @sum + isnull((select distinct sum(rwd.ReservedNo * dbo.pricePerPersonWorkshop(rwd.WorkshopID)) from ReservationWorkshopDay as rwd
	where rwd.ReservationID = @ReservationID), 0)

	return @sum

END

GO
