USE [Homework]
GO

/****** Object:  Table [dbo].[dept_manager]    Script Date: 1/28/2020 7:46:35 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dept_manager](
	[dept_no] [nvarchar](50) NOT NULL,
	[emp_no] [int] NOT NULL,
	[from_date] [datetime2](7) NOT NULL,
	[to_date] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO

