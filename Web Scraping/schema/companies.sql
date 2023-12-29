USE [data_engineering_intro]
GO

/****** Object:  Table [dbo].[Companies]    Script Date: 12/28/2023 9:28:47 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Companies](
	[Rank] [varchar](max) NULL,
	[Name] [varchar](max) NULL,
	[Industry] [varchar](max) NULL,
	[Revenue (USD millions)] [varchar](max) NULL,
	[Revenue growth] [varchar](max) NULL,
	[Employees] [varchar](max) NULL,
	[Headquarters] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO


