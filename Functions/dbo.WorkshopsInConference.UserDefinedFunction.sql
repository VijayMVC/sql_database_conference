USE [wilkosz_a]
GO
/****** Object:  UserDefinedFunction [dbo].[WorkshopsInConference]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>


-- =============================================
CREATE FUNCTION [dbo].[WorkshopsInConference]
	-- Add the parameters for the stored procedure here
	(@ConferenceID int)
Returns table
AS
Return
	select * from WorkshopsInConferences
	where ConferenceID = @ConferenceID

GO
