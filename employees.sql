USE [Homework]
GO

/****** Object:  Table [dbo].[employees]    Script Date: 1/28/2020 7:46:48 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[employees](
	[emp_no] [int] NOT NULL,
	[birth_date] [datetime2](7) NOT NULL,
	[first_name] [nvarchar](50) NOT NULL,
	[last_name] [nvarchar](50) NOT NULL,
	[gender] [nvarchar](50) NOT NULL,
	[hire_date] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO

