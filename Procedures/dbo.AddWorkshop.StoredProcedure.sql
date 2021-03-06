USE [wilkosz_a]
GO
/****** Object:  StoredProcedure [dbo].[AddWorkshop]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Samuel Tomczyk
-- Create date: 2017.01.10
-- Description:	Procedure to add a new workshop
-- =============================================
CREATE PROCEDURE [dbo].[AddWorkshop] 
	-- Add the parameters for the stored procedure here
	@name varchar(60) , 
	@price money = 0 ,
	@description text
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into Workshops values (@name, @price, @description)
END

GO
