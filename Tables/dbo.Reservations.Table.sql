USE [wilkosz_a]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 2017-05-25 12:20:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[ClientID] [int] NULL,
	[ReservationDate] [date] NULL CONSTRAINT [DF_Reservations_ReservationDate]  DEFAULT (getdate()),
	[PaymentDate] [date] NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Clients] FOREIGN KEY([ClientID])
REFERENCES [dbo].[Clients] ([ClientID])
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Clients]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [Payment time continuity] CHECK  (([PaymentDate]<=getdate() AND [PaymentDate]>=[ReservationDate]))
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [Payment time continuity]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [Reservation time continuity] CHECK  (([ReservationDate]<=getdate()))
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [Reservation time continuity]
GO
