USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[WorkshopReservationsDetailsForClient]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create FUNCTION [dbo].[WorkshopReservationsDetailsForClient]
	-- Add the parameters for the stored procedure here
	(@ClientID int)
Returns table
AS
Return
(select * from [ReservationWorkshopDetails] where clientid is not null and(price is not null or ReservationID is null or (DayNo is null and ConferenceID is not null)) and ClientID = @ClientID)

	

	

GO
