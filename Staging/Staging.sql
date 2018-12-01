use master
go
drop database [Staging]
go

CREATE DATABASE [Staging]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Staging', FILENAME = N'E:\data\BasicSERVER\Staging.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_CategoryTest] 
( NAME = N'CategoryTest', FILENAME = N'E:\data\BasicSERVER\CategoryTest.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Issues] 
( NAME = N'Issues', FILENAME = N'E:\data\BasicSERVER\Issues.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FG_Testing] 
( NAME = N'Testing', FILENAME = N'E:\data\BasicSERVER\Testing.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FGStgClaims] 
( NAME = N'StgClaims', FILENAME = N'E:\data\BasicSERVER\FGStgClaims.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ), 
 FILEGROUP [FGStgProducts] 
( NAME = N'StgProducts', FILENAME = N'E:\data\BasicSERVER\StgProducts.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Staging_log', FILENAME = N'E:\data\BasicSERVER\Staging_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO

ALTER DATABASE [Staging] SET COMPATIBILITY_LEVEL = 140
go

USE [Staging]
-- GO
--ALTER DATABASE [Staging] ADD FILEGROUP [FGStgClaims] 
--ALTER DATABASE [Staging] ADD FILEGROUP [FG_CategoryTest] 
--ALTER DATABASE [Staging] ADD FILEGROUP [FG_Issues] 
--ALTER DATABASE [Staging] ADD FILEGROUP [FG_Testing]
-- ALTER DATABASE [Staging] ADD FILEGROUP [FGStgProducts]
--GO

--ALTER DATABASE [Staging] 
--ADD FILE( NAME = N'CategoryTest', FILENAME = N'E:\data\BasicSERVER\CategoryTest.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB ) 
--TO FILEGROUP [FG_CategoryTest] 
--ALTER DATABASE [Staging] 
--ADD FILE( NAME = N'Issues', FILENAME = N'E:\data\BasicSERVER\Issues.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- TO FILEGROUP [FG_Issues]
-- ALTER DATABASE [Staging]  
--ADD FILE( NAME = N'Testing', FILENAME = N'E:\data\BasicSERVER\Testing.ndf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
-- TO FILEGROUP [FG_Testing]
-- GO

--ALTER DATABASE [Staging] ADD FILE ( NAME = N'StgProducts', FILENAME = N'E:\data\BasicSERVER\StgProducts.ndf' , SIZE = 8192KB , FILEGROWTH = 65536KB ) TO FILEGROUP [FGStgProducts]
--GO

--ALTER DATABASE [Staging] 
--ADD FILE (NAME = N'StgClaims', FILENAME = N'E:\data\BasicSERVER\FGStgClaims.ndf',  SIZE = 8192KB , FILEGROWTH = 65536KB )
--TO FILEGROUP [FGStgClaims]
--GO
 /****** Object:  Table [dbo].[StgCategoryTest]    Script Date: 15/11/2018 17:40:35 ******/

GO
CREATE TABLE [dbo].[StgCategoryTest](
	[RecordKey] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [varchar](50) NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[CategoryDesc] [varchar](50) NOT NULL,
	[CheckSumIndicator]  AS (checksum([RecordKey],[CategoryId],[CategoryName],[CategoryDesc])),
 CONSTRAINT [PK_StgCAtegoryTest] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [FG_CategoryTest]
) ON [FG_CategoryTest]
GO
GO
/****** Object:  Table [dbo].[StgClaims]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE TABLE [dbo].[StgClaims](
	[RecordKey] [int] IDENTITY(1,1) NOT NULL,
	[CheckSumIndicator]  AS 
	(checksum([RecordKey],[ClaimId],[LotNumber],[LineProd],[DateLot],[ProductId],[CustomerId],[DefectQty],[UnitReturnQty],[DefectId])),
	[ClaimId] [int] NOT NULL,
	[LotNumber] [varchar](50) NOT NULL,
	[LineProd] [int] NOT NULL,
	[DateLot] [date] NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[DefectQty] [int] NOT NULL,
	[UnitReturnQty] [int] NOT NULL,
	[DefectId] [int] NOT NULL,
 CONSTRAINT [PK_StgClaims] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
)  ON [FGStgClaims]
GO
/****** Object:  Table [dbo].[StgCustomer]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgCustomer](
	[RecordKey] [int] NOT NULL IDENTITY(1,1),
	[CheckSumIndicator] AS CHECKSUM(RecordKey, CustomerNm, CustomerId),
	[CustomerNm] [varchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_StgCustomer] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StgDefect]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgDefect](
	[RecordKey] [int] NOT NULL IDENTITY(1,1),
	[CheckSumIndicator] AS CHECKSUM(RecordKey, DefectId, DefectDesc),
	[DefectId] [int] NOT NULL,
	[DefectDesc] [varchar](100) NOT NULL,
 CONSTRAINT [PK_StgDefect] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StgInvoices]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgInvoices](
	[RecordKey] [int] IDENTITY(1,1) NOT NULL,
	[CheckSumIndicator]  AS (checksum([InvoiceId],[ProductId],[CustomerId],[LotNumber],[LineProd])),
	[InvoiceId] [int] NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[LotNumber] [varchar](50) NOT NULL,
	[LineProd] [int] NOT NULL,
	[CurrencySymbol] [varchar](1) NOT NULL,
	[CurrencyNm] [varchar](20) NOT NULL,
	[SalePriceUnit] [float] NOT NULL,
	[saleQty] [int] NULL,
	[DiscountAmnt] [int] NOT NULL,
	[SaleAmnt]  AS ([SalePriceUnit]*[saleQty]-[DiscountAmnt]),
	[OrderId] [int] NOT NULL,
	[TotalCostAmnt]  AS ([SalePriceUnit]*[saleQty]),
 CONSTRAINT [PK_StgInvoices] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

/****** Object:  Table [dbo].[StgIssues]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgIssues](
	[RecordKey] [int] IDENTITY(1,1) NOT NULL,
	[IssueId] [int] NOT NULL,
	[IssueDesc] [varchar](50) NOT NULL,
	[CheckSumIndicator]  AS (checksum([RecordKey],[IssueId],[IssueDesc])),
 CONSTRAINT [PK_StgIssues] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, FILLFACTOR = 90) ON [FG_Issues]
) ON [FG_Issues]
GO
/****** Object:  Table [dbo].[StgProducts]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[StgProducts](
	[RecordKey] int IDENTITY(1,1),
	[CheckSumIndicator] as  checksum(ProductId,ProductName,CategoryName,LotNumber,LineNumber),
	[ProductId] [varchar](50) NOT NULL,
	[ProductName] [varchar](100) NOT NULL,
	[CategoryName] [varchar](100) NOT NULL,
	[LotNumber] [varchar](50) NOT NULL,
	[LineNumber] [tinyint] NOT NULL,
	[LoteDate] [date] NOT NULL,
	[Qty] [int] NOT NULL,
	[QtyLost] [int] NOT NULL,
	[CostTotalAmount] [int] NOT NULL,
	[TotalQty]  AS ([Qty]+[QtyLost]),
 CONSTRAINT [PK_StgProducts] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [FGStgProducts]
GO
/****** Object:  Table [dbo].[StgRoot]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE TABLE [dbo].[StgRoot](
--	[RecordKey] [int] NOT NULL,
--	[CheckSumIndicator] [int] NOT NULL,
--	[LotNumber] [varchar](50) NOT NULL,
--	[LineNumber] [int] NOT NULL,
--	[LoteDate] [date] NOT NULL,
-- CONSTRAINT [PK_StgRoot] PRIMARY KEY CLUSTERED 
--(
--	[RecordKey] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
--) ON [PRIMARY]
--GO
/****** Object:  Table [dbo].[StgTests]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgTests](
	[RecordKey] [int] IDENTITY(1,1) NOT NULL,
	[TestCategId] [varchar](50) NOT NULL,
	[TestDate] [date] NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[LotNumber] [varchar](50) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[LotDate] [date] NOT NULL,
	[IssueId] [int] NOT NULL,
	[UnitQty] [int] NOT NULL,
	[CheckSumIndicator]  AS (checksum([RecordKey],[TestCategId],[ProductId],[LotNumber],[LineNumber],[Lotdate],[IssueId],[UnitQty])),
 CONSTRAINT [PK_StgTests] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [FG_Testing]
GO
