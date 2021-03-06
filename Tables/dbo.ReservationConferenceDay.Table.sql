USE [wilkosz_a]
GO
/****** Object:  Table [dbo].[ReservationConferenceDay]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReservationConferenceDay](
	[ReservationID] [int] NOT NULL,
	[ConferenceID] [int] NOT NULL,
	[DayNo] [int] NOT NULL,
	[ReservedNo] [int] NOT NULL,
	[StudentReservedNo] [int] NULL,
 CONSTRAINT [PK_ReservationConferenceDay] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC,
	[ConferenceID] ASC,
	[DayNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[ReservationConferenceDay]  WITH CHECK ADD  CONSTRAINT [FK_ReservationConferenceDay_ConferenceDay] FOREIGN KEY([ConferenceID], [DayNo])
REFERENCES [dbo].[ConferenceDay] ([ConferenceID], [DayNo])
GO
ALTER TABLE [dbo].[ReservationConferenceDay] CHECK CONSTRAINT [FK_ReservationConferenceDay_ConferenceDay]
GO
ALTER TABLE [dbo].[ReservationConferenceDay]  WITH CHECK ADD  CONSTRAINT [FK_ReservationConferenceDay_Reservations] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservations] ([ReservationID])
GO
ALTER TABLE [dbo].[ReservationConferenceDay] CHECK CONSTRAINT [FK_ReservationConferenceDay_Reservations]
GO
ALTER TABLE [dbo].[ReservationConferenceDay]  WITH CHECK ADD  CONSTRAINT [CK_ReservationConferenceDay] CHECK  (([ReservedNo]>(0) OR [StudentReservedNo]>(0)))
GO
ALTER TABLE [dbo].[ReservationConferenceDay] CHECK CONSTRAINT [CK_ReservationConferenceDay]
GO
ALTER TABLE [dbo].[ReservationConferenceDay]  WITH CHECK ADD  CONSTRAINT [CK_ReservationConferenceDay_1] CHECK  (([dbo].[getFreePlaceInConferenceDay]([ConferenceID],[DayNo])>=(0)))
GO
ALTER TABLE [dbo].[ReservationConferenceDay] CHECK CONSTRAINT [CK_ReservationConferenceDay_1]
GO
ALTER TABLE [dbo].[ReservationConferenceDay]  WITH CHECK ADD  CONSTRAINT [CK_ReservationConferenceDay_2] CHECK  (([dbo].[getReservedUnpopulatedNumberNormal]([ReservationID],[DayNo],[ConferenceID])>=(0)))
GO
ALTER TABLE [dbo].[ReservationConferenceDay] CHECK CONSTRAINT [CK_ReservationConferenceDay_2]
GO
ALTER TABLE [dbo].[ReservationConferenceDay]  WITH CHECK ADD  CONSTRAINT [CK_ReservationConferenceDay_3] CHECK  (([dbo].[getReservedUnpopulatedNumberStudent]([ReservationID],[DayNo],[ConferenceID])>=(0)))
GO
ALTER TABLE [dbo].[ReservationConferenceDay] CHECK CONSTRAINT [CK_ReservationConferenceDay_3]
GO
