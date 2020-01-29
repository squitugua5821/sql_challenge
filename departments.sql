USE [Homework]
GO

/****** Object:  Table [dbo].[departments]    Script Date: 1/28/2020 7:43:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[departments](
	[dept_no] [nvarchar](50) NOT NULL,
	[dept_name] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO

