USE [QLCHTL]
GO
/****** Object:  Table [dbo].[BOPHAN]    Script Date: 22/7/2021 4:36:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOPHAN](
	[MABP] [nchar](30) NOT NULL,
	[TENBP] [nvarchar](50) NULL,
	[GHICHU] [nvarchar](1000) NULL,
 CONSTRAINT [PR_BOPHAN] PRIMARY KEY CLUSTERED 
(
	[MABP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHITIETHD]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETHD](
	[MAHD] [nchar](10) NOT NULL,
	[MAHH] [nchar](30) NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [int] NULL,
 CONSTRAINT [PR_CTHD] PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC,
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPHIEUNHAP]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPHIEUNHAP](
	[MAPN] [nchar](30) NOT NULL,
	[MAHH] [nchar](30) NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [float] NULL,
	[DVT] [nvarchar](50) NULL,
	[GHICHU] [nvarchar](1000) NULL,
 CONSTRAINT [PR_CTPHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC,
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPHIEUXUAT]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTPHIEUXUAT](
	[MAPX] [nchar](30) NOT NULL,
	[MAHH] [nchar](30) NOT NULL,
	[SOLUONG] [int] NULL,
	[DONGIA] [float] NULL,
	[GHICHU] [nvarchar](1000) NULL,
	[DVT] [nvarchar](50) NULL,
 CONSTRAINT [PR_CTPHIEUXUAT] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC,
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HANGHOA]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HANGHOA](
	[MAHH] [nchar](30) NOT NULL,
	[TENHH] [nvarchar](50) NULL,
	[DVT] [nvarchar](20) NULL,
	[DONGIA] [float] NULL,
	[MALH] [nchar](30) NOT NULL,
	[MANCC] [nchar](30) NOT NULL,
	[SOLUONG] [int] NULL,
	[TINHTRANG] [nchar](10) NULL,
 CONSTRAINT [PR_HANGHOA] PRIMARY KEY CLUSTERED 
(
	[MAHH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HOADON]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HOADON](
	[MAHD] [nchar](10) NOT NULL,
	[NGAYBAN] [date] NULL,
	[MANV] [nchar](30) NULL,
	[MAKH] [nchar](30) NULL,
	[THANHTOAN] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[MAHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MAKH] [nchar](30) NOT NULL,
	[TENKH] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[DIENTHOAI] [char](11) NULL,
	[MK] [char](20) NULL,
	[DIEMTHANHVIEN] [float] NULL,
 CONSTRAINT [PR_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MAKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHO]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KHO](
	[MAKHO] [nchar](30) NOT NULL,
	[TENKHO] [nvarchar](50) NULL,
	[GHICHU] [nvarchar](1000) NULL,
 CONSTRAINT [PR_KHO] PRIMARY KEY CLUSTERED 
(
	[MAKHO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LOAIHANG]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIHANG](
	[MALH] [nchar](30) NOT NULL,
	[TENLH] [nvarchar](50) NULL,
	[GHICHU] [nvarchar](1000) NULL,
 CONSTRAINT [PR_LOAIHANG] PRIMARY KEY CLUSTERED 
(
	[MALH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MANCC] [nchar](30) NOT NULL,
	[TENNCC] [nvarchar](50) NULL,
	[DIACHI] [nvarchar](50) NULL,
	[DIENTHOAI] [char](11) NULL,
	[GHICHU] [nvarchar](1000) NULL,
PRIMARY KEY CLUSTERED 
(
	[MANCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHANVIEN]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHANVIEN](
	[MANV] [nchar](30) NOT NULL,
	[TENNV] [nvarchar](50) NULL,
	[MABP] [nchar](30) NULL,
	[NGAYSINH] [date] NULL,
	[NGAYLAMVIEC] [date] NULL,
	[DCHI] [nvarchar](50) NULL,
	[DIENTHOAI] [char](11) NULL,
	[LUONGCOBAN] [int] NULL,
	[MK] [char](20) NULL,
 CONSTRAINT [PR_NHANVIEN] PRIMARY KEY CLUSTERED 
(
	[MANV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MAPN] [nchar](30) NOT NULL,
	[NGAYNHAPKHO] [date] NULL,
	[MANV] [nchar](30) NULL,
	[MAKHO] [nchar](30) NULL,
	[GHICHU] [nvarchar](1000) NULL,
 CONSTRAINT [PR_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MAPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 22/7/2021 4:36:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MAPX] [nchar](30) NOT NULL,
	[NGAYLAP] [date] NULL,
	[MANV] [nchar](30) NULL,
	[MAKH] [nchar](30) NULL,
	[MAKHO] [nchar](30) NULL,
	[GHICHU] [nvarchar](1000) NULL,
 CONSTRAINT [PR_PHIEUXUAT] PRIMARY KEY CLUSTERED 
(
	[MAPX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[BOPHAN] ([MABP], [TENBP], [GHICHU]) VALUES (N'BP01                          ', N'Quản lý', NULL)
INSERT [dbo].[BOPHAN] ([MABP], [TENBP], [GHICHU]) VALUES (N'BP02                          ', N'Nhân viên', NULL)
INSERT [dbo].[BOPHAN] ([MABP], [TENBP], [GHICHU]) VALUES (N'BP03                          ', N'Thu ngân', NULL)
INSERT [dbo].[BOPHAN] ([MABP], [TENBP], [GHICHU]) VALUES (N'BP04                          ', N'Bảo vệ', NULL)
INSERT [dbo].[BOPHAN] ([MABP], [TENBP], [GHICHU]) VALUES (N'BP05                          ', N'Quản lý kho', NULL)
INSERT [dbo].[CHITIETHD] ([MAHD], [MAHH], [SOLUONG], [DONGIA]) VALUES (N'HD001     ', N'HH001                         ', 10, 80000)
INSERT [dbo].[CHITIETHD] ([MAHD], [MAHH], [SOLUONG], [DONGIA]) VALUES (N'HD001     ', N'HH002                         ', 10, 100000)
INSERT [dbo].[CHITIETHD] ([MAHD], [MAHH], [SOLUONG], [DONGIA]) VALUES (N'HD001     ', N'HH003                         ', 10, 200000)
INSERT [dbo].[CHITIETHD] ([MAHD], [MAHH], [SOLUONG], [DONGIA]) VALUES (N'HD001     ', N'HH004                         ', 10, 80000)
INSERT [dbo].[CHITIETHD] ([MAHD], [MAHH], [SOLUONG], [DONGIA]) VALUES (N'HD002     ', N'HH003                         ', 30, 600000)
INSERT [dbo].[CTPHIEUNHAP] ([MAPN], [MAHH], [SOLUONG], [DONGIA], [DVT], [GHICHU]) VALUES (N'PN001                         ', N'HH001                         ', 10, 150000, N'Thùng', NULL)
INSERT [dbo].[CTPHIEUNHAP] ([MAPN], [MAHH], [SOLUONG], [DONGIA], [DVT], [GHICHU]) VALUES (N'PN002                         ', N'HH002                         ', 15, 300000, N'Thùng', NULL)
INSERT [dbo].[CTPHIEUNHAP] ([MAPN], [MAHH], [SOLUONG], [DONGIA], [DVT], [GHICHU]) VALUES (N'PN003                         ', N'HH003                         ', 15, 300000, N'Thùng', NULL)
INSERT [dbo].[CTPHIEUNHAP] ([MAPN], [MAHH], [SOLUONG], [DONGIA], [DVT], [GHICHU]) VALUES (N'PN004                         ', N'HH004                         ', 12, 300000, N'Thùng', NULL)
INSERT [dbo].[CTPHIEUNHAP] ([MAPN], [MAHH], [SOLUONG], [DONGIA], [DVT], [GHICHU]) VALUES (N'PN005                         ', N'HH005                         ', 16, 300000, N'Thùng', NULL)
INSERT [dbo].[CTPHIEUXUAT] ([MAPX], [MAHH], [SOLUONG], [DONGIA], [GHICHU], [DVT]) VALUES (N'PX001                         ', N'HH001                         ', 10, 150000, NULL, N'Thùng')
INSERT [dbo].[CTPHIEUXUAT] ([MAPX], [MAHH], [SOLUONG], [DONGIA], [GHICHU], [DVT]) VALUES (N'PX002                         ', N'HH002                         ', 15, 300000, NULL, N'Thùng')
INSERT [dbo].[CTPHIEUXUAT] ([MAPX], [MAHH], [SOLUONG], [DONGIA], [GHICHU], [DVT]) VALUES (N'PX003                         ', N'HH003                         ', 15, 300000, NULL, N'Thùng')
INSERT [dbo].[CTPHIEUXUAT] ([MAPX], [MAHH], [SOLUONG], [DONGIA], [GHICHU], [DVT]) VALUES (N'PX004                         ', N'HH004                         ', 12, 300000, NULL, N'Thùng')
INSERT [dbo].[CTPHIEUXUAT] ([MAPX], [MAHH], [SOLUONG], [DONGIA], [GHICHU], [DVT]) VALUES (N'PX005                         ', N'HH005                         ', 16, 300000, NULL, N'Thùng')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH001                         ', N'Coca-Cola', N'Lon', 8000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH002                         ', N'Coca-ColaLight', N'Lon', 10000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH003                         ', N'Coke Zero', N'Lon', 20000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH004                         ', N'Sprite', N'Lon', 8000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH005                         ', N'Fanta', N'Lon', 8000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH006                         ', N'Minuti Maid Nutriboost', N'Lon', 10000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH007                         ', N'Minuti Maid Teppy', N'Lon', 10000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH008                         ', N'Schweppes', N'Lon', 8000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH009                         ', N'Aquarius', N'Chai', 8000, N'LH003                         ', N'NCC001                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH010                         ', N'Pepsi Cola', N'Lon', 8000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH011                         ', N'Sting', N'Lon', 10000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH012                         ', N'Mountian Dew', N'Lon', 8000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH013                         ', N'Tropicana Twister', N'Lon', 9000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH014                         ', N'7Up', N'Lon', 8000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH015                         ', N'7Up Revive', N'Lon', 10000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH016                         ', N'Ô Long Tea+', N'Lon', 10000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH017                         ', N'Mirinda', N'Lon', 8000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH018                         ', N'Lipton Teas', N'Lon', 8000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH019                         ', N'Aquafina', N'Chai', 8000, N'LH003                         ', N'NCC002                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH020                         ', N'KitKat', N'Hô?p', 35000, N'LH002                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH021                         ', N'Milo', N'Hô?p', 56000, N'LH002                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH022                         ', N'KoKo Krunch', N'Hô?p', 50000, N'LH002                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH023                         ', N'Corn Flakes ', N'Hô?p', 48000, N'LH002                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH024                         ', N'Cà Phê NesCaFe', N'Hô?p', 70000, N'LH002                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH025                         ', N'Kem Milo', N'Go´i', 11000, N'LH007                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH026                         ', N'Kem Kitkat', N'Go´i', 12000, N'LH007                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH027                         ', N'Sữa chua Nestle', N'Hô?p', 8000, N'LH007                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH028                         ', N'Sữa Nestle', N'Hô?p', 8000, N'LH007                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH029                         ', N'Bột nêm Nestle', N'Go´i', 8000, N'LH011                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH030                         ', N'Dầu hào Nestle', N'Chai', 8000, N'LH011                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH031                         ', N'Nước tương Nestle', N'Chai', 8000, N'LH011                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH032                         ', N'Nước Mắm Nestle', N'Chai', 8000, N'LH011                         ', N'NCC003                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH033                         ', N'Kem Merino Sầu riêng sữa dừa', N'Hô?p', 69000, N'LH007                         ', N'NCC004                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH034                         ', N'Kem Merino socola vani', N'Hô?p', 71000, N'LH007                         ', N'NCC004                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH035                         ', N'Kem Merino khoai môn', N'Hô?p', 69000, N'LH007                         ', N'NCC004                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH036                         ', N'Kem Merino đậu xanh sữa dừa', N'Hô?p', 69000, N'LH007                         ', N'NCC004                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH037                         ', N'Sữa Vinamilk', N'Thu`ng', 300000, N'LH001                         ', N'NCC005                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH038                         ', N'Sữa chua Vinamilk', N'Hô?p', 9000, N'LH007                         ', N'NCC005                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH039                         ', N'Sữa Vinamilk không đường', N'Hô?p', 9000, N'LH007                         ', N'NCC005                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HANGHOA] ([MAHH], [TENHH], [DVT], [DONGIA], [MALH], [MANCC], [SOLUONG], [TINHTRANG]) VALUES (N'HH040                         ', N'Sữa Vinamilk', N'Go´i', 6000, N'LH007                         ', N'NCC005                        ', 1000, N'CÒN HÀNG')
INSERT [dbo].[HOADON] ([MAHD], [NGAYBAN], [MANV], [MAKH], [THANHTOAN]) VALUES (N'HD001     ', CAST(N'2021-03-10' AS Date), N'NV001                         ', N'KH001                         ', 460000)
INSERT [dbo].[HOADON] ([MAHD], [NGAYBAN], [MANV], [MAKH], [THANHTOAN]) VALUES (N'HD002     ', CAST(N'2021-04-10' AS Date), N'NV001                         ', N'KH002                         ', 600000)
INSERT [dbo].[HOADON] ([MAHD], [NGAYBAN], [MANV], [MAKH], [THANHTOAN]) VALUES (N'HD003     ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'KH003                         ', 78000)
INSERT [dbo].[HOADON] ([MAHD], [NGAYBAN], [MANV], [MAKH], [THANHTOAN]) VALUES (N'HD004     ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'KH001                         ', 126000)
INSERT [dbo].[HOADON] ([MAHD], [NGAYBAN], [MANV], [MAKH], [THANHTOAN]) VALUES (N'HD005     ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'KH002                         ', 400000)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH001                         ', N'NGUYỄN CÔNG TẤN', N'155 CẦU KINH PHƯỜNG TÂN TẠO A QUẬN BÌNH TÂN', N'0932710237 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH002                         ', N'NGÔ KHIÊM', N'200 MỸ AN BÀ RỊA VŨNG TÀU', N'0903213721 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH003                         ', N'NGÔ HOÀNG THIÊN TUỆ', N'VÕ VĂN KIỆT QUẬN 1', N'0234253874 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH005                         ', N'NGUYỄN THÀNH NHÂN', N'THÀNH PHỐ TÂY NINH', N'0988338330 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH006                         ', N'TRƯƠNG CÔNG HẬU', N'THÀNH PHỐ TÂY NINH', N'0124129400 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH007                         ', N'TRẦN THỊ ANH THƯ', N'LAGI BÌNH THUẬN', N'0898749270 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH008                         ', N'NGUYỄN THANH  QUANG', N'QUẬN 11 THÀNH PHỐ HỒ CHÍ MINH', N'0903213722 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH009                         ', N'NGUYỄN HUỲNH HUY', N'BẾN TRE', N'0128393933 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH010                         ', N'NGÔ GIA TRÍ', N'198 MỸ AN BÀ RỊA VŨNG TÀU', N'0903213799 ', N'123                 ', 0)
INSERT [dbo].[KHACHHANG] ([MAKH], [TENKH], [DIACHI], [DIENTHOAI], [MK], [DIEMTHANHVIEN]) VALUES (N'KH011                         ', N'NGÔ HUY THẮNG', N'169 Ð?C HÒA LONG AN', N'0933392322 ', N'123                 ', 0)
INSERT [dbo].[KHO] ([MAKHO], [TENKHO], [GHICHU]) VALUES (N'K001                          ', N'Kho 1', NULL)
INSERT [dbo].[KHO] ([MAKHO], [TENKHO], [GHICHU]) VALUES (N'K002                          ', N'Kho 2', NULL)
INSERT [dbo].[KHO] ([MAKHO], [TENKHO], [GHICHU]) VALUES (N'K003                          ', N'Kho 3', NULL)
INSERT [dbo].[KHO] ([MAKHO], [TENKHO], [GHICHU]) VALUES (N'K004                          ', N'Kho 4', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH001                         ', N'Nước uống', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH002                         ', N'Thức ăn', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH003                         ', N'Nước uống có ga', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH004                         ', N'Nước uống nóng', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH005                         ', N'Đồ dùng', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH006                         ', N'Học tập', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH007                         ', N'Thức ăn lạnh', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH008                         ', N'Thức ăn nóng', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH009                         ', N'Vệ sinh', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH010                         ', N'Y tế', NULL)
INSERT [dbo].[LOAIHANG] ([MALH], [TENLH], [GHICHU]) VALUES (N'LH011                         ', N'Gia Vị', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC001                        ', N'CÔNG TY COCACOLA VIỆT NAM', N'TPHCM', N'1800 1999  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC002                        ', N'CÔNG TY TNHH THỰC PHẨM PEPSICO VIỆT NAM', N'Bình Dương', N'1800 2828  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC003                        ', N'CÔNG TY NESTLE VIỆT NAM', N'ĐỒNG NAI', N'1800 6699  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC004                        ', N'CÔNG TY MERINO', N'Thành phố Hồ Chí Minh', N'1800 1212  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC005                        ', N'CÔNG TY VINAMILK VIỆT NAM', N' quận 7, Tp. HCM', N'1800 9899  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC006                        ', N'CÔNG TY Đồ Dùng Gia Đình Việt Nam', N' Thuận An, Bình Dương', N'1800 1122  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC007                        ', N'CÔNG TY TNHH XUẤT KHẨU TRÁI CÂY NHIỆT ĐỚI', N'Châu Thành, Bến Tre', N'1800 1315  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC008                        ', N'CÔNG TY Cổ phần Masan', N'Quận 1, Tp. Hồ Chí Minh', N'1800 8855  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC009                        ', N'CÔNG TY TNHH THUỐC LÁ SÀI GÒN', N'Khu công nghiệp Vĩnh Lộc, Huyện Bình Chánh', N'1800 0099  ', NULL)
INSERT [dbo].[NHACUNGCAP] ([MANCC], [TENNCC], [DIACHI], [DIENTHOAI], [GHICHU]) VALUES (N'NCC010                        ', N'CÔNG TY TNHH GIA LÊ NGUYÊN', N'Quận 04, Tp. Hồ Chí Minh', N'1800 0908  ', NULL)
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [MABP], [NGAYSINH], [NGAYLAMVIEC], [DCHI], [DIENTHOAI], [LUONGCOBAN], [MK]) VALUES (N'NV001                         ', N'VÕ THÀNH CÔNG', N'BP01                          ', CAST(N'1975-03-10' AS Date), CAST(N'2010-03-15' AS Date), N'THÀNH PHỐ HỒ CHÍ MINH', N'0127234980 ', 1150000, N'123                 ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [MABP], [NGAYSINH], [NGAYLAMVIEC], [DCHI], [DIENTHOAI], [LUONGCOBAN], [MK]) VALUES (N'NV002                         ', N'BÙI THÁI BẢO', N'BP02                          ', CAST(N'2000-06-21' AS Date), CAST(N'2016-07-25' AS Date), N'THÀNH PHỐ HỒ CHÍ MINH', N'0906239810 ', 1550000, N'123                 ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [MABP], [NGAYSINH], [NGAYLAMVIEC], [DCHI], [DIENTHOAI], [LUONGCOBAN], [MK]) VALUES (N'NV003                         ', N'TRẦN THÀNH ĐẠT', N'BP03                          ', CAST(N'2001-09-15' AS Date), CAST(N'2018-10-10' AS Date), N'THÀNH PHỐ BẾN TRE', N'0209384099 ', 1800000, N'123                 ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [MABP], [NGAYSINH], [NGAYLAMVIEC], [DCHI], [DIENTHOAI], [LUONGCOBAN], [MK]) VALUES (N'NV004                         ', N'NGUYỄN MINH TRÍ', N'BP04                          ', CAST(N'1999-09-03' AS Date), CAST(N'2015-11-20' AS Date), N'THÀNH PHỐ HỒ CHÍ MINH', N'0977998448 ', 2500000, N'123                 ')
INSERT [dbo].[NHANVIEN] ([MANV], [TENNV], [MABP], [NGAYSINH], [NGAYLAMVIEC], [DCHI], [DIENTHOAI], [LUONGCOBAN], [MK]) VALUES (N'NV005                         ', N'NGÔ BÌNH MINH', N'BP05                          ', CAST(N'1998-10-22' AS Date), CAST(N'2017-07-20' AS Date), N'BẾN TRE', N'0977467446 ', 1600000, N'123                 ')
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAPKHO], [MANV], [MAKHO], [GHICHU]) VALUES (N'PN001                         ', CAST(N'2021-03-10' AS Date), N'NV001                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAPKHO], [MANV], [MAKHO], [GHICHU]) VALUES (N'PN002                         ', CAST(N'2021-04-10' AS Date), N'NV001                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAPKHO], [MANV], [MAKHO], [GHICHU]) VALUES (N'PN003                         ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAPKHO], [MANV], [MAKHO], [GHICHU]) VALUES (N'PN004                         ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUNHAP] ([MAPN], [NGAYNHAPKHO], [MANV], [MAKHO], [GHICHU]) VALUES (N'PN005                         ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAYLAP], [MANV], [MAKH], [MAKHO], [GHICHU]) VALUES (N'PX001                         ', CAST(N'2021-03-10' AS Date), N'NV001                         ', N'KH001                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAYLAP], [MANV], [MAKH], [MAKHO], [GHICHU]) VALUES (N'PX002                         ', CAST(N'2021-04-10' AS Date), N'NV001                         ', N'KH002                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAYLAP], [MANV], [MAKH], [MAKHO], [GHICHU]) VALUES (N'PX003                         ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'KH003                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAYLAP], [MANV], [MAKH], [MAKHO], [GHICHU]) VALUES (N'PX004                         ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'KH001                         ', N'K001                          ', NULL)
INSERT [dbo].[PHIEUXUAT] ([MAPX], [NGAYLAP], [MANV], [MAKH], [MAKHO], [GHICHU]) VALUES (N'PX005                         ', CAST(N'2021-05-10' AS Date), N'NV001                         ', N'KH002                         ', N'K001                          ', NULL)
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HANGHOA] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HANGHOA] ([MAHH])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CTHD_HANGHOA]
GO
ALTER TABLE [dbo].[CHITIETHD]  WITH CHECK ADD  CONSTRAINT [FK_CTHD_HD] FOREIGN KEY([MAHD])
REFERENCES [dbo].[HOADON] ([MAHD])
GO
ALTER TABLE [dbo].[CHITIETHD] CHECK CONSTRAINT [FK_CTHD_HD]
GO
ALTER TABLE [dbo].[CTPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FR_CTPHIEUNHAP_PHIEUNHAP] FOREIGN KEY([MAPN])
REFERENCES [dbo].[PHIEUNHAP] ([MAPN])
GO
ALTER TABLE [dbo].[CTPHIEUNHAP] CHECK CONSTRAINT [FR_CTPHIEUNHAP_PHIEUNHAP]
GO
ALTER TABLE [dbo].[CTPHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FR_PHIEUNHAP_HANGHOA] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HANGHOA] ([MAHH])
GO
ALTER TABLE [dbo].[CTPHIEUNHAP] CHECK CONSTRAINT [FR_PHIEUNHAP_HANGHOA]
GO
ALTER TABLE [dbo].[CTPHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FR_CTPHIEUXUAT_PHIEUXUAT] FOREIGN KEY([MAPX])
REFERENCES [dbo].[PHIEUXUAT] ([MAPX])
GO
ALTER TABLE [dbo].[CTPHIEUXUAT] CHECK CONSTRAINT [FR_CTPHIEUXUAT_PHIEUXUAT]
GO
ALTER TABLE [dbo].[CTPHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FR_PHIEUXUAT_HANGHOA] FOREIGN KEY([MAHH])
REFERENCES [dbo].[HANGHOA] ([MAHH])
GO
ALTER TABLE [dbo].[CTPHIEUXUAT] CHECK CONSTRAINT [FR_PHIEUXUAT_HANGHOA]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_LOAIHANG] FOREIGN KEY([MALH])
REFERENCES [dbo].[LOAIHANG] ([MALH])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_LOAIHANG]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD  CONSTRAINT [FK_HANGHOA_NCC] FOREIGN KEY([MANCC])
REFERENCES [dbo].[NHACUNGCAP] ([MANCC])
GO
ALTER TABLE [dbo].[HANGHOA] CHECK CONSTRAINT [FK_HANGHOA_NCC]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_KHACHHANG]
GO
ALTER TABLE [dbo].[HOADON]  WITH CHECK ADD  CONSTRAINT [FK_HOADON_NHANVVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[HOADON] CHECK CONSTRAINT [FK_HOADON_NHANVVIEN]
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD  CONSTRAINT [FK_NHANVIEN_BOPHAN] FOREIGN KEY([MABP])
REFERENCES [dbo].[BOPHAN] ([MABP])
GO
ALTER TABLE [dbo].[NHANVIEN] CHECK CONSTRAINT [FK_NHANVIEN_BOPHAN]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FR_PHIEUNHAP_KHO] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[KHO] ([MAKHO])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FR_PHIEUNHAP_KHO]
GO
ALTER TABLE [dbo].[PHIEUNHAP]  WITH CHECK ADD  CONSTRAINT [FR_PHIEUNHAP_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUNHAP] CHECK CONSTRAINT [FR_PHIEUNHAP_NHANVIEN]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FR_PHIEUXUAT_KHACHHANG] FOREIGN KEY([MAKH])
REFERENCES [dbo].[KHACHHANG] ([MAKH])
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [FR_PHIEUXUAT_KHACHHANG]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FR_PHIEUXUAT_KHO] FOREIGN KEY([MAKHO])
REFERENCES [dbo].[KHO] ([MAKHO])
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [FR_PHIEUXUAT_KHO]
GO
ALTER TABLE [dbo].[PHIEUXUAT]  WITH CHECK ADD  CONSTRAINT [FR_PHIEUXUAT_NHANVIEN] FOREIGN KEY([MANV])
REFERENCES [dbo].[NHANVIEN] ([MANV])
GO
ALTER TABLE [dbo].[PHIEUXUAT] CHECK CONSTRAINT [FR_PHIEUXUAT_NHANVIEN]
GO
ALTER TABLE [dbo].[HANGHOA]  WITH CHECK ADD CHECK  (([TINHTRANG]=N'CÒN HÀNG' OR [TINHTRANG]=N'HẾT HÀNG'))
GO
ALTER TABLE [dbo].[NHANVIEN]  WITH CHECK ADD CHECK  (([NGAYSINH]<getdate()))
GO
