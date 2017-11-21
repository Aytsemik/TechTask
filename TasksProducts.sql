USE [Products]
GO

/****** Object:  Table [dbo].[Products]    Script Date: 11/22/2017 12:21:09 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [int] NOT NULL,
	[Name] [nvarchar](16) NOT NULL,
	[Price] [float] NOT NULL,
	[Barcode] [nvarchar](16) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Code]  DEFAULT ((1)) FOR [Code]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Name]  DEFAULT (N'product') FOR [Name]
GO

ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Price]  DEFAULT ((10)) FOR [Price]
GO


