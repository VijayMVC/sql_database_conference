USE [wilkosz_a]
GO
/****** Object:  Table [dbo].[ConferenceDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ConferenceDay](
	[ConferenceID] [int] NOT NULL,
	[DayNo] [int] NOT NULL,
 CONSTRAINT [PK_ConferenceDay] PRIMARY KEY CLUSTERED 
(
	[ConferenceID] ASC,
	[DayNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ConferenceDay]  WITH CHECK ADD  CONSTRAINT [FK_ConferenceDay_Conferences] FOREIGN KEY([ConferenceID])
REFERENCES [dbo].[Conferences] ([ConferenceID])
GO
ALTER TABLE [dbo].[ConferenceDay] CHECK CONSTRAINT [FK_ConferenceDay_Conferences]
GO
ALTER TABLE [dbo].[ConferenceDay]  WITH CHECK ADD  CONSTRAINT [CK_ConferenceDay] CHECK  (([DayNo]>(0)))
GO
ALTER TABLE [dbo].[ConferenceDay] CHECK CONSTRAINT [CK_ConferenceDay]
GO
