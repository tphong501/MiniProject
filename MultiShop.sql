CREATE DATABASE [MultiShop]
GO
USE [MultiShop]
GO

/****** Object:  Table [dbo].[Address]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](20) NOT NULL,
	[Lastname] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Phone] [varchar](13) NOT NULL,
	[Provincial] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](100) NOT NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Position] [nvarchar](50) NULL,
	[StartDay] [date] NULL,
	[User_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Favorites]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Favorites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Date] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manufactures]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manufactures](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Information] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Address_Id] [int] NOT NULL,
	[Color_Id] [int] NULL,
	[Size_Id] [int] NULL,
	[Quality] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[Method] [bit] NOT NULL,
	[Name] [varchar](6) NULL,
	[Status] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Cate]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Cate](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Cate_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Color]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Color](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Product_Id] [int] NOT NULL,
	[Color_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product_Size]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product_Size](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Product_Id] [int] NOT NULL,
	[Size_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Image] [nvarchar](100) NOT NULL,
	[Price] [int] NOT NULL,
	[Origin] [nvarchar](100) NOT NULL,
	[Material] [nvarchar](100) NOT NULL,
	[Status] [bit] NULL,
	[Describe] [nvarchar](max) NOT NULL,
	[Review] [nvarchar](max) NULL,
	[Manu_Id] [int] NOT NULL,
	[Views] [int] NULL,
	[ManuDay] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Role]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Id] [int] NOT NULL,
	[Role_Id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 6/16/2021 6:36:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](36) NOT NULL,
	[Password] [varchar](125) NOT NULL,
	[Fullname] [nvarchar](125) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 

INSERT [dbo].[Address] ([Id], [Firstname], [Lastname], [Email], [Phone], [Provincial], [Address], [User_Id]) VALUES (1, N'Nguyễn', N'Tấn Khang', N'khangtan123@gmail.com', N'0922223321', N'Hồ Chí Minh', N'320/11 Xa lộ Hà Nội, Phường Nguyễn Thi Phương, Quận 12, Tp.HCM', 9)
INSERT [dbo].[Address] ([Id], [Firstname], [Lastname], [Email], [Phone], [Provincial], [Address], [User_Id]) VALUES (2, N'Khoa', N'Pham', N'khoahoanghh@gmail.com', N'+84832977767', N'Ho Chi Minh', N'Thu Duc, Tp. HCM', 12)
INSERT [dbo].[Address] ([Id], [Firstname], [Lastname], [Email], [Phone], [Provincial], [Address], [User_Id]) VALUES (3, N'Phạm', N'Hoàng Khoa', N'khoaphps12540@fpt.edu.vn', N'0122223332', N'Bình Phước', N'520/3/1 quốc lộ 13, phường Hiệp Bình Phước, Thủ Đức, Tp.HCM', 11)
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (1, N'Giày thời trang', N'cat-3.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (2, N'Quần áo nữ', N'cat-1.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (4, N'Mỹ phẩm', N'cat-4.jpg')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (5, N'Áo Khoác Nam', N'ackhoac.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (6, N'Áo Sơ Mi Nam', N'aosominam.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (7, N'Áo Thun', N'aothun.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (8, N'Túi Thời Trang Nữ', N'tuixach.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (9, N'Áo Hoodies', N'hoodies.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (10, N'Quần Thời Trang', N'quan.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (11, N'Đồng Hồ & Trang Sức', N'dongho.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (12, N'Đồ Đôi', N'dodoi.PNG')
INSERT [dbo].[Categories] ([Id], [Name], [Image]) VALUES (13, N'Phụ Kiện', N'cat-2.jpg')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Colors] ON 

INSERT [dbo].[Colors] ([Id], [Name]) VALUES (1, N'Đỏ')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (2, N'Xanh')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (4, N'Hồng')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (5, N'Tím')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (6, N'Trắng')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (7, N'Xanh đen')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (8, N'Xanh Than')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (10, N'Vàng Be')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (11, N'Đen')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (15, N'kem')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (16, N'Nâu')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (17, N'Xanh Lá')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (18, N'Vàng Đậm')
INSERT [dbo].[Colors] ([Id], [Name]) VALUES (19, N'Bạc')
SET IDENTITY_INSERT [dbo].[Colors] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (1, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 9)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (2, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 12)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (4, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 15)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (5, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 18)
INSERT [dbo].[Employees] ([Id], [Position], [StartDay], [User_Id]) VALUES (6, N'Kỹ sư phần mềm', CAST(N'2021-06-02' AS Date), 20)
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Favorites] ON 

INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (2, 9, 3, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (11, 9, 4, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (12, 11, 3, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (13, 11, 8, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (9, 9, 8, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (14, 11, 7, CAST(N'2021-06-16' AS Date))
INSERT [dbo].[Favorites] ([Id], [User_Id], [Product_Id], [Date]) VALUES (15, 9, 18, CAST(N'2021-06-16' AS Date))
SET IDENTITY_INSERT [dbo].[Favorites] OFF
GO
SET IDENTITY_INSERT [dbo].[Manufactures] ON 

INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (1, N'Chanel', N'864678.jpg', N'Chanel là tên thông dụng của một hãng thời trang Pháp, đóng tại thủ đô Paris được Coco Chanel sáng lập. Theo Forbes, công ty Chanel thuộc sở hữu của Alain Wertheimer và Gerard Wertheimer, cả hai là cháu của đối tác ban đầu của Chanel Pierre Wertheimer.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (2, N'Louis Vuitton', N'louis-vuitton-logo.jpg', N'Công ty Louis Vuitton là một công ty và nhãn hiệu thời trang xa xỉ của Pháp, có trụ sở tại Paris, Pháp. Đây là một ban của công ty cổ phần Pháp LVMH Louis Vuitton Moët Hennessy S.A.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (3, N'Givenchy', N'givenchy.png', N'Givenchy là một nhãn hiệu thời trang, dầu thơm và mỹ phẩm ở Pháp. Givenchy được thành lập năm 1952 do Hubert de Givenchy và là một thành viên của Chambre Syndicale de la Haute Couture et du Pret-a-Porter. Nó trực thuộc tiệm LVMH và trong năm 1993 có mộ thương số là $176 triệu.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (4, N'Hermes Paris', N'hermes.jpg', N'Hermès là một công ty thời trang xa xỉ có trụ sở ở Paris, Pháp. Công ty được sáng lập bởi Thierry Hermès vào năm 1837, ngày nay chuyên sản xuất hàng da, phụ kiện thời trang, nước hoa, hàng xa xỉ, và quần áo may sẵn. Logo của công ty từ những năm 1950, là một chiếc xe ngựa. ')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (5, N'Versace', N'Versace.png', N'Được thành lập vào năm 1978 bởi ngôi sao nhạc rock Gianni Versace, Versace ngày nay là một trong các đầu tàu của xu hướng thời trang cao cấp và đồng thời là một trong những thương hiệu có tầm ảnh hưởng nhất quốc tế.
')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (6, N'Nike', N'nike.jpg', N'Nike, Inc. là một tập đoàn đa quốc gia của Mỹ hoạt động trong lĩnh vực thiết kế, phát triển, sản xuất, quảng bá cũng như kinh doanh các mặt hàng giày dép, quần áo, phụ kiện, trang thiết bị và dịch vụ liên quan đến thể thao. Trụ sở của công ty được đặt gần Beaverton, Oregon, tại khu vực đô thị Portland.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (7, N'Dolce & Gabbana', N'3204827.jpg', N'Thương hiệu Dolce & Gabbana được 2 nhà thiết kế thời trang người Ý là Domenico Dolce và Stefano Gabbana thành lập vào năm 1985. Đây là thương hiệu thời trang cao cấp được nhiều ngôi sao Hollywood tin dùng như Madona, Gisele Bundchen, Monica Bellucci, Isabella Rossellini, v.v…')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (8, N'Gucci', N'gucci.png', N'The House of Gucci, hay được biết đến ngắn gọn là Gucci, là một biểu tượng thời trang sở hữu bởi Ý và Pháp, một nhãn hiệu đồ da nổi tiếng. Gucci được thành lập vào năm 1921 bởi Guccio Gucci tại Florence, Tuscany năm 1921.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (9, N'Prada', N'915770.jpg', N'Prada là một nhãn hiệu thời trang của Ý chuyên về các sản phẩm cao cấp cho nam và nữ, nhãn hiệu Prada được thành lập bởi Mario Prada năm 1913. Prada được xem là một trong những nhà thiết kế có ảnh hưởng nhất trong ngành công nghiệp thời trang.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (10, N'Armani', N'2946220.jpg', N'Giorgio Armani là nhà thiết kế thời trang Ý được thành lập năm 1975. Armani là một trong những thương hiệu thời trang cao cấp quyền lực nhất trên thế giới, và có rất nhiều công ty chi nhánh trực thuộc Armani như Emporio Armani, Armani Jeans, Armani Exchange, Armani Collezioni và Casa để có thể đáp ứng được mọi nhu cầu khác nhau của các phân khúc thị trường thời trang.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (11, N'Adidas', N'387714.jpg', N'Adidas Limited AG là một thương hiệu chuyên sản xuất các sản phẩm thời trang, thiết bị, dụng cụ thể thao đến từ Đức, một thành viên của tập đoàn adidas Group, bao gồm cả công ty dụng cụ thể thao Reebok, công ty golf Taylormade, công ty sản xuất bóng golf Maxfli và adidas Golf. adidas là nhà sản xuất sản phẩm thể thao ...')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (12, N'Lacoste', N'5598158.jpg', N'Lacoste là một công ty quần áo may sẵn Pháp được thành lập vào năm 1933 chuyên bán các loại quần áo cao cấp, giày dép, nước hoa, đồ da, đồng hồ, kính mát và nổi tiếng nhất với các loại áo thun thể thao. Trong những năm gần đây, Lacoste đã sản xuất các dòng sản phẩm như khăn trải giường và khăn tắm.')
INSERT [dbo].[Manufactures] ([Id], [Name], [Image], [Information]) VALUES (13, N'Converse', N'1176598.jpg', N'Converse là một công ty giày của Mỹ chuyên sản xuất giày trượt ván, giày dép thường ngày và quần áo. Được thành lập vào năm 1908, đến này Converse đã trở thành một công ty con của Nike, Inc. kể từ năm')
SET IDENTITY_INSERT [dbo].[Manufactures] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (23, 4, 2, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (24, 6, 2, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (26, 3, 3, NULL, NULL, 3, CAST(N'2021-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (27, 7, 3, NULL, NULL, 2, CAST(N'2021-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (28, 8, 3, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 0, N'938025', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (31, 3, 1, 2, 13, 1, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (30, 20, 1, 11, 13, 1, CAST(N'2021-06-16' AS Date), 1, N'153733', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (32, 5, 1, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (33, 6, 1, 2, 15, 1, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (34, 9, 1, 18, 14, 2, CAST(N'2021-06-16' AS Date), 0, N'237926', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (35, 6, 1, 2, 15, 1, CAST(N'2021-06-16' AS Date), 0, N'600736', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (36, 8, 1, 6, 5, 1, CAST(N'2021-06-16' AS Date), 0, N'600736', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (37, 11, 1, 10, 15, 1, CAST(N'2021-06-16' AS Date), 0, N'600736', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (38, 3, 1, 2, 13, 1, CAST(N'2021-06-16' AS Date), 1, N'494828', 0)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (25, 7, 2, NULL, NULL, 2, CAST(N'2021-06-16' AS Date), 1, N'130961', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (39, 3, 1, 2, 13, 2, CAST(N'2021-06-16' AS Date), 0, N'447161', 1)
INSERT [dbo].[Orders] ([Id], [Product_Id], [Address_Id], [Color_Id], [Size_Id], [Quality], [Date], [Method], [Name], [Status]) VALUES (40, 5, 1, NULL, NULL, 1, CAST(N'2021-06-16' AS Date), 0, N'447161', 1)
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Cate] ON 

INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (2, 3, 1)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (4, 1, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (5, 5, 4)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (6, 6, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (7, 4, 10)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (8, 7, 10)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (9, 6, 10)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (10, 5, 10)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (11, 11, 10)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (12, 8, 10)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (13, 10, 6)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (14, 1, 5)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (15, 3, 6)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (16, 12, 7)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (17, 9, 9)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (18, 15, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (19, 13, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (20, 14, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (21, 13, 7)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (22, 9, 7)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (23, 16, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (24, 17, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (25, 18, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (26, 20, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (27, 19, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (28, 21, 2)
INSERT [dbo].[Product_Cate] ([id], [Product_Id], [Cate_Id]) VALUES (29, 22, 2)
SET IDENTITY_INSERT [dbo].[Product_Cate] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Color] ON 

INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (2, N'vestnamxanh.PNG', 1, 2)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (3, N'quankakixanhthan.PNG', 11, 8)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (5, N'quankakivangbe.PNG', 11, 10)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (6, N'quankakiden.PNG', 11, 11)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (8, N'aohumedo.PNG', 18, 1)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (12, N'aothuntraitimden.PNG', 20, 11)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (15, N'anthunnu.PNG', 13, 11)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (16, N'aosominukem.PNG', 15, 15)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (17, N'aothuntraitim.PNG', 20, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (18, N'aothunnugumacvang.PNG', 19, 10)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (19, N'aothunnugumac.PNG', 19, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (20, N'aocadigannau.PNG', 17, 16)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (21, N'aocadigan.PNG', 17, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (22, N'aohume.PNG', 18, 17)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (23, N'quantaynugach.PNG', 21, 16)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (24, N'quantaynu.PNG', 21, 11)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (25, N'jogger.PNG', 8, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (26, N'quanshort.PNG', 6, 2)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (27, N'quanshortkaki.PNG', 6, 16)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (28, N'aopolo.PNG', 9, 18)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (29, N'aosominam.PNG', 10, 19)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (30, N'aosomi.PNG', 10, 16)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (31, N'namkaki.PNG', 4, 2)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (32, N'namcaro.PNG', 3, 2)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (33, N'damthun.PNG', 14, 17)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (34, N'aothun.PNG', 12, 6)
INSERT [dbo].[Product_Color] ([Id], [Image], [Product_Id], [Color_Id]) VALUES (35, N'aohumedo.PNG', 22, 2)
SET IDENTITY_INSERT [dbo].[Product_Color] OFF
GO
SET IDENTITY_INSERT [dbo].[Product_Size] ON 

INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (4, 1, 5)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (41, 1, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (42, 20, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (43, 20, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (44, 19, 14)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (45, 19, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (46, 19, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (47, 17, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (48, 17, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (49, 17, 14)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (50, 18, 14)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (51, 3, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (52, 4, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (53, 18, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (54, 18, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (55, 21, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (56, 21, 14)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (57, 21, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (58, 8, 5)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (59, 8, 7)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (60, 6, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (61, 6, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (62, 9, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (63, 9, 14)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (64, 9, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (65, 10, 14)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (66, 10, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (67, 15, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (68, 15, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (69, 14, 5)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (70, 12, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (71, 12, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (72, 11, 13)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (73, 11, 15)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (74, 11, 14)
INSERT [dbo].[Product_Size] ([Id], [Product_Id], [Size_Id]) VALUES (75, 22, 7)
SET IDENTITY_INSERT [dbo].[Product_Size] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (1, N'Áo Vest Thời Trang Nam', N'aovest.PNG', 30000, N'Việt Nam', N'Cotton', 1, N'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', N'', 1, 0, CAST(N'2021-06-08' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (3, N'Áo Sơ Mi Nam Caro Cao Cấp Ngắn Tay', N'namcaro.PNG', 315000, N'Việt Nam', N'Cotton', 1, N'Thiết kế tay áo ngắn, form suông tạo cảm giác thoải mái khi mặc, kiểu áo này không kén người mặc và còn có thể che khuyết điểm rất tốt.
Áo may từ vải Cotton 100% cao cấp nên rất mềm mại, co giãn và thấm hút mồ hôi tốt mang lại sự thoáng mát khi mặc.', N'', 9, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (4, N'Quần Đùi Nam Kaki', N'namkaki.PNG', 120000, N'Việt Nam', N'Kaki', 1, N'Mỗi khi mùa hè ghé qua, items Quần Đùi Nam Kaki 6 Màu Trẻ Trung Phong Cách Hàn Quốc VICERO luôn được các chàng trai ưu ái trong tủ đồ của mình. Nếu như những chiếc quần dài làm bạn cảm thấy bí bức, khó chịu thì những chiếc quần đùi kaki (6 màu hàn quốc) chắc chắn sẽ mang đến sự thoải mái, dễ chịu. Chất liệu vải kaki đẹp, mềm, mịn, khả năng thấm hút mồ hôi tốt luôn tạo cảm giác mát mẻ, thoải mái khi mặc.. Chất vải kaki tuy mộc mạc, tự nhiên nhưng không đơn điệu mang đến cho nam giới phong cách thời trang lịch lãm không quá cầu kì. Từng đường may tinh tế, chỉn chu, màu sắc đa dạng, tươi mát chắc chắn sẽ làm vừa lòng những chàng trai khó tính nhất. Bạn có thể diện quần đùi kaki nam đi chơi, đi dạo, đi biển,...đều NỔI BẬT VÀ PHONG CÁCH. Hãy SỞ HỮU NGAY MỘT CHIẾC Quần Đùi Nam Kaki 6 Màu Trẻ Trung Phong Cách Hàn Quốc VICERO về tủ đồ của bạn nhé!', N'', 1, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (5, N'Quần Short Nam 5S Premium', N'quanshort.PNG', 214500, N'Việt Nam', N'98% Cotton, 2% spandex', 1, N'Quần short nam 5S được may từ chất liệu vải cao cấp, thấm hút mồ hôi cực tốt và co giãn vừa phải, không bai không xù sau một thời gian dài sử dụng. Sản phẩm được thiết kế đơn giản, dễ dàng phối cùng áo thun hoặc áo sơ mi để mang đến cho phái mạnh nét trẻ trung, nam tính.', N'', 5, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (6, N'Blentino Quần Short Ngắn ', N'quanshortkaki.PNG', 395000, N'Việt Nam', N'Kaki', 1, N'Với định hướng rõ ràng về chiến lược, quy mô và đặc biệt là tiêu chí phục vụ khách hàng, các cán bộ, công nhân viên của Phúc Quang Minh được tuyển chọn là đội ngũ nhân sự có trình độ, tay nghề cao. Môi trường làm việc chuyên nghiệp, hệ thống dây chuyền, may móc thiết bị hiện đại, quy trình kiểm soát chất lượng nghiêm túc, tỉ mỉ đến từng sản phẩm. Phúc Quang Minh đã dần khẳng định, giữ vững và liên tục nâng cao vị trí của mình trong làng thời trang Việt. Ngoài các Showroom chính, thương hiệu còn có hệ thống phân phối với gần 120 cửa hàng và đại lý nhượng quyền trên toàn quốc. Nhờ mô hình trực tiếp sản xuất và phân phối, lược bỏ các khâu trung gian, sản phẩm của Công ty Phúc Quang Minh tới tận tay người tiêu dùng luôn ở mức giá hợp lý nhất, phù hợp với đa số thu nhập của người tiêu dùng Việt Nam', N'', 1, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (7, N'Quần Kaki Nam Aristino2', N'kakinam.PNG', 625000, N'Việt Nam', N'Kaki', 1, N'Bạn mong muốn sở hữu mãu quần kaki hoàn hảo thì không thể không nhắc tới mẫu . Với phom dáng slimfit ôm sát tôn lên form dáng của người mặc, mang lại sự trẻ trung, năng động. Luôn đổi mới công nghệ bắt kịp xu hướng đem lại những sản phẩm có chất lượng cao, chống bám bụi, lưu giữ phom dáng hoàn hảo theo thời gian.', N'', 1, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (8, N'Quần JOGGER M1QJT2031001', N'jogger.PNG', 195000, N'Việt Nam', N'Vải tổng hợp', 1, N'Quần jogger nam được may từ chất liệu vải cao cấp, thấm hút mồ hôi cực tốt và co giãn vừa phải, không bai không xù sau một thời gian dài sử dụng. Sản phẩm được thiết kế đơn giản, dễ dàng phối cùng áo thun hoặc áo sơ mi để mang đến cho phái mạnh nét trẻ trung, nam tính.', N'', 1, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (9, N' Áo POLO M2ATP2051002', N'aopolo.PNG', 295000, N'Việt Nam', N'Polo', 1, N'Sản phẩm được thiết kế độc quyền bởi thương hiệu 5S với hệ thống hơn 20 showrooms trên toàn quốc tại: Thái Bình, Quảng Ninh, Nam Định, Quảng Ngãi, Bắc Ninh, Thái Nguyên,', N'', 1, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (10, N'Áo Sơ Mi Nam LAVIC-5231', N'aosomi.PNG', 92000, N'Việt Nam', N'Cotton', 1, N'Hạn chế sử dụng máy sấy và ủi ở nhiệt độ thích hợp. LAVIC CAM KẾT Sản phẩm Áo sơ mi tay dài nam giấu nút LAVIC form suông 100% giống mô tả. Hình ảnh sản phẩm là ảnh thật do shop tự chụp và giữ bản quyền hình ảnh Đảm bảo vải chất lượng 100% Áo được kiểm tra kĩ càng, cẩn thận và tư vấn nhiệt tình trước khi gói hàng giao cho Quý Khách Hàng có sẵn, giao hàng ngay khi nhận được đơn Hoàn tiền nếu sản phẩm không giống với mô tả Chấp nhận đổi hàng khi size không vừa Giao hàng trên toàn quốc. Điều kiện áp dụng (trong vòng 07 ngày kể từ khi nhận sản phẩm)', N'', 1, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (11, N'Quần Jogger Nam Kaki', N'quankakiden.PNG', 119000, N'Việt Nam', N'Kaki', 1, N'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', N'Quần Jogger Nam Kaki Thời Trang 4 Màu Phong Cách Thể Thao VICERO
CHÍNH SÁCH
Là khách hàng của VICERO, bạn sẽ được:
Cam kết chất lượng và mẫu mã sản phẩm giống với hình ảnh.
Hoàn tiền nếu sản phẩm không giống với mô tả.
HƯỚNG DẪN CÁCH ĐẶT HÀNG
Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE
Mã sản phẩm đã có trong ảnh
Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau
- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng
- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán”
Shop luôn sẵn sàng trả lời inbox để tư vấn
THÔNG TIN CHI TIẾT
Tên Sản phẩm: Quần Jogger Nam Kaki Thời Trang 4 Màu Phong Cách Thể Thao VICERO
Chất liệu: vải kaki
Màu sắc: Đen, xanh than, xanh bộ đội, vàng be

Thương hiệu: VICERO
Xuất xứ: Việt Nam

------------------------------------

Chất vải kaki mềm mịn, đẹp, bền, không bai, không xù, không bám dính
Đường may tinh tế, chỉn chu, khéo léo
Màu sắc đa dạng, trẻ trung
Chất lượng sản phẩm tốt
Bảng Size:
Size M-29:cao 1m6-1m65,nặng 50-57kg
Size L-30:Cao 1m66-1m70,nặng 57-61kg
Size XL-31:Cao 1m70-1m74,nặng 62-69kg
Size XXL-32:Cao 1m74-1m77,nặng 70-75kg

', 2, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (12, N'Áo Thun Nam Polo Zero', N'aothun.PNG', 119000, N'Hàn Quốc', N'Thun', 1, N'Chỉ cần biết chọn cho mình những chiếc Áo Phông Nam Polo Có Cổ Tay Ngắn Trơn phù hợp với dáng người là có thể đem lại cảm giác tự tin ngay trong mọi hoàn cảnh.. Nhất là khi mùa hè đến thì chiếc áo phông nam có cổ tay ngắn polo trơn lại càng được lòng nam giới. May gia công tỉ mỉ từ 100% vải cotton cao cấp được xử lý bằng công nghệ Coolmate pha Spandex mềm mát, thoáng khí, thấm hút mồ hôi tốt , co giãn nhẹ nhàng, tạo cảm giác thoải mái trong mọi hoạt động. Áo phông nam tay ngắn có thiết kế kiểu cơ bản với dáng suông nhưng vẫn đủ tinh tế, thanh lịch và khỏe khoắn. 4 màu sắc trẻ trung,thời thượng, dễ dàng phối cùng quần jeans hoặc shorts, giày thể thao hoặc giày lười, diện đi làm hay đi chơi, gặp gỡ bạn bè đều phù hợp.', N'', 2, 0, CAST(N'2021-06-04' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (13, N'Áo Thun Nữ Unisex', N'anthunnu.PNG', 39000, N'Việt Nam', N'Thun', 1, N'Áo thun tay lỡ nữ là mẫu áo phông form rộng cực kỳ phổ biến. Áo thun freesize nên tương đối dễ mặc, dễ phối đồ, phù hợp với tất cả hoàn cảnh. Áo có cổ kiểu dáng thanh lịch hơn, nhưng vẫn trẻ trung năng động. Áo có thể mặc đi chơi, đi học, đi du lịch, ngoài ra có thể mặc nhóm, áo lớp, áo cặp.', N'', 5, 0, CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (14, N'Đầm Suông Nữ Sát Nách GUMAC', N'damthun.PNG', 240000, N'Việt Nam', N'Tơ Xước', 1, N'BST đầm với những thiết kế có form sắc sảo và thiết kế hoạ tiết đầy tinh tế, toát lên thần thái tiểu thư, sang trọng nhưng không làm mất đi vẻ ngọt ngào, quyến rũ của người phụ nữ . Tôn vinh nét đẹp dịu dàng thanh cao của phái đẹp. Hãy lựa chọn cuộc sống thanh lịch mà vẫn thật thoải mái, chọn GU cho riêng mình mà siêu tiết kiệm để luôn là người phụ nữ xinh đẹp và tự tin nhất nhé', N'', 2, 0, CAST(N'2021-06-11' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (15, N'Áo Sơ Mi Nữ Tay Raglan GUCCI', N'aosominu.PNG', 149000, N'Hàn Quốc', N'Lụa Ý', 1, N'Áo sơ mi nữ công sở GUMAC được thiết kế với chất liệu mềm mịn êm ái, nhẹ nhàng, thoáng mát không gây cảm giác khó chịu khi mặc. Kiểu dáng mang đến nét duyên dáng, thanh lịch cho bạn gái.
Thiết kế tôn lên những đường nét quyến rũ, cuốn hút, là lựa chọn không thể bỏ qua của phái đẹp trong thời trang công sở, văn phòng, học tập
Những hiết kế thanh lịch sản phẩm hứa hẹn sẽ cùng bạn tỏa sáng trên mọi bước chân bạn qua, dù là chốn văn phòng, góc phố cuối tuần hay trong trường học, bạn sẽ tỏa sáng theo cách riêng của mình.', N'', 8, 0, CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (16, N'Áo Voan Kiểu Nữ', N'aovoan.PNG', 59000, N'Việt Nam', N'Vật liệu khác', 1, N'Giá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Tuy nhiên tuỳ vào từng loại sản phẩm hoặc phương thức, địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, ...', N'', 5, 0, CAST(N'2021-06-10' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (17, N'Áo Khoác Cadigan Bomber ', N'aocadigan.PNG', 108000, N'Hàn Quốc', N'Nỉ', 1, N'Áo khoác bomber được thiết kế tinh tế với màu sắc khác nhau, tùy theo sở thích mà bạn lựa chọn. Đường may áo rất tỉ mỉ, chất liệu cotton mềm mịn đẹp, không xù, form dáng khỏe khoắn tạo cảm giác thoải mái và phong cách trẻ trung, lịch lãm cho người mặc.', N'', 3, 0, CAST(N'2021-06-09' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (18, N'Quần Áo Thời Trang Hume', N'aohume.PNG', 225000, N'Việt Nam', N'Cotton', 1, N'Với thiết kế độc đáo, sang trọng mẫu set ngắn này chắc chắn không làm khách yêu thất vọng, sự kết hợp hài hòa của áo sát nách cùng áo 2 dây phối quần short có túi, đồng thời xòe ở điểm eo không những che đi khuyết điểm mà còn tôn trọn dáng người mặc, chất liệu không co giãn nhưng vẫn tạo được cảm giác thoải mái.

Set rất dễ mặc và tôn dáng, bộ được thiết kế trẻ trung và năng động

Chất liệu vải vừa phải không mỏng cũng không dày nên phù hợp với thời tiết của Việt Nam', N'', 3, 0, CAST(N'2021-06-11' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (19, N'Áo Thun Nữ GUMAC ATB461', N'aothunnugumac.PNG', 135000, N'Hàn Quốc', N'Cotton 2 Chiều', 1, N'Màu sắc tươi sáng, nổi bật lôi cuốn đầy mê hoặc cho nàng thêm xinh xắn rạng ngời mỗi khi diện sản phẩm.
Áo thun chắc chắn là một món đồ không thể thiếu trong tủ đồ của các bạn gái, bởi áo thun mang đến cho người mặc cảm giác thoải mái, dễ chịu trẻ trung đặc biệt áo thun không bao giờ lỗi mốt, bạn có thể kết hợp được với nhiều đồ như quần bò, chân váy short, giày hay dép cao gót tạo nên hình ảnh Đơn giản nhưng vẫn cuốn hút, vô cùng "chất" khiến người đối diện không thể nào rời mắt.', N'', 3, 0, CAST(N'2021-06-12' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (20, N'Áo Thun Nữ Sọc Cổ Tim GUMAC', N'aothuntraitim.PNG', 80000, N'Hàn Quốc', N'Thun Poly Cotton', 1, N'Áo thun chắc chắn là một món đồ không thể thiếu trong tủ đồ của các bạn gái, bởi áo thun mang đến cho người mặc cảm giác thoải mái, dễ chịu trẻ trung đặc biệt áo thun không bao giờ lỗi mốt, bạn có thể kết hợp được với nhiều đồ như quần bò, chân váy short, giày hay dép cao gót tạo nên hình ảnh Đơn giản nhưng vẫn cuốn hút, vô cùng "chất" khiến người đối diện không thể nào rời mắt.', N'', 3, 0, CAST(N'2021-06-11' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (21, N'Quần Tây Nữ Công Sở', N'quantaynu.PNG', 159000, N'Hàn Quốc', N'Tuyết Mưa', 1, N'Đối với những tín đồ yêu thích sự sang trọng thì không nên bỏ qua mẫu quần suông ống rộng. Với kiểu dáng thoải mái cùng vải mềm mại nên rất phù hợp trong môi trường công sở. Hơn nữa, dáng quần này sẽ khéo léo che được các khuyết điểm trên cơ thể của bạn.Bên cạnh đó, chiếc quần này phù hợp với khá nhiều mẫu áo. Cho dù là kiểu áo nào cũng sẽ thể hiện được sang trọng và thanh lịch cho quý cô.
Quần tây thanh lịch và tinh tế phái nữ thêm nhẹ nhàng và cá tính', N'', 1, 0, CAST(N'2021-06-12' AS Date))
INSERT [dbo].[Products] ([Id], [Name], [Image], [Price], [Origin], [Material], [Status], [Describe], [Review], [Manu_Id], [Views], [ManuDay]) VALUES (22, N'sdfsdfsfdfs', N'ackhoac.PNG', 20000, N'Việt Nam', N'Kaki', 1, N'sfsdfsfsfds', N'', 3, 0, CAST(N'2021-06-11' AS Date))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([Id], [Name]) VALUES (1, N'ROLE_ADMIN')
INSERT [dbo].[Roles] ([Id], [Name]) VALUES (2, N'ROLE_USER')
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[Sizes] ON 

INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (5, N'38')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (7, N'40')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (13, N'M')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (14, N'XXL')
INSERT [dbo].[Sizes] ([Id], [Name]) VALUES (15, N'XL')
SET IDENTITY_INSERT [dbo].[Sizes] OFF
GO
SET IDENTITY_INSERT [dbo].[User_Role] ON 

INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (3, 3, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (4, 4, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (5, 5, 1)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (6, 6, 2)
INSERT [dbo].[User_Role] ([Id], [User_Id], [Role_Id]) VALUES (7, 7, 2)

SET IDENTITY_INSERT [dbo].[User_Role] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 


INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (3, N'demo@gmail.com', N'$2a$10$oip1ijUl53y0OqLdeC1CEe8AuFr0YQQcSpR0BFByQulTWKaKNhq06', N'User Demo')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (4, N'demo1@gmail.com', N'$2a$10$oip1ijUl53y0OqLdeC1CEe8AuFr0YQQcSpR0BFByQulTWKaKNhq06', N'User Demo')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (5, N'demo2@gmail.com', N'$2a$10$oip1ijUl53y0OqLdeC1CEe8AuFr0YQQcSpR0BFByQulTWKaKNhq06', N'User Demo')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (6, N'demo3@gmail.com', N'$2a$10$oip1ijUl53y0OqLdeC1CEe8AuFr0YQQcSpR0BFByQulTWKaKNhq06', N'User Demo')
INSERT [dbo].[Users] ([Id], [Email], [Password], [Fullname]) VALUES (7, N'demo4@gmail.com', N'$2a$10$oip1ijUl53y0OqLdeC1CEe8AuFr0YQQcSpR0BFByQulTWKaKNhq06', N'User Demo')

SET IDENTITY_INSERT [dbo].[Users] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Users__A9D1053434A09B0F]    Script Date: 6/16/2021 6:36:18 PM ******/
ALTER TABLE [dbo].[Users] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [Position]
GO
ALTER TABLE [dbo].[Employees] ADD  DEFAULT (NULL) FOR [StartDay]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Color_Id]
GO
ALTER TABLE [dbo].[Orders] ADD  DEFAULT (NULL) FOR [Size_Id]
GO
ALTER TABLE [dbo].[Product_Color] ADD  DEFAULT (NULL) FOR [Image]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT (NULL) FOR [Review]
GO
ALTER TABLE [dbo].[Products] ADD  CONSTRAINT [DF_Products_Views]  DEFAULT ((0)) FOR [Views]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Employees]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Favorites]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Address_Id])
REFERENCES [dbo].[Address] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Color_Id])
REFERENCES [dbo].[Colors] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD FOREIGN KEY([Size_Id])
REFERENCES [dbo].[Sizes] ([Id])
GO
ALTER TABLE [dbo].[Product_Cate]  WITH CHECK ADD FOREIGN KEY([Cate_Id])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Cate]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD FOREIGN KEY([Color_Id])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Product_Color]  WITH CHECK ADD FOREIGN KEY([Product_Id])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[Product_Size]  WITH CHECK ADD FOREIGN KEY([Size_Id])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD FOREIGN KEY([Manu_Id])
REFERENCES [dbo].[Manufactures] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([Role_Id])
REFERENCES [dbo].[Roles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[User_Role]  WITH CHECK ADD FOREIGN KEY([User_Id])
REFERENCES [dbo].[Users] ([Id])
ON DELETE CASCADE
GO
