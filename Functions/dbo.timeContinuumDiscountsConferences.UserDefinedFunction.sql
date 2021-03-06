USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[timeContinuumDiscountsConferences]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
create FUNCTION [dbo].[timeContinuumDiscountsConferences](@ConferenceID int)
RETURNS int
AS BEGIN RETURN (
    select count(*) from Discounts as d1
	join Conferences as c on d1.ConferenceID = c.ConferenceID
	where d1.DiscountDate > c.StartDay
	and c.ConferenceID = @ConferenceID
) END

GO
