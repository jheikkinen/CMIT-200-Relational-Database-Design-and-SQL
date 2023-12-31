USE [master]
GO
/****** Object:  Database [XYZ_Trucking]    Script Date: 12/17/2021 12:21:50 AM ******/
CREATE DATABASE [XYZ_Trucking]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'XYZ_Trucking', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\XYZ_Trucking.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'XYZ_Trucking_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\XYZ_Trucking_log.ldf' , SIZE = 816KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [XYZ_Trucking] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [XYZ_Trucking].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [XYZ_Trucking] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET ARITHABORT OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [XYZ_Trucking] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [XYZ_Trucking] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [XYZ_Trucking] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET  ENABLE_BROKER 
GO
ALTER DATABASE [XYZ_Trucking] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [XYZ_Trucking] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [XYZ_Trucking] SET  MULTI_USER 
GO
ALTER DATABASE [XYZ_Trucking] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [XYZ_Trucking] SET DB_CHAINING OFF 
GO
ALTER DATABASE [XYZ_Trucking] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [XYZ_Trucking] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [XYZ_Trucking] SET DELAYED_DURABILITY = DISABLED 
GO
USE [XYZ_Trucking]
GO
/****** Object:  Table [dbo].[drivers]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[drivers](
	[Name] [varchar](20) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[EmployeeNumber] [int] IDENTITY(1,1) NOT NULL,
	[DateOfHire] [date] NULL,
	[CommercialDriverLicense] [varchar](3) NOT NULL,
	[TruckNumber] [int] NOT NULL,
 CONSTRAINT [PK__drivers__8D663599513AE270] PRIMARY KEY CLUSTERED 
(
	[EmployeeNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HaulManifest]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HaulManifest](
	[ItemNumber] [int] IDENTITY(1,1) NOT NULL,
	[HaulNumber] [int] NOT NULL,
	[Item] [varchar](20) NOT NULL,
	[ItemDescription] [varchar](50) NULL,
	[ItemWeightPerUnit] [int] NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK__HaulMani__C28ACDB6AE097AB2] PRIMARY KEY CLUSTERED 
(
	[ItemNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HaulRecord]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HaulRecord](
	[HaulNumber] [int] IDENTITY(1,1) NOT NULL,
	[TruckNumber] [int] NOT NULL,
	[Client] [varchar](20) NOT NULL,
	[CargoTypeID] [int] NULL,
	[DateHaulBegan] [date] NOT NULL,
	[DeliveryDate] [date] NOT NULL,
	[Mileage] [int] NOT NULL,
	[HaulNotes] [varchar](50) NULL,
 CONSTRAINT [PK__HaulReco__498E66D24D5A492A] PRIMARY KEY CLUSTERED 
(
	[HaulNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LUCargoType]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LUCargoType](
	[CargoTypeID] [int] IDENTITY(1,1) NOT NULL,
	[CargoTypeDescription] [varchar](20) NULL,
 CONSTRAINT [PK__LUCargoT__87BCCBF9F5E8C1D8] PRIMARY KEY CLUSTERED 
(
	[CargoTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LUMaintenanceCode]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LUMaintenanceCode](
	[MaintenanceCodeID] [int] IDENTITY(1,1) NOT NULL,
	[MaintenanceCodeDescription] [varchar](20) NULL,
 CONSTRAINT [PK__LUMainte__B6E4EED3C003308D] PRIMARY KEY CLUSTERED 
(
	[MaintenanceCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LUMaintenanceType]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LUMaintenanceType](
	[MaintenanceTypeID] [int] IDENTITY(1,1) NOT NULL,
	[MaintenanceTypeDescription] [varchar](20) NULL,
 CONSTRAINT [PK__LUMainte__C1017E6BC8E1B4BF] PRIMARY KEY CLUSTERED 
(
	[MaintenanceTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LUTrailerType]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LUTrailerType](
	[TrailerTypeID] [int] IDENTITY(1,1) NOT NULL,
	[TrailerTypeDescription] [varchar](20) NULL,
 CONSTRAINT [PK__LUTraile__B1E17CADD114B5A9] PRIMARY KEY CLUSTERED 
(
	[TrailerTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TrailerInformation]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TrailerInformation](
	[TrailerNumber] [int] IDENTITY(1,1) NOT NULL,
	[TrailerTypeID] [int] NOT NULL,
	[TrailerCapacity] [int] NOT NULL,
	[TrailerMileage] [int] NOT NULL,
	[TrailerDescription] [varchar](50) NULL,
	[TruckNumber] [int] NOT NULL,
 CONSTRAINT [PK__TrailerI__D5BBB80D06C2A352] PRIMARY KEY CLUSTERED 
(
	[TrailerNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TruckInformation]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TruckInformation](
	[TruckType] [varchar](10) NOT NULL,
	[TruckBodyType] [varchar](15) NOT NULL,
	[TruckNumber] [int] IDENTITY(1,1) NOT NULL,
	[TruckLicenseNumber] [int] NULL,
	[TruckDescription] [varchar](255) NULL,
	[TruckEngineType] [varchar](50) NULL,
	[TruckFuelType] [varchar](50) NULL,
	[TruckCurrentMileage] [int] NOT NULL,
 CONSTRAINT [PK__TruckInf__32F15A0559727525] PRIMARY KEY CLUSTERED 
(
	[TruckNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TruckMaintenance]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TruckMaintenance](
	[TruckNumber] [int] NOT NULL,
	[MaintenanceNumber] [int] IDENTITY(1,1) NOT NULL,
	[MaintenanceStartDate] [date] NOT NULL,
	[MaintenanceEndDate] [date] NOT NULL,
	[MaintenanceTypeID] [int] NOT NULL,
	[MaintenanceCodeID] [int] NOT NULL,
 CONSTRAINT [PK__TruckMai__878A8B17FF4D81C4] PRIMARY KEY CLUSTERED 
(
	[MaintenanceNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[drivers] ON 

INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Tammylynn', CAST(N'1980-04-10' AS Date), 1, CAST(N'2001-07-15' AS Date), N'yes', 1)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Dusty', CAST(N'1985-07-23' AS Date), 2, CAST(N'2005-10-15' AS Date), N'yes', 2)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Amberlynn', CAST(N'1986-10-14' AS Date), 3, CAST(N'2010-06-11' AS Date), N'yes', 3)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Trevor', CAST(N'1978-01-13' AS Date), 4, CAST(N'1998-04-12' AS Date), N'yes', 4)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Larry', CAST(N'1981-09-27' AS Date), 5, CAST(N'1999-12-23' AS Date), N'yes', 5)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Agnes', CAST(N'1965-01-13' AS Date), 6, CAST(N'1990-07-15' AS Date), N'yes', 6)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Betty', CAST(N'1984-11-23' AS Date), 7, CAST(N'2008-07-10' AS Date), N'yes', 7)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Earl', CAST(N'1972-05-17' AS Date), 8, CAST(N'1995-08-16' AS Date), N'yes', 8)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Floyd', CAST(N'1979-06-23' AS Date), 9, CAST(N'1997-03-01' AS Date), N'yes', 9)
INSERT [dbo].[drivers] ([Name], [DateOfBirth], [EmployeeNumber], [DateOfHire], [CommercialDriverLicense], [TruckNumber]) VALUES (N'Darlene', CAST(N'1968-10-22' AS Date), 10, CAST(N'1991-02-03' AS Date), N'yes', 10)
SET IDENTITY_INSERT [dbo].[drivers] OFF
SET IDENTITY_INSERT [dbo].[HaulManifest] ON 

INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (1, 1, N'Shirts', N'Flannel Shirts', 20, 10000)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (2, 2, N'Tractors', N'John Deere Tractors', 300, 2)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (3, 3, N'Gas', N'Gasoline', 100, 5000)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (4, 4, N'Meat', N'Steaks and Chicken', 2, 1000)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (5, 5, N'Car', N'Race Car', 2000, 1)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (6, 6, N'Tupperware', N'Tupperware containers', 20, 1000)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (7, 7, N'Meat', N'Steaks', 2, 1000)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (8, 8, N'Oil', N'Crude Oil', 150, 2000)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (9, 9, N'Shirts', N'More Flannel Shirts', 20, 10000)
INSERT [dbo].[HaulManifest] ([ItemNumber], [HaulNumber], [Item], [ItemDescription], [ItemWeightPerUnit], [Quantity]) VALUES (10, 10, N'Car', N'Back-up Race Car', 2000, 1)
SET IDENTITY_INSERT [dbo].[HaulManifest] OFF
SET IDENTITY_INSERT [dbo].[HaulRecord] ON 

INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (1, 1, N'Walmart', 4, CAST(N'2021-11-05' AS Date), CAST(N'2021-11-05' AS Date), 1245, N'Short Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (2, 2, N'Tractor Supply Co.', 4, CAST(N'2021-11-01' AS Date), CAST(N'2021-11-04' AS Date), 1000, N'Long Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (3, 3, N'Exxon Mobil', 1, CAST(N'2021-11-05' AS Date), CAST(N'2021-11-07' AS Date), 500, N'Long Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (4, 4, N'Cracker Barrel', 3, CAST(N'2021-11-06' AS Date), CAST(N'2021-11-06' AS Date), 100, N'Short Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (5, 5, N'Nascar', 5, CAST(N'2021-11-10' AS Date), CAST(N'2021-11-10' AS Date), 150, N'Short Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (6, 6, N'Dollar General', 4, CAST(N'2021-11-01' AS Date), CAST(N'2021-11-01' AS Date), 153, N'Short Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (7, 7, N'Golden Corral', 3, CAST(N'2021-11-01' AS Date), CAST(N'2021-11-06' AS Date), 1400, N'Long Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (8, 8, N'Citgo', 1, CAST(N'2021-11-02' AS Date), CAST(N'2021-11-07' AS Date), 1000, N'Long Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (9, 9, N'Walmart', 4, CAST(N'2021-11-05' AS Date), CAST(N'2021-11-05' AS Date), 234, N'Short Haul')
INSERT [dbo].[HaulRecord] ([HaulNumber], [TruckNumber], [Client], [CargoTypeID], [DateHaulBegan], [DeliveryDate], [Mileage], [HaulNotes]) VALUES (10, 10, N'Nascar', 5, CAST(N'2021-11-10' AS Date), CAST(N'2021-11-10' AS Date), 150, N'Short Haul')
SET IDENTITY_INSERT [dbo].[HaulRecord] OFF
SET IDENTITY_INSERT [dbo].[LUCargoType] ON 

INSERT [dbo].[LUCargoType] ([CargoTypeID], [CargoTypeDescription]) VALUES (1, N'Hazardous')
INSERT [dbo].[LUCargoType] ([CargoTypeID], [CargoTypeDescription]) VALUES (2, N'Liquid')
INSERT [dbo].[LUCargoType] ([CargoTypeID], [CargoTypeDescription]) VALUES (3, N'Refrigerated')
INSERT [dbo].[LUCargoType] ([CargoTypeID], [CargoTypeDescription]) VALUES (4, N'Standard')
INSERT [dbo].[LUCargoType] ([CargoTypeID], [CargoTypeDescription]) VALUES (5, N'Other')
SET IDENTITY_INSERT [dbo].[LUCargoType] OFF
SET IDENTITY_INSERT [dbo].[LUMaintenanceCode] ON 

INSERT [dbo].[LUMaintenanceCode] ([MaintenanceCodeID], [MaintenanceCodeDescription]) VALUES (1, N'Routine')
INSERT [dbo].[LUMaintenanceCode] ([MaintenanceCodeID], [MaintenanceCodeDescription]) VALUES (2, N'Unscheduled')
SET IDENTITY_INSERT [dbo].[LUMaintenanceCode] OFF
SET IDENTITY_INSERT [dbo].[LUMaintenanceType] ON 

INSERT [dbo].[LUMaintenanceType] ([MaintenanceTypeID], [MaintenanceTypeDescription]) VALUES (1, N'Engine')
INSERT [dbo].[LUMaintenanceType] ([MaintenanceTypeID], [MaintenanceTypeDescription]) VALUES (2, N'Transmission')
INSERT [dbo].[LUMaintenanceType] ([MaintenanceTypeID], [MaintenanceTypeDescription]) VALUES (3, N'Tires')
INSERT [dbo].[LUMaintenanceType] ([MaintenanceTypeID], [MaintenanceTypeDescription]) VALUES (4, N'Body')
INSERT [dbo].[LUMaintenanceType] ([MaintenanceTypeID], [MaintenanceTypeDescription]) VALUES (5, N'Electrical')
INSERT [dbo].[LUMaintenanceType] ([MaintenanceTypeID], [MaintenanceTypeDescription]) VALUES (6, N'Hydraulic')
INSERT [dbo].[LUMaintenanceType] ([MaintenanceTypeID], [MaintenanceTypeDescription]) VALUES (7, N'Pneumatic')
SET IDENTITY_INSERT [dbo].[LUMaintenanceType] OFF
SET IDENTITY_INSERT [dbo].[LUTrailerType] ON 

INSERT [dbo].[LUTrailerType] ([TrailerTypeID], [TrailerTypeDescription]) VALUES (1, N'Tanker')
INSERT [dbo].[LUTrailerType] ([TrailerTypeID], [TrailerTypeDescription]) VALUES (2, N'Flat Bed')
INSERT [dbo].[LUTrailerType] ([TrailerTypeID], [TrailerTypeDescription]) VALUES (3, N'Box')
INSERT [dbo].[LUTrailerType] ([TrailerTypeID], [TrailerTypeDescription]) VALUES (4, N'Refrigerated')
SET IDENTITY_INSERT [dbo].[LUTrailerType] OFF
SET IDENTITY_INSERT [dbo].[TrailerInformation] ON 

INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (1, 3, 200, 60453, N'Big Trailer', 1)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (2, 2, 100, 69300, N'Small Trailer', 2)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (3, 1, 200, 88700, N'Big Trailer', 3)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (4, 4, 100, 46700, N'Small Trailer', 4)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (5, 3, 100, 101700, N'Small Trailer', 5)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (6, 3, 200, 100700, N'Big Trailer', 6)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (7, 4, 100, 34300, N'Small Trailer', 7)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (8, 1, 200, 120700, N'Big Trailer', 8)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (9, 2, 100, 68700, N'Small Trailer', 9)
INSERT [dbo].[TrailerInformation] ([TrailerNumber], [TrailerTypeID], [TrailerCapacity], [TrailerMileage], [TrailerDescription], [TruckNumber]) VALUES (10, 3, 100, 150700, N'Small Trailer', 10)
SET IDENTITY_INSERT [dbo].[TrailerInformation] OFF
SET IDENTITY_INSERT [dbo].[TruckInformation] ON 

INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Long Haul', N'Tractor Trailer', 1, 234678, N'Big Truck', N'Diesel', N'Diesel', 110231)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Short Haul', N'Single Unit', 2, 278788, N'Small Truck', N'Diesel', N'Diesel', 54698)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Long Haul', N'Tractor Trailer', 3, 354789, N'Big Truck', N'Diesel', N'Diesel', 120546)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Long Haul', N'Single Unit', 4, 123987, N'Medium Truck', N'Diesel', N'Diesel', 48432)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Short Haul', N'Single Unit', 5, 776523, N'Small Truck', N'Standard', N'87', 134768)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Short Haul', N'Tractor Trailer', 6, 342678, N'Big Truck', N'Diesel', N'Diesel', 47890)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Long Haul', N'Single Unit', 7, 145321, N'Small Truck', N'Standard', N'87', 167098)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Long Haul', N'Tractor Trailer', 8, 523653, N'Big Truck', N'Diesel', N'Diesel', 210654)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Short Haul', N'Single Unit', 9, 384943, N'Medium Truck', N'Diesel', N'Diesel', 148532)
INSERT [dbo].[TruckInformation] ([TruckType], [TruckBodyType], [TruckNumber], [TruckLicenseNumber], [TruckDescription], [TruckEngineType], [TruckFuelType], [TruckCurrentMileage]) VALUES (N'Short Haul', N'Single Unit', 10, 823123, N'Medium Truck', N'Diesel', N'Diesel', 67576)
SET IDENTITY_INSERT [dbo].[TruckInformation] OFF
SET IDENTITY_INSERT [dbo].[TruckMaintenance] ON 

INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (1, 1, CAST(N'2021-11-01' AS Date), CAST(N'2021-11-02' AS Date), 3, 1)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (2, 2, CAST(N'2021-11-05' AS Date), CAST(N'2021-11-14' AS Date), 2, 2)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (3, 3, CAST(N'2021-10-18' AS Date), CAST(N'2021-11-02' AS Date), 1, 2)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (4, 4, CAST(N'2021-10-01' AS Date), CAST(N'2021-10-03' AS Date), 6, 1)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (5, 5, CAST(N'2021-10-15' AS Date), CAST(N'2021-10-21' AS Date), 7, 2)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (6, 6, CAST(N'2021-10-05' AS Date), CAST(N'2021-10-07' AS Date), 5, 1)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (7, 7, CAST(N'2021-09-30' AS Date), CAST(N'2021-10-10' AS Date), 2, 2)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (8, 8, CAST(N'2021-09-14' AS Date), CAST(N'2021-10-01' AS Date), 6, 2)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (9, 9, CAST(N'2021-10-01' AS Date), CAST(N'2021-10-05' AS Date), 3, 1)
INSERT [dbo].[TruckMaintenance] ([TruckNumber], [MaintenanceNumber], [MaintenanceStartDate], [MaintenanceEndDate], [MaintenanceTypeID], [MaintenanceCodeID]) VALUES (10, 10, CAST(N'2021-10-15' AS Date), CAST(N'2021-10-16' AS Date), 1, 1)
SET IDENTITY_INSERT [dbo].[TruckMaintenance] OFF
ALTER TABLE [dbo].[drivers]  WITH CHECK ADD  CONSTRAINT [FK_TNumber1] FOREIGN KEY([TruckNumber])
REFERENCES [dbo].[TruckInformation] ([TruckNumber])
GO
ALTER TABLE [dbo].[drivers] CHECK CONSTRAINT [FK_TNumber1]
GO
ALTER TABLE [dbo].[HaulManifest]  WITH CHECK ADD  CONSTRAINT [FK_HaulNumber] FOREIGN KEY([HaulNumber])
REFERENCES [dbo].[HaulRecord] ([HaulNumber])
GO
ALTER TABLE [dbo].[HaulManifest] CHECK CONSTRAINT [FK_HaulNumber]
GO
ALTER TABLE [dbo].[drivers]  WITH CHECK ADD  CONSTRAINT [chk_CDL] CHECK  (([CommercialDriverLicense]='no' OR [CommercialDriverLicense]='yes'))
GO
ALTER TABLE [dbo].[drivers] CHECK CONSTRAINT [chk_CDL]
GO
ALTER TABLE [dbo].[LUCargoType]  WITH CHECK ADD  CONSTRAINT [chk_CTD] CHECK  (([CargoTypeDescription]='Other' OR [CargoTypeDescription]='Standard' OR [CargoTypeDescription]='Refrigerated' OR [CargoTypeDescription]='Liquid' OR [CargoTypeDescription]='Hazardous'))
GO
ALTER TABLE [dbo].[LUCargoType] CHECK CONSTRAINT [chk_CTD]
GO
ALTER TABLE [dbo].[LUMaintenanceCode]  WITH CHECK ADD  CONSTRAINT [chk_MCD] CHECK  (([MaintenanceCodeDescription]='Unscheduled' OR [MaintenanceCodeDescription]='Routine'))
GO
ALTER TABLE [dbo].[LUMaintenanceCode] CHECK CONSTRAINT [chk_MCD]
GO
ALTER TABLE [dbo].[LUMaintenanceType]  WITH CHECK ADD  CONSTRAINT [chk_MTD] CHECK  (([MaintenanceTypeDescription]='Pneumatic' OR [MaintenanceTypeDescription]='Hydraulic' OR [MaintenanceTypeDescription]='Electrical' OR [MaintenanceTypeDescription]='Body' OR [MaintenanceTypeDescription]='Tires' OR [MaintenanceTypeDescription]='Transmission' OR [MaintenanceTypeDescription]='Engine'))
GO
ALTER TABLE [dbo].[LUMaintenanceType] CHECK CONSTRAINT [chk_MTD]
GO
ALTER TABLE [dbo].[LUTrailerType]  WITH CHECK ADD  CONSTRAINT [chk_TTD] CHECK  (([TrailerTypeDescription]='Refrigerated' OR [TrailerTypeDescription]='Box' OR [TrailerTypeDescription]='Flat Bed' OR [TrailerTypeDescription]='Tanker'))
GO
ALTER TABLE [dbo].[LUTrailerType] CHECK CONSTRAINT [chk_TTD]
GO
ALTER TABLE [dbo].[TruckInformation]  WITH CHECK ADD  CONSTRAINT [chk_TBType] CHECK  (([TruckBodyType]='Single Unit' OR [TruckBodyType]='Tractor Trailer'))
GO
ALTER TABLE [dbo].[TruckInformation] CHECK CONSTRAINT [chk_TBType]
GO
ALTER TABLE [dbo].[TruckInformation]  WITH CHECK ADD  CONSTRAINT [chk_TType] CHECK  (([TruckType]='Short Haul' OR [TruckType]='Long Haul'))
GO
ALTER TABLE [dbo].[TruckInformation] CHECK CONSTRAINT [chk_TType]
GO
/****** Object:  StoredProcedure [dbo].[CompleteHaulReport]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Stored procedure pulls all columns from HaulRecord and HAulManifest Tables.
-- Also queries for TruckNumber and DateHaulBegan from user input.
CREATE Procedure [dbo].[CompleteHaulReport](@TruckNumber int, @DateHaulBegan1 date, @DateHaulBegan2 date)
AS
select HaulRecord.*, HaulManifest.* From HaulRecord
	Left Join HaulManifest
	ON HaulRecord.HaulNumber = HaulManifest.HaulNumber
	Where TruckNumber = @TruckNumber AND (DateHaulBegan BETWEEN @DateHaulBegan1 AND @DateHaulBegan2)
	Order by DateHaulBegan;
GO
/****** Object:  StoredProcedure [dbo].[DriverDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete driver by EmployeeNumber
CREATE Procedure [dbo].[DriverDelete](@EmployeeNumber int)
AS
Delete from drivers
Where EmployeeNumber = @EmployeeNumber;


GO
/****** Object:  StoredProcedure [dbo].[DriverInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 CREATE Procedure [dbo].[DriverInsert](@Name varchar(20), @DateOfBirth date, @DateOfHire date, 
 @CommercialDriverLicense varchar(3), @TruckNumber int)
AS
Insert into drivers
Values (@Name, @DateOfBirth, @DateOfHire, 
 @CommercialDriverLicense, @TruckNumber);


GO
/****** Object:  StoredProcedure [dbo].[HaulManifestDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete haul manifest data by ItemNumber
CREATE Procedure [dbo].[HaulManifestDelete](@ItemNumber int)
AS
Delete from HaulManifest
Where ItemNumber = @ItemNumber;


GO
/****** Object:  StoredProcedure [dbo].[HaulManifestInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[HaulManifestInsert](@HaulNumber int, @Item varchar(20), @ItemDescription varchar(50),
 @ItemWeightPerUnit int, @Quantity int)
AS
Insert into HaulManifest
Values (@HaulNumber, @Item, @ItemDescription,
 @ItemWeightPerUnit, @Quantity);


GO
/****** Object:  StoredProcedure [dbo].[HaulMileageUpdate]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Using HaulNumber and HaulMileage inputs to update the mileage per haul in haul record table.
Create Procedure [dbo].[HaulMileageUpdate] (@HaulNumber int, @HaulMileage int)
AS
UPDATE HaulRecord
SET Mileage = @HaulMileage
Where HaulNumber = @HaulNumber;
GO
/****** Object:  StoredProcedure [dbo].[HaulRecordDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete haul record by HaulNumber
CREATE Procedure [dbo].[HaulRecordDelete](@HaulNumber int)
AS
Delete from HaulRecord
Where HaulNumber = @HaulNumber;


GO
/****** Object:  StoredProcedure [dbo].[HaulRecordInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[HaulRecordInsert](@TruckNumber int, @Client varchar(20), @CargoType int, @DateHaulBegan date,
 @DeliveryDate date, @Mileage int, @HaulNotes varchar(50))
AS
Insert into HaulRecord
Values (@TruckNumber, @Client, @CargoType, @DateHaulBegan,
 @DeliveryDate, @Mileage, @HaulNotes);


GO
/****** Object:  StoredProcedure [dbo].[ItemInfoUpdate]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Using ItemNumber, Item, ItemDescription, ItemWeight and Quantity inputs to update item info for haul manifest table.
CREATE Procedure [dbo].[ItemInfoUpdate] (@ItemNumber int, @Item varchar(20), 
@ItemDescription varchar(50), @ItemWeight int, @Quantity int)
AS
UPDATE HaulManifest
SET Item = @Item, ItemDescription = @ItemDescription, ItemWeightPerUnit = @ItemWeight, Quantity = @Quantity
Where ItemNumber = @ItemNumber;
GO
/****** Object:  StoredProcedure [dbo].[LUCargoTypeDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete LUCargoType data by CargoTypeID
CREATE Procedure [dbo].[LUCargoTypeDelete](@CargoTypeID int)
AS
Delete from LUCargoType
Where CargoTypeID = @CargoTypeID;
GO
/****** Object:  StoredProcedure [dbo].[LUCargoTypeInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[LUCargoTypeInsert](@CargoTypeDescription varchar(20))
AS
Insert into LUCargoType
Values (@CargoTypeDescription);
GO
/****** Object:  StoredProcedure [dbo].[LUMaintenanceCodeDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete LUMaintenanceCode data by MaintenanceCodeID
CREATE Procedure [dbo].[LUMaintenanceCodeDelete](@MaintenanceCodeID int)
AS
Delete from LUMaintenanceCode
Where MaintenanceCodeID = @MaintenanceCodeID;


GO
/****** Object:  StoredProcedure [dbo].[LUMaintenanceCodeInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[LUMaintenanceCodeInsert](@MaintenanceCodeDescription varchar(20))
AS
Insert into LUMaintenanceCode
Values (@MaintenanceCodeDescription);


GO
/****** Object:  StoredProcedure [dbo].[LUMaintenanceTypeDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete LUMaintenanceType data by MaintenanceTypeID
CREATE Procedure [dbo].[LUMaintenanceTypeDelete](@MaintenanceTypeID int)
AS
Delete from LUMaintenanceType
Where MaintenanceTypeID = @MaintenanceTypeID;


GO
/****** Object:  StoredProcedure [dbo].[LUMaintenanceTypeInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[LUMaintenanceTypeInsert](@MaintenanceTypeDescription varchar(20))
AS
Insert into LUMaintenanceType
Values (@MaintenanceTypeDescription);


GO
/****** Object:  StoredProcedure [dbo].[LUTrailerTypeDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete LUTrailerType data by TrailerTypeID
CREATE Procedure [dbo].[LUTrailerTypeDelete](@TrailerTypeID int)
AS
Delete from LUTrailerType
Where TrailerTypeID = @TrailerTypeID;


GO
/****** Object:  StoredProcedure [dbo].[LUTrailerTypeInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[LUTrailerTypeInsert](@TrailerTypeDescription varchar(20))
AS
Insert into LUTrailerType
Values (@TrailerTypeDescription);


GO
/****** Object:  StoredProcedure [dbo].[MaintenanceReport]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Stored procedure pulls all columns from TruckInformation table and TruckNumber from TruckMaintenance table.
-- Also queries for the MaintenanceStartDate from user input.
CREATE Procedure [dbo].[MaintenanceReport](@MaintenanceStartDate1 date, @MaintenanceStartDate2 date)
AS
select TruckMaintenance.*, TruckInformation.TruckNumber From TruckMaintenance
	Left Join TruckInformation	
	On TruckMaintenance.TruckNumber = TruckInformation.TruckNumber
	Where MaintenanceStartDate Between @MaintenanceStartDate1 AND @MaintenanceStartDate2
	Order by TruckType, MaintenanceStartDate;
GO
/****** Object:  StoredProcedure [dbo].[QuickHaulReport]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Stored procedure pulls all columns from HaulRecord table.
-- Also queries for TruckNumber and DateHaulBegan from user input.
CREATE Procedure [dbo].[QuickHaulReport](@TruckNumber int, @DateHaulBegan1 date, @DateHaulBegan2 date)
AS
select * From HaulRecord
	Where TruckNumber = @TruckNumber AND (DateHaulBegan BETWEEN @DateHaulBegan1 AND @DateHaulBegan2)
	Order by DeliveryDate;
GO
/****** Object:  StoredProcedure [dbo].[TrailerInfoDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete Trailer Information data by TrailerNumber
CREATE Procedure [dbo].[TrailerInfoDelete](@TrailerNumber int)
AS
Delete from TrailerInformation
Where TrailerNumber = @TrailerNumber;


GO
/****** Object:  StoredProcedure [dbo].[TrailerInfoInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[TrailerInfoInsert](@TrailerType int, @TrailerCapacity int, @TrailerMileage int,
 @TrailerDescription varchar(50), @TruckNumber int)
AS
Insert into TrailerInformation
Values (@TrailerType, @TrailerCapacity, @TrailerMileage,
 @TrailerDescription, @TruckNumber);


GO
/****** Object:  StoredProcedure [dbo].[TrailerInfoUpdate]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[TrailerInfoUpdate](@TrailerNumber int, @TrailerType int, @TrailerCapacity int, @TrailerMileage int,
	@TrailerDescription varchar(50), @TruckNumber int)
AS

Update TrailerInformation
	SET TrailerTypeID = @TrailerType, TrailerCapacity = @TrailerCapacity, TrailerMileage = @TrailerMileage,
	TrailerDescription = @TrailerDescription, TruckNumber = @TruckNumber
	WHERE TrailerNumber = @TrailerNumber;


GO
/****** Object:  StoredProcedure [dbo].[TrailerMileageUpdate]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Using TrailerNumber and TrailerMileage inputs to update the mileage per trailer in trailer information table.
CREATE Procedure [dbo].[TrailerMileageUpdate] (@TrailerNumber int, @TrailerMileage int)
AS
UPDATE TrailerInformation
SET TrailerMileage = @TrailerMileage
Where TrailerNumber = @TrailerNumber;
GO
/****** Object:  StoredProcedure [dbo].[TruckHaulReport]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Stored procedure pulls all columns from TruckInformation and HaulRecord tables.
-- Also queries for TruckNumber and DateHaulBegan from user input.
CREATE Procedure [dbo].[TruckHaulReport](@TruckNumber int, @DateHaulBegan1 date, @DateHaulBegan2 date)
AS
select TruckInformation.*, HaulRecord.* 
	From TruckInformation
	join HaulRecord
	on HaulRecord.TruckNumber = TruckInformation.TruckNumber 
	Where TruckInformation.TruckNumber = @TruckNumber AND (DateHaulBegan BETWEEN @DateHaulBegan1 AND @DateHaulBegan2)
	Order by DateHaulBegan;
GO
/****** Object:  StoredProcedure [dbo].[TruckInfoDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete Truck Information data by TruckNumber
CREATE Procedure [dbo].[TruckInfoDelete](@TruckNumber int)
AS
Delete from TruckInformation
Where TruckNumber = @TruckNumber;


GO
/****** Object:  StoredProcedure [dbo].[TruckInfoInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[TruckInfoInsert](@TruckType varchar(10), @TruckBodyType varchar(15), @TruckLicenseNumber int,
 @TruckDescription varchar(255), @TruckEngineType varchar(50), @TruckFuelType varchar(50), @TruckCurrentMileage int)
AS
Insert into TruckInformation
Values (@TruckType, @TruckBodyType, @TruckLicenseNumber,
 @TruckDescription, @TruckEngineType, @TruckFuelType, @TruckCurrentMileage)
GO
/****** Object:  StoredProcedure [dbo].[TruckMaintDelete]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete Truck Maintenance data by MaintenanceNumber
CREATE Procedure [dbo].[TruckMaintDelete](@MaintNumber int)
AS
Delete from TruckMaintenance
Where MaintenanceNumber = @MaintNumber;


GO
/****** Object:  StoredProcedure [dbo].[TruckMaintInsert]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure [dbo].[TruckMaintInsert](@TruckNumber int, @MaintenanceStartDate date, @MaintenanceEndDate date,
 @MaintenanceType int, @MaintenanceCode int)
AS
Insert into TruckMaintenance
Values (@TruckNumber, @MaintenanceStartDate, @MaintenanceEndDate,
 @MaintenanceType, @MaintenanceCode);


GO
/****** Object:  StoredProcedure [dbo].[TruckMileageUpdate]    Script Date: 12/17/2021 12:21:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Using TruckNumber and TruckMileage inputs to update the mileage per truck in truck information table.
CREATE Procedure [dbo].[TruckMileageUpdate] (@TruckNumber int, @TruckMileage int)
AS
UPDATE TruckInformation
SET TruckCurrentMileage = @TruckMileage
Where TruckNumber = @TruckNumber;
GO
USE [master]
GO
ALTER DATABASE [XYZ_Trucking] SET  READ_WRITE 
GO
