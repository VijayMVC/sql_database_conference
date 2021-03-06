USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[getDiscount]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
CREATE FUNCTION [dbo].[getDiscount](@ConferenceID int, @Date date)
RETURNS real
AS 
BEGIN 
	return isnull((select top 1 Discount from Discounts as d
	where d.ConferenceID = @ConferenceID and d.DiscountDate > @Date
	order by d.DiscountDate),0)
END

GO
