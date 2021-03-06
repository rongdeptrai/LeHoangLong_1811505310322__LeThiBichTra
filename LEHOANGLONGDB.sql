USE [LeHoangLong]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 6/20/2021 11:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2021 11:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [varchar](50) NOT NULL,
	[CategoryName] [nvarchar](50) NULL,
	[Description] [nvarchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2021 11:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](50) NULL,
	[UnitCost] [decimal](18, 0) NULL,
	[Quantity] [int] NULL,
	[ProductImg] [nvarchar](max) NULL,
	[ProductDes] [nvarchar](200) NULL,
	[ProductStatus] [bit] NULL,
	[CategoryID] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 6/20/2021 11:57:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[CusID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[FullName] [nvarchar](50) NOT NULL,
	[Status] [bit] NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([Username], [Password]) VALUES (N'admin', N'21232f297a57a5a743894a0e4a801fc3')
GO
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (N'AR', N'Android', N'Điện thoại Android')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (N'IP', N'Iphone', N'Điện thoại Iphone')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (N'LT', N'LapTop', N'Máy tính xách tay')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (N'PC', N'Máy để bàn', N'Máy để bàn ')
INSERT [dbo].[Category] ([CategoryID], [CategoryName], [Description]) VALUES (N'PK', N'Phụ kiện ', N'Phụ kiện máy tính, điện thoại')
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (1, N'LapTop Dell', CAST(1800000 AS Decimal(18, 0)), 6, N'~/Assets/Upload/Asus.jpg', N'LapTop dell giá rẻ', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (2, N'LaptopAsus', CAST(12222222 AS Decimal(18, 0)), 444, N'~/Assets/Upload/lt.jpg', N'ssd 252gb itelcore i5', 0, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (3, N'LaptopAsus', CAST(12222222 AS Decimal(18, 0)), 2, N'~/Assets/Upload/lt.jpg', N'ssd 252gb itelcore i5', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (4, N'Iphone 12 ProMAx', CAST(12222222 AS Decimal(18, 0)), 5, N'~/Assets/Upload/IP12XD.jpg', N'Màu Xanh Đen', 1, N'IP')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (5, N'LaptopAsus', CAST(100000 AS Decimal(18, 0)), 2, N'~/Assets/Upload/lg-gram-17-i7-1165g7-16gb-512gb-win10-17z90p.jpg', N'ssd 252gb itelcore i5', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (6, N'Laptop Hp noteBook', CAST(2500000 AS Decimal(18, 0)), 55, N'~/Assets/Upload/Asus.jpg', N'ssd 252gb itelcore i5', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (7, N'Dien Thoai Iphone10', CAST(13000000 AS Decimal(18, 0)), 34, N'~/Assets/Upload/IP12XD.jpg', N'Dien thoai pro proooooo', 1, N'IP')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (8, N'Apple MacBook Pro M1 2020', CAST(31900000 AS Decimal(18, 0)), 5, N'~/Assets/Upload/apple-macbook-pro-2020-m1-myd82saa.jpg', N'Giá rẻ, Space Grey(MYD82SA/A)', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (9, N'HP Pavilion Gaming', CAST(24640000 AS Decimal(18, 0)), 1, N'~/Assets/Upload/hp-pavilion.jpg', N'Laptop gaming i7 10750H', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (10, N'LeNoVo', CAST(49999000 AS Decimal(18, 0)), 2, N'~/Assets/Upload/lenovo-yoga-9-14itl5-i7-82bg006evn.jpg', N'Lenovo Yoga 9 i71185G', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (11, N'Mac Book M1 Gold ', CAST(31500000 AS Decimal(18, 0)), 3, N'~/Assets/Upload/apple-macbook-air-2020-m1-mgn73saa.jpg', N'Mac Book M1 Gold 2020', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (13, N'LaptopAsus', CAST(12222222 AS Decimal(18, 0)), 3, N'~/Assets/Upload/hp-pavilion.jpg', N'ssd 252gb itelcore i5', 1, N'PC')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (14, N'Laptop Hp noteBook', CAST(12222222 AS Decimal(18, 0)), 5, N'~/Assets/Upload/lenovo-yoga-9-14itl5-i7-82bg006evn.jpg', N'55', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (15, N'LG G9', CAST(24640000 AS Decimal(18, 0)), 2, N'~/Assets/Upload/apple-macbook-air-2020-m1-mgn73saa.jpg', N'ssd 252gb itelcore i5', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (16, N'Laptop Hp noteBook', CAST(24640000 AS Decimal(18, 0)), 22, N'~/Assets/Upload/apple-macbook-pro-2020-m1-myd82saa.jpg', N'ssd 252gb itelcore i5', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (17, N'Laptop Hp noteBook', CAST(24640000 AS Decimal(18, 0)), 22, N'~/Assets/Upload/apple-macbook-pro-2020-m1-myd82saa.jpg', N'ssd 252gb itelcore i5', 1, N'LT')
INSERT [dbo].[Product] ([ProductID], [ProductName], [UnitCost], [Quantity], [ProductImg], [ProductDes], [ProductStatus], [CategoryID]) VALUES (18, N'Laptop Hp noteBook', CAST(24640000 AS Decimal(18, 0)), 21, N'~/Assets/Upload/lg-gram-17-i7-1165g7-16gb-512gb-win10-17z90p.jpg', N'ssd 252gb itelcore i5', 1, N'LT')
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([CusID], [UserName], [Password], [FullName], [Status]) VALUES (1020, N'Admin', N'9b7833e51a8574ace0bdb6f76eb9a952', N'Lee Hoang Long', 1)
INSERT [dbo].[UserAccount] ([CusID], [UserName], [Password], [FullName], [Status]) VALUES (1, N'Long', N'8394f0347c184cf156ac5924dccb773b', N'Lê Hoàng Long', 1)
INSERT [dbo].[UserAccount] ([CusID], [UserName], [Password], [FullName], [Status]) VALUES (1023, N'long2806', N'9b7833e51a8574ace0bdb6f76eb9a952', N'Long Lê Hoàng', 1)
INSERT [dbo].[UserAccount] ([CusID], [UserName], [Password], [FullName], [Status]) VALUES (1026, N'Phuoc', N'46f71d1d185d48711a73dd2cdbba2e08', N'Mai Văn Phước', 1)
INSERT [dbo].[UserAccount] ([CusID], [UserName], [Password], [FullName], [Status]) VALUES (1027, N'Thang', N'46f71d1d185d48711a73dd2cdbba2e08', N'Hồ Đức Thắng', 1)
INSERT [dbo].[UserAccount] ([CusID], [UserName], [Password], [FullName], [Status]) VALUES (1028, N'Vien', N'e9510081ac30ffa83f10b68cde1cac07', N'Lê Xuân Viên', 1)
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_ProductStatus]  DEFAULT ((1)) FOR [ProductStatus]
GO
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
