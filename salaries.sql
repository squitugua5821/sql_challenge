USE [Homework]
GO

/****** Object:  Table [dbo].[salaries]    Script Date: 1/28/2020 7:47:01 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[salaries](
	[emp_no] [int] NOT NULL,
	[salary] [int] NOT NULL,
	[from_date] [datetime2](7) NOT NULL,
	[to_date] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO

