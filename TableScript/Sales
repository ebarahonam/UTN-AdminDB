USE [Staging]
GO

/****** Object:  Table [dbo].[StgInvoices]    Script Date: 15/11/2018 02:17:51 a.m. ******/
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
