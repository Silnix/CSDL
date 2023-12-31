USE [master]
GO
/****** Object:  Database [QLSV]    Script Date: 11/21/2023 08:41:15 ******/
CREATE DATABASE [QLSV] ON  PRIMARY 
( NAME = N'QLSV', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLSV.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLSV_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLSV_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLSV] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLSV].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLSV] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLSV] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLSV] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLSV] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLSV] SET ARITHABORT OFF
GO
ALTER DATABASE [QLSV] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLSV] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLSV] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLSV] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLSV] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLSV] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLSV] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLSV] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLSV] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLSV] SET  ENABLE_BROKER
GO
ALTER DATABASE [QLSV] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLSV] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLSV] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLSV] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLSV] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLSV] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLSV] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLSV] SET  READ_WRITE
GO
ALTER DATABASE [QLSV] SET RECOVERY FULL
GO
ALTER DATABASE [QLSV] SET  MULTI_USER
GO
ALTER DATABASE [QLSV] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLSV] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLSV', N'ON'
GO
USE [QLSV]
GO
/****** Object:  Table [dbo].[MonHoc]    Script Date: 11/21/2023 08:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MonHoc](
	[MaMH] [varchar](10) NOT NULL,
	[TenMH] [nvarchar](50) NULL,
 CONSTRAINT [PK_MonHoc] PRIMARY KEY CLUSTERED 
(
	[MaMH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TH101', N'Tin học đại cương')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TH102', N'Cơ sở dữ liệu')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TH110', N'Toán rời rạc')
INSERT [dbo].[MonHoc] ([MaMH], [TenMH]) VALUES (N'TH112', N'Kiến trúc máy tính')
/****** Object:  Table [dbo].[CT_DaoTao]    Script Date: 11/21/2023 08:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CT_DaoTao](
	[MaCTDT] [varchar](10) NOT NULL,
	[TenCTDT] [nvarchar](50) NULL,
 CONSTRAINT [PK_CT_DaoTao] PRIMARY KEY CLUSTERED 
(
	[MaCTDT] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[CT_DaoTao] ([MaCTDT], [TenCTDT]) VALUES (N'1', N'Cử nhân')
INSERT [dbo].[CT_DaoTao] ([MaCTDT], [TenCTDT]) VALUES (N'2', N'Cao đẳng')
INSERT [dbo].[CT_DaoTao] ([MaCTDT], [TenCTDT]) VALUES (N'3', N'Trung cấp')
/****** Object:  Table [dbo].[KhoaHoc]    Script Date: 11/21/2023 08:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhoaHoc](
	[MaKH] [varchar](10) NOT NULL,
	[MaCTDT] [varchar](10) NOT NULL,
	[TenKH] [nvarchar](50) NULL,
 CONSTRAINT [PK_KhoaHoc] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'1', N'1', N'Khóa 1 năm 2005')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'2', N'1', N'Khóa 2 năm 2006')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'3', N'2', N'Khóa 1 năm 2007')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'4', N'3', N'Khóa 1 năm 2008')
INSERT [dbo].[KhoaHoc] ([MaKH], [MaCTDT], [TenKH]) VALUES (N'5', N'2', N'Khóa 2 năm 2008')
/****** Object:  Table [dbo].[Lop]    Script Date: 11/21/2023 08:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Lop](
	[MaLop] [varchar](10) NOT NULL,
	[MaKH] [varchar](10) NOT NULL,
	[TenLop] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lop] PRIMARY KEY CLUSTERED 
(
	[MaLop] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'1', N'1', N'K1_1')
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'2', N'1', N'K2_1')
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'3', N'1', N'K3_1')
INSERT [dbo].[Lop] ([MaLop], [MaKH], [TenLop]) VALUES (N'4', N'2', N'K3_2')
/****** Object:  Table [dbo].[SinhVien]    Script Date: 11/21/2023 08:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [varchar](10) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[GioiTinh] [nvarchar](50) NULL,
	[NgaySinh] [datetime] NULL,
	[NoiSinh] [nvarchar](50) NULL,
	[MaLop] [varchar](10) NOT NULL,
	[GhiChu] [nvarchar](50) NULL,
 CONSTRAINT [PK_SinhVien] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K116', N'Đinh Nguyễn Vân Anh', N'Nữ', CAST(0x00007AA500000000 AS DateTime), N'Bình Thuận', N'1', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K117', N'Trần Hoàng Anh', N'Nữ', CAST(0x00007B8A00000000 AS DateTime), N'Bình Dương', N'1', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K118', N'Bùi Thanh Bình', N'Nam', CAST(0x00007A6D00000000 AS DateTime), N'Đồng Nai', N'1', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K119', N'Phạm Nhật Tân', N'Nam', CAST(0x0000795400000000 AS DateTime), N'Đồng Tháp', N'2', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K120', N'Định Thiện Hòa', N'Nam', CAST(0x00007A9B00000000 AS DateTime), N'Vĩnh Long', N'3', NULL)
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K121', N'Nguyễn Anh Khoa', N'Nam', CAST(0x00007A8300000000 AS DateTime), N'Vũng Tàu', N'3', N'Ho?n h?c')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K122', N'Trương Mộng Thủy', N'Nữ', CAST(0x00007B3600000000 AS DateTime), N'Cần Thơ', N'2', N'Ho?n h?c')
INSERT [dbo].[SinhVien] ([MaSV], [HoTen], [GioiTinh], [NgaySinh], [NoiSinh], [MaLop], [GhiChu]) VALUES (N'K123', N'Võ Anh Thi', N'Nữ', CAST(0x00007B4100000000 AS DateTime), N'Bến Tre', N'2', N'Ho?n h?c')
/****** Object:  Table [dbo].[KetQuaThi]    Script Date: 11/21/2023 08:41:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KetQuaThi](
	[MaSV] [varchar](10) NOT NULL,
	[MaMH] [varchar](10) NOT NULL,
	[LanThi] [int] NOT NULL,
	[DiemThi] [real] NOT NULL,
 CONSTRAINT [PK_KetQuaThi] PRIMARY KEY CLUSTERED 
(
	[MaSV] ASC,
	[MaMH] ASC,
	[LanThi] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K116', N'TH101', 1, 7.5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K116', N'TH102', 1, 7.5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K116', N'TH110', 1, 7)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K116', N'TH112', 1, 8.5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K117', N'TH101', 1, 4)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K117', N'TH101', 2, 7)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K118', N'TH101', 1, 6.5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K118', N'TH102', 1, 9)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K119', N'TH101', 1, 6)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K119', N'TH102', 1, 5)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K120', N'TH101', 1, 6)
INSERT [dbo].[KetQuaThi] ([MaSV], [MaMH], [LanThi], [DiemThi]) VALUES (N'K120', N'TH102', 1, 7)
/****** Object:  ForeignKey [FK_KhoaHoc_MaCTDT]    Script Date: 11/21/2023 08:41:15 ******/
ALTER TABLE [dbo].[KhoaHoc]  WITH CHECK ADD  CONSTRAINT [FK_KhoaHoc_MaCTDT] FOREIGN KEY([MaCTDT])
REFERENCES [dbo].[CT_DaoTao] ([MaCTDT])
GO
ALTER TABLE [dbo].[KhoaHoc] CHECK CONSTRAINT [FK_KhoaHoc_MaCTDT]
GO
/****** Object:  ForeignKey [FK_Lop_MaKH]    Script Date: 11/21/2023 08:41:15 ******/
ALTER TABLE [dbo].[Lop]  WITH CHECK ADD  CONSTRAINT [FK_Lop_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhoaHoc] ([MaKH])
GO
ALTER TABLE [dbo].[Lop] CHECK CONSTRAINT [FK_Lop_MaKH]
GO
/****** Object:  ForeignKey [FK_SinhVen_MaLop]    Script Date: 11/21/2023 08:41:15 ******/
ALTER TABLE [dbo].[SinhVien]  WITH CHECK ADD  CONSTRAINT [FK_SinhVen_MaLop] FOREIGN KEY([MaLop])
REFERENCES [dbo].[Lop] ([MaLop])
GO
ALTER TABLE [dbo].[SinhVien] CHECK CONSTRAINT [FK_SinhVen_MaLop]
GO
/****** Object:  ForeignKey [FK_KetQuaThi_MaMH]    Script Date: 11/21/2023 08:41:15 ******/
ALTER TABLE [dbo].[KetQuaThi]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaThi_MaMH] FOREIGN KEY([MaMH])
REFERENCES [dbo].[MonHoc] ([MaMH])
GO
ALTER TABLE [dbo].[KetQuaThi] CHECK CONSTRAINT [FK_KetQuaThi_MaMH]
GO
/****** Object:  ForeignKey [FK_KetQuaThi_MaSV]    Script Date: 11/21/2023 08:41:15 ******/
ALTER TABLE [dbo].[KetQuaThi]  WITH CHECK ADD  CONSTRAINT [FK_KetQuaThi_MaSV] FOREIGN KEY([MaSV])
REFERENCES [dbo].[SinhVien] ([MaSV])
GO
ALTER TABLE [dbo].[KetQuaThi] CHECK CONSTRAINT [FK_KetQuaThi_MaSV]
GO
