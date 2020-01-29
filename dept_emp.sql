USE [Homework]
GO

/****** Object:  Table [dbo].[dept_emp]    Script Date: 1/28/2020 7:46:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[dept_emp](
	[emp_no] [int] NOT NULL,
	[dept_no] [nvarchar](50) NOT NULL,
	[from_date] [datetime2](7) NOT NULL,
	[to_date] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO

