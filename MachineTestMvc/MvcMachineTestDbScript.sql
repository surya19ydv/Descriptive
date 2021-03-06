Create database [db_test]
GO

USE [db_test]
GO
/****** Object:  Table [dbo].[TblCategory]    Script Date: 2/25/2022 9:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblCategory](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryName] [varchar](350) NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TblProduct]    Script Date: 2/25/2022 9:04:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TblProduct](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[productName] [varchar](350) NULL,
 CONSTRAINT [PK_TblProduct] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[TblCategory] ON 

INSERT [dbo].[TblCategory] ([id], [categoryName]) VALUES (1, N'BarBQ     ')
INSERT [dbo].[TblCategory] ([id], [categoryName]) VALUES (2, N'Fast Food ')
INSERT [dbo].[TblCategory] ([id], [categoryName]) VALUES (3, N'Bakery    ')
INSERT [dbo].[TblCategory] ([id], [categoryName]) VALUES (4, N'Seafood   ')
INSERT [dbo].[TblCategory] ([id], [categoryName]) VALUES (5, N'Desi Food')
INSERT [dbo].[TblCategory] ([id], [categoryName]) VALUES (7, N'Chines Food')
SET IDENTITY_INSERT [dbo].[TblCategory] OFF
SET IDENTITY_INSERT [dbo].[TblProduct] ON 

INSERT [dbo].[TblProduct] ([id], [categoryId], [productName]) VALUES (1, 1, N'Chicken tikka')
INSERT [dbo].[TblProduct] ([id], [categoryId], [productName]) VALUES (2, 1, N'malai boti')
INSERT [dbo].[TblProduct] ([id], [categoryId], [productName]) VALUES (3, 2, N'Zinger burger')
INSERT [dbo].[TblProduct] ([id], [categoryId], [productName]) VALUES (4, 2, N'club sandwich special')
INSERT [dbo].[TblProduct] ([id], [categoryId], [productName]) VALUES (5, 2, N'Chicken roll')
INSERT [dbo].[TblProduct] ([id], [categoryId], [productName]) VALUES (7, 3, N'Biryani')
SET IDENTITY_INSERT [dbo].[TblProduct] OFF
