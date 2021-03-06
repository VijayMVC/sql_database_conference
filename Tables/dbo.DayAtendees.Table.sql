USE [wilkosz_a]
GO
/****** Object:  Table [dbo].[DayAtendees]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DayAtendees](
	[ConferenceID] [int] NOT NULL,
	[DayNo] [int] NOT NULL,
	[ReservationID] [int] NOT NULL,
	[PersonID] [int] NOT NULL,
 CONSTRAINT [PK_DayAtendees_1] PRIMARY KEY CLUSTERED 
(
	[ConferenceID] ASC,
	[DayNo] ASC,
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[DayAtendees]  WITH CHECK ADD  CONSTRAINT [FK_DayAtendees_ConferenceDay] FOREIGN KEY([ConferenceID], [DayNo])
REFERENCES [dbo].[ConferenceDay] ([ConferenceID], [DayNo])
GO
ALTER TABLE [dbo].[DayAtendees] CHECK CONSTRAINT [FK_DayAtendees_ConferenceDay]
GO
ALTER TABLE [dbo].[DayAtendees]  WITH CHECK ADD  CONSTRAINT [FK_DayAtendees_Persons] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Persons] ([PersonID])
GO
ALTER TABLE [dbo].[DayAtendees] CHECK CONSTRAINT [FK_DayAtendees_Persons]
GO
ALTER TABLE [dbo].[DayAtendees]  WITH CHECK ADD  CONSTRAINT [FK_DayAtendees_Reservations] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservations] ([ReservationID])
GO
ALTER TABLE [dbo].[DayAtendees] CHECK CONSTRAINT [FK_DayAtendees_Reservations]
GO
ALTER TABLE [dbo].[DayAtendees]  WITH CHECK ADD  CONSTRAINT [CK_DayAtendees] CHECK  (([DayNo]>(0)))
GO
ALTER TABLE [dbo].[DayAtendees] CHECK CONSTRAINT [CK_DayAtendees]
GO
ALTER TABLE [dbo].[DayAtendees]  WITH CHECK ADD  CONSTRAINT [CK_DayAtendees_1] CHECK  (([dbo].[getReservedPlacesLeft]([ReservationID],[DayNo],[ConferenceID])>=(0)))
GO
ALTER TABLE [dbo].[DayAtendees] CHECK CONSTRAINT [CK_DayAtendees_1]
GO
