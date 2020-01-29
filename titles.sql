USE [Homework]
GO

/****** Object:  Table [dbo].[titles]    Script Date: 1/28/2020 7:47:10 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[titles](
	[emp_no] [int] NOT NULL,
	[title] [nvarchar](50) NOT NULL,
	[from_date] [datetime2](7) NOT NULL,
	[to_date] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO

