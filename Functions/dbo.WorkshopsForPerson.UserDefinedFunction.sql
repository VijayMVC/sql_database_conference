USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[WorkshopsForPerson]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create FUNCTION [dbo].[WorkshopsForPerson]
	-- Add the parameters for the stored procedure here
	(@PersonID int)
Returns table
AS
Return
	select * from [Workshop Atendees list]
	where PersonID = @PersonID

GO
