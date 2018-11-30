USE [Staging]
GO
/****** Object:  Table [dbo].[StgClaims]    Script Date: 04/11/2018 06:33:08 ******/

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[StgCustomer](
	[RecordKey] [int] IDENTITY(1,1) NOT NULL,
	[CheckSumIndicator]  AS (checksum([CustomerNm],[CustomerId])),
	[CustomerNm] [varchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_StgCustomer] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgClaims](
	[RecordKey] [int] IDENTITY(1,1) NOT NULL,
	[ClaimId] [int] NOT NULL,
	[LotNumber] [varchar](50) NOT NULL,
	[LineProd] [int] NOT NULL,
	[DateLot] [date] NOT NULL,
	[ProductId] [varchar](50) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[DefectQty] [int] NOT NULL,
	[UnitReturnQty] [int] NOT NULL,
	[DefectId] [int] NOT NULL,
	[CheckSumIndicator]  AS 
	(checksum([RecordKey],[ClaimId],[LotNumber],[LineProd],[DateLot],[ProductId],[CustomerId],[DefectQty],[UnitReturnQty],[DefectId])),
 CONSTRAINT [PK_StgClaims] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StgCustomer]    Script Date: 04/11/2018 06:33:08 ******/

/****** Object:  Table [dbo].[StgDefect]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgDefect](
	[RecordKey] [int] NOT NULL,
	[CheckSumIndicator] [int] NOT NULL,
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
	[RecordKey] [int] NOT NULL,
	[CheckSumIndicator] [int] NOT NULL,
	[IssueId] [int] NOT NULL,
	[IssueDesc] [varchar](50) NOT NULL,
 CONSTRAINT [PK_StgIssues] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StgProducts]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgProducts](
	[RecordKey] [int] NOT NULL,
	[CheckSumIndicator] [int] NOT NULL,
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
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StgRoot]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgRoot](
	[RecordKey] [int] NOT NULL,
	[CheckSumIndicator] [int] NOT NULL,
	[LotNumber] [varchar](50) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[LoteDate] [date] NOT NULL,
 CONSTRAINT [PK_StgRoot] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StgTests]    Script Date: 04/11/2018 06:33:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StgTests](
	[RecordKey] [int] NOT NULL,
	[CheckSumIndicator] [int] NOT NULL,
	[TestCategId] [int] NOT NULL,
	[TestCategNm] [varchar](50) NOT NULL,
	[TestDate] [date] NOT NULL,
	[ProductId] [int] NOT NULL,
	[LotNumber] [varchar](50) NOT NULL,
	[LineNumber] [int] NOT NULL,
	[LotDate] [datetime] NOT NULL,
	[IssueId] [int] NOT NULL,
	[UnitQty] [int] NOT NULL,
 CONSTRAINT [PK_StgTests] PRIMARY KEY CLUSTERED 
(
	[RecordKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
