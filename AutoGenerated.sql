Create database CarParkingLot
go

USE CarParkingLot
GO
/****** Object:  Table [dbo].[PositionStatus]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PositionStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PositionStatus] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[PositionStatus] ON
INSERT [dbo].[PositionStatus] ([ID], [PositionStatus]) VALUES (1, N'Available')
INSERT [dbo].[PositionStatus] ([ID], [PositionStatus]) VALUES (2, N'Booked')
INSERT [dbo].[PositionStatus] ([ID], [PositionStatus]) VALUES (3, N'Occupied')
INSERT [dbo].[PositionStatus] ([ID], [PositionStatus]) VALUES (4, N'Maintance')
SET IDENTITY_INSERT [dbo].[PositionStatus] OFF
/****** Object:  Table [dbo].[Fee]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Fee] [real] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuildingInfo]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildingInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Location] [nvarchar](max) NULL,
	[Longtitude] [real] NULL,
	[Latitude] [real] NULL,
	[Url] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BuildingInfo] ON
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (1, N'Quận 1', N'Đường Tự Do', 0, 0, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (2, N'Quận 2', N'Đường Dân Chủ', 1, 1, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (3, N'Quận 3', N'Đường Lam Sơn', 2, 2, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (4, N'Quận 4', N'Đường Quang Trung', 3, 3, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (5, N'Quận 5', N'Đường Tao Ngộ', 4, 4, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (6, N'Quận 6', N'Đường Hưng Đạo', 5, 5, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (7, N'Quận 7', N'Đường Lý Thường Kiệt', 6, 6, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (8, N'Quận 8', N'Đường Hồng Bàng', 7, 7, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (9, N'Quận 9', N'Đường Trưng Vương', 8, 8, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (10, N'Quận 10', N'Đường Lê Lợi', 9, 9, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (11, N'Quận 11', N'Đường Độc Lập', 10, 10, NULL)
INSERT [dbo].[BuildingInfo] ([ID], [DisplayName], [Location], [Longtitude], [Latitude], [Url]) VALUES (12, N'Quận 12', N'Đường Lê Quý Đôn', 11, 11, NULL)
SET IDENTITY_INSERT [dbo].[BuildingInfo] OFF
/****** Object:  Table [dbo].[Block]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Block](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Block] ON
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (1, N'Block 1')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (2, N'Block 2')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (3, N'Block 3')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (4, N'Block 4')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (5, N'Block 5')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (6, N'Block 6')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (7, N'Block 7')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (8, N'Block 8')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (9, N'Block 9')
INSERT [dbo].[Block] ([ID], [DisplayName]) VALUES (10, N'Block 10')
SET IDENTITY_INSERT [dbo].[Block] OFF
/****** Object:  Table [dbo].[BlackList]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlackList](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[LicensePlate] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserType]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserType] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserType] ON
INSERT [dbo].[UserType] ([ID], [UserType]) VALUES (1, N'Daily')
INSERT [dbo].[UserType] ([ID], [UserType]) VALUES (2, N'Weekly')
INSERT [dbo].[UserType] ([ID], [UserType]) VALUES (3, N'Monthly')
INSERT [dbo].[UserType] ([ID], [UserType]) VALUES (4, N'Yearly')
SET IDENTITY_INSERT [dbo].[UserType] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[DisplayName] [nvarchar](max) NULL,
	[Username] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Balance] [bigint] NULL,
	[Score] [int] NULL,
	[UserTypeID] [int] NULL,
 CONSTRAINT [PK__Users__3214EC270EA330E9] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (1, N'Nguyễn Văn A', N'0123456789', N'admin', 200000, 0, 1)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (2, N'Nguyễn Văn B', N'0123456710', N'admin', 200000, 0, 1)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (3, N'Nguyễn Văn C', N'0123456711', N'admin', 200000, 0, 2)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (4, N'Nguyễn Văn D', N'0123456712', N'admin', 200000, 0, 1)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (5, N'Nguyễn Văn E', N'0123456713', N'admin', 200000, 0, 3)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (6, N'Nguyễn Văn F', N'0123456714', N'admin', 200000, 0, 4)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (7, N'Nguyễn Văn G', N'0123456715', N'admin', 200000, 0, 1)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (8, N'Nguyễn Văn H', N'0123456716', N'admin', 200000, 0, 2)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (9, N'Nguyễn Văn I', N'0123456717', N'admin', 200000, 0, 3)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (10, N'Nguyễn Văn K', N'0123456718', N'admin', 200000, 0, 4)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (11, N'Nguyễn Văn L', N'0123456719', N'admin', 200000, 0, 1)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (12, N'Nguyễn Văn M', N'0123456720', N'admin', 200000, 0, 2)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (13, N'Nguyễn Văn N', N'0123456721', N'admin', 200000, 0, 3)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (14, N'Nguyễn Văn O', N'0123456722', N'admin', 200000, 0, 4)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (15, N'Nguyễn Văn P', N'0123456723', N'admin', 200000, 0, 1)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (16, N'Nguyễn Văn Q', N'0123456724', N'admin', 200000, 0, 2)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (17, N'Nguyễn Văn R', N'0123456725', N'admin', 200000, 0, 3)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (18, N'Nguyễn Văn S', N'0123456726', N'admin', 200000, 0, 4)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (19, N'Nguyễn Văn T', N'0123456727', N'admin', 200000, 0, 1)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (20, N'Nguyễn Văn U', N'0123456728', N'admin', 200000, 0, 2)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (21, N'Nguyễn Văn W', N'0123456729', N'admin', 200000, 0, 3)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (22, N'Nguyễn Văn V', N'0123456730', N'admin', 200000, 0, 4)
INSERT [dbo].[Users] ([ID], [DisplayName], [Username], [Password], [Balance], [Score], [UserTypeID]) VALUES (23, N'Nguyễn Văn Y', N'0123456731', N'admin', 200000, 0, 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[Building]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[ID] [int] NOT NULL,
	[SumAvail] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (1, 12)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (2, 2)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (3, 10)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (4, 4)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (5, 5)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (6, 6)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (7, 7)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (8, 8)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (9, 9)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (10, 2)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (11, 10)
INSERT [dbo].[Building] ([ID], [SumAvail]) VALUES (12, 7)
/****** Object:  Table [dbo].[CarParkingLayout]    Script Date: 11/12/2018 16:29:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarParkingLayout](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BuildingID] [int] NULL,
	[BlockID] [int] NULL,
	[PositionID] [int] NULL,
	[StatusID] [int] NULL,
	[UserID] [bigint] NULL,
	[LicensePlate] [nvarchar](50) NULL,
	[ReservedTime] [datetime] NULL,
	[ArrivalTime] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CarParkingLayout] ON
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (1, 1, 1, 1, 1, NULL, N'', NULL, NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (2, 1, 1, 2, 2, 2, N'59D1-20661', CAST(0x0000A99700C5C6DC AS DateTime), NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (3, 1, 1, 3, 3, 3, N'59D1-20662', CAST(0x0000A99700C5C6DC AS DateTime), CAST(0x0000A99700C5C6DC AS DateTime))
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (4, 1, 1, 4, 1, NULL, N'', NULL, NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (5, 1, 1, 5, 2, 5, N'59D1-20664', CAST(0x0000A99700C5C6DC AS DateTime), NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (6, 1, 1, 6, 3, 6, N'59D1-20665', CAST(0x0000A99700C5C6DC AS DateTime), CAST(0x0000A99700C5C6DC AS DateTime))
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (7, 1, 1, 7, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (8, 1, 1, 8, 1, NULL, N'', NULL, NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (9, 1, 1, 9, 2, 9, N'59D1-20668', CAST(0x0000A99700C5C6DC AS DateTime), NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (10, 1, 1, 10, 3, 10, N'59D1-20669', CAST(0x0000A99700C5C6DC AS DateTime), CAST(0x0000A99700C5C6DC AS DateTime))
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (11, 1, 1, 11, 4, NULL, NULL, NULL, NULL)
INSERT [dbo].[CarParkingLayout] ([ID], [BuildingID], [BlockID], [PositionID], [StatusID], [UserID], [LicensePlate], [ReservedTime], [ArrivalTime]) VALUES (12, 1, 1, 12, 1, NULL, N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[CarParkingLayout] OFF
/****** Object:  ForeignKey [FK__Building__SumAva__1920BF5C]    Script Date: 11/12/2018 16:29:44 ******/
ALTER TABLE [dbo].[Building]  WITH CHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[BuildingInfo] ([ID])
GO
/****** Object:  ForeignKey [FK__CarParkin__Arriv__21B6055D]    Script Date: 11/12/2018 16:29:44 ******/
ALTER TABLE [dbo].[CarParkingLayout]  WITH CHECK ADD FOREIGN KEY([BuildingID])
REFERENCES [dbo].[BuildingInfo] ([ID])
GO
/****** Object:  ForeignKey [FK__CarParkin__Block__22AA2996]    Script Date: 11/12/2018 16:29:44 ******/
ALTER TABLE [dbo].[CarParkingLayout]  WITH CHECK ADD FOREIGN KEY([BlockID])
REFERENCES [dbo].[Block] ([ID])
GO
/****** Object:  ForeignKey [FK__CarParkin__Statu__24927208]    Script Date: 11/12/2018 16:29:44 ******/
ALTER TABLE [dbo].[CarParkingLayout]  WITH CHECK ADD FOREIGN KEY([StatusID])
REFERENCES [dbo].[PositionStatus] ([ID])
GO
/****** Object:  ForeignKey [FK__CarParkin__UserI__239E4DCF]    Script Date: 11/12/2018 16:29:44 ******/
ALTER TABLE [dbo].[CarParkingLayout]  WITH CHECK ADD  CONSTRAINT [FK__CarParkin__UserI__239E4DCF] FOREIGN KEY([UserID])
REFERENCES [dbo].[Users] ([ID])
GO
ALTER TABLE [dbo].[CarParkingLayout] CHECK CONSTRAINT [FK__CarParkin__UserI__239E4DCF]
GO
/****** Object:  ForeignKey [FK__Users__UserTypeI__108B795B]    Script Date: 11/12/2018 16:29:44 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK__Users__UserTypeI__108B795B] FOREIGN KEY([UserTypeID])
REFERENCES [dbo].[UserType] ([ID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK__Users__UserTypeI__108B795B]
GO
