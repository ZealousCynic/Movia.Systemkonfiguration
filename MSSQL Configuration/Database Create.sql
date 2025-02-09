USE [Movia]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApiUrls]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApiUrls](
	[ApiUrlID] [int] IDENTITY(1,1) NOT NULL,
	[ApiUrlString] [nvarchar](max) NULL,
	[ApiRequestMethod] [nvarchar](max) NULL,
	[ApiUrlRegex] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_ApiUrls] PRIMARY KEY CLUSTERED 
(
	[ApiUrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusDrivers]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusDrivers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonnelNumber] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_BusDrivers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusModels]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusModels](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [nvarchar](max) NULL,
	[Model] [nvarchar](max) NULL,
	[Length] [nvarchar](max) NULL,
	[Width] [nvarchar](max) NULL,
	[Height] [nvarchar](max) NULL,
	[PowerTrain] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_BusModels] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Busses]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Busses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RegistrationNumber] [nvarchar](max) NULL,
	[CapacityBoundary] [int] NOT NULL,
	[SeatingPlace] [int] NOT NULL,
	[StandingPlace] [int] NOT NULL,
	[BusModelID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Busses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BusStops]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusStops](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[StopNumber] [nvarchar](max) NULL,
	[Label] [nvarchar](max) NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
	[Zone] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_BusStops] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NumberOfPassengers]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NumberOfPassengers](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Total] [int] NOT NULL,
	[CreateDT] [datetime2](7) NOT NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
	[RouteBusID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_NumberOfPassengers] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolePermissionApiUrls]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolePermissionApiUrls](
	[ApiUrlID] [int] NOT NULL,
	[RoleID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RolePermissionApiUrls] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC,
	[ApiUrlID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteBusses]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteBusses](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RouteID] [int] NOT NULL,
	[BusID] [int] NOT NULL,
	[BusDriverID] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Longitude] [float] NOT NULL,
	[Latitude] [float] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RouteBusses] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RouteBusStops]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RouteBusStops](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BusStopID] [int] NOT NULL,
	[RouteID] [int] NOT NULL,
	[Order] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RouteBusStops] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Routes]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Routes](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Label] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Routes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserDetails]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Status] [tinyint] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_UserDetails] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 11/18/2020 9:31:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[RoleID] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Busses]  WITH CHECK ADD  CONSTRAINT [FK_Busses_BusModels_BusModelID] FOREIGN KEY([BusModelID])
REFERENCES [dbo].[BusModels] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Busses] CHECK CONSTRAINT [FK_Busses_BusModels_BusModelID]
GO
ALTER TABLE [dbo].[NumberOfPassengers]  WITH CHECK ADD  CONSTRAINT [FK_NumberOfPassengers_RouteBusses_RouteBusID] FOREIGN KEY([RouteBusID])
REFERENCES [dbo].[RouteBusses] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[NumberOfPassengers] CHECK CONSTRAINT [FK_NumberOfPassengers_RouteBusses_RouteBusID]
GO
ALTER TABLE [dbo].[RolePermissionApiUrls]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissionApiUrls_ApiUrls_ApiUrlID] FOREIGN KEY([ApiUrlID])
REFERENCES [dbo].[ApiUrls] ([ApiUrlID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePermissionApiUrls] CHECK CONSTRAINT [FK_RolePermissionApiUrls_ApiUrls_ApiUrlID]
GO
ALTER TABLE [dbo].[RolePermissionApiUrls]  WITH CHECK ADD  CONSTRAINT [FK_RolePermissionApiUrls_Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RolePermissionApiUrls] CHECK CONSTRAINT [FK_RolePermissionApiUrls_Roles_RoleID]
GO
ALTER TABLE [dbo].[RouteBusses]  WITH CHECK ADD  CONSTRAINT [FK_RouteBusses_BusDrivers_BusDriverID] FOREIGN KEY([BusDriverID])
REFERENCES [dbo].[BusDrivers] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RouteBusses] CHECK CONSTRAINT [FK_RouteBusses_BusDrivers_BusDriverID]
GO
ALTER TABLE [dbo].[RouteBusses]  WITH CHECK ADD  CONSTRAINT [FK_RouteBusses_Busses_BusID] FOREIGN KEY([BusID])
REFERENCES [dbo].[Busses] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RouteBusses] CHECK CONSTRAINT [FK_RouteBusses_Busses_BusID]
GO
ALTER TABLE [dbo].[RouteBusses]  WITH CHECK ADD  CONSTRAINT [FK_RouteBusses_Routes_RouteID] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Routes] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RouteBusses] CHECK CONSTRAINT [FK_RouteBusses_Routes_RouteID]
GO
ALTER TABLE [dbo].[RouteBusStops]  WITH CHECK ADD  CONSTRAINT [FK_RouteBusStops_BusStops_BusStopID] FOREIGN KEY([BusStopID])
REFERENCES [dbo].[BusStops] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RouteBusStops] CHECK CONSTRAINT [FK_RouteBusStops_BusStops_BusStopID]
GO
ALTER TABLE [dbo].[RouteBusStops]  WITH CHECK ADD  CONSTRAINT [FK_RouteBusStops_Routes_RouteID] FOREIGN KEY([RouteID])
REFERENCES [dbo].[Routes] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[RouteBusStops] CHECK CONSTRAINT [FK_RouteBusStops_Routes_RouteID]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Roles_RoleID] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Roles] ([RoleID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Roles_RoleID]
GO
