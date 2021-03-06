USE [wilkosz_a]
GO
/****** Object:  Table [dbo].[WorkshopDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkshopDay](
	[WorkshopID] [int] NOT NULL,
	[BeginTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[ConferenceID] [int] NOT NULL,
	[DayNo] [int] NOT NULL,
	[PersonsLimit] [int] NOT NULL,
 CONSTRAINT [PK_WorkshopDay_1] PRIMARY KEY CLUSTERED 
(
	[WorkshopID] ASC,
	[ConferenceID] ASC,
	[DayNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[WorkshopDay]  WITH CHECK ADD  CONSTRAINT [FK_WorkshopDay_ConferenceDay] FOREIGN KEY([ConferenceID], [DayNo])
REFERENCES [dbo].[ConferenceDay] ([ConferenceID], [DayNo])
GO
ALTER TABLE [dbo].[WorkshopDay] CHECK CONSTRAINT [FK_WorkshopDay_ConferenceDay]
GO
ALTER TABLE [dbo].[WorkshopDay]  WITH CHECK ADD  CONSTRAINT [FK_WorkshopDay_Workshops] FOREIGN KEY([WorkshopID])
REFERENCES [dbo].[Workshops] ([WorkshopID])
GO
ALTER TABLE [dbo].[WorkshopDay] CHECK CONSTRAINT [FK_WorkshopDay_Workshops]
GO
ALTER TABLE [dbo].[WorkshopDay]  WITH CHECK ADD  CONSTRAINT [CK_WorkshopDay] CHECK  (([DayNo]>=(1)))
GO
ALTER TABLE [dbo].[WorkshopDay] CHECK CONSTRAINT [CK_WorkshopDay]
GO
ALTER TABLE [dbo].[WorkshopDay]  WITH CHECK ADD  CONSTRAINT [CK_WorkshopDay_1] CHECK  (([PersonsLimit]>(0)))
GO
ALTER TABLE [dbo].[WorkshopDay] CHECK CONSTRAINT [CK_WorkshopDay_1]
GO
