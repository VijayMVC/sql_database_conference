USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[pricePerPersonWorkshop]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>				
-- =============================================
create FUNCTION [dbo].[pricePerPersonWorkshop](@WorkshopID int)
RETURNS money
AS 
BEGIN 

	return (SELECT Price from Workshops as w
	where w.WorkshopID = @WorkshopID)
	
END

GO
