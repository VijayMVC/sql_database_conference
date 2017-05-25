USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[getReservedNo]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
create FUNCTION [dbo].[getReservedNo](@ReservationID int, @DayNo int, @ConferenceID int)
RETURNS int
AS 
BEGIN 
	
	return (select ReservedNo + StudentReservedNo from ReservationConferenceDay where ReservationID = @ReservationID and ConferenceID = @ConferenceID and DayNo = @DayNo)


END

GO
