USE [master]
GO
/****** Object:  Database [QLDACT]    Script Date: 11/28/2023 09:07:46 ******/
CREATE DATABASE [QLDACT] ON  PRIMARY 
( NAME = N'QLDACT', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLDACT.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QLDACT_log', FILENAME = N'C:\Program Files (x86)\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QLDACT_log.LDF' , SIZE = 768KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QLDACT] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLDACT].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLDACT] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [QLDACT] SET ANSI_NULLS OFF
GO
ALTER DATABASE [QLDACT] SET ANSI_PADDING OFF
GO
ALTER DATABASE [QLDACT] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [QLDACT] SET ARITHABORT OFF
GO
ALTER DATABASE [QLDACT] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [QLDACT] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [QLDACT] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [QLDACT] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [QLDACT] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [QLDACT] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [QLDACT] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [QLDACT] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [QLDACT] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [QLDACT] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [QLDACT] SET  ENABLE_BROKER
GO
ALTER DATABASE [QLDACT] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [QLDACT] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [QLDACT] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [QLDACT] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [QLDACT] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [QLDACT] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [QLDACT] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [QLDACT] SET  READ_WRITE
GO
ALTER DATABASE [QLDACT] SET RECOVERY FULL
GO
ALTER DATABASE [QLDACT] SET  MULTI_USER
GO
ALTER DATABASE [QLDACT] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [QLDACT] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'QLDACT', N'ON'
GO
USE [QLDACT]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 11/28/2023 09:07:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [varchar](10) NOT NULL,
	[HoNV] [nvarchar](50) NULL,
	[TenLot] [nvarchar](50) NULL,
	[TenNV] [nvarchar](50) NULL,
	[NgSinh] [date] NULL,
	[Phai] [nvarchar](50) NULL,
	[Dchi] [nvarchar](50) NULL,
	[MaNQL] [nvarchar](50) NULL,
	[Phong] [nvarchar](50) NULL,
	[Luong] [float] NULL,
 CONSTRAINT [PK_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNV], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'001', N'Vuong', N'Ngoc', N'Quyen', CAST(0xD4E70A00 AS Date), N'Nu', N'Ha Noi', NULL, N'QL', 3000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNV], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'002', N'Nguyen', N'Thanh', N'Quyen', CAST(0xDBE30A00 AS Date), N'Nam', N'TPHCM', N'001', N'NC', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNV], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'003', N'Le', N'Thi', N'Nhan', CAST(0x55EC0A00 AS Date), N'Nu', N'TPHCM', N'001', N'NC', 2500000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNV], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'004', N'Dinh', N'Ba', N'Tien', CAST(0x67F60A00 AS Date), N'Nam', N'Dong Thap', N'002', N'NC', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNV], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'005', N'Bui', N'Thuy', N'Vu', CAST(0x20FE0A00 AS Date), N'Nu', N'Tra Vinh', N'003', N'DH', 2200000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNV], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'006', N'Nguyen', N'Manh', N'Hung', CAST(0xDD090B00 AS Date), N'Nam', N'Dong Nai', N'002', N'NC', 2000000)
INSERT [dbo].[NhanVien] ([MaNV], [HoNV], [TenLot], [TenNV], [NgSinh], [Phai], [Dchi], [MaNQL], [Phong], [Luong]) VALUES (N'007', N'Tran', N'Hong', N'Van', CAST(0x9F020B00 AS Date), N'Nu', N'Vinh Long', N'004', N'NC', 1800000)
/****** Object:  Table [dbo].[DeAn]    Script Date: 11/28/2023 09:07:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DeAn](
	[MaDA] [varchar](10) NOT NULL,
	[TenDA] [nvarchar](50) NULL,
	[DiaDiemDA] [nvarchar](50) NULL,
	[Phong] [nvarchar](50) NULL,
	[NgayBD_DK] [date] NULL,
	[NgayKT_DK] [date] NULL,
 CONSTRAINT [PK_DeAn] PRIMARY KEY CLUSTERED 
(
	[MaDA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT001', N'Dao tao 1', N'Nha Trang', N'DH', CAST(0x04270B00 AS Date), CAST(0xB92C0B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'DT002', N'Dao tao 2', N'Da Nang', N'DH', CAST(0xB62C0B00 AS Date), CAST(0xF02D0B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH001', N'Tin hoc hoa 1', N'Ha Noi', N'NC', CAST(0x6E280B00 AS Date), CAST(0xDB290B00 AS Date))
INSERT [dbo].[DeAn] ([MaDA], [TenDA], [DiaDiemDA], [Phong], [NgayBD_DK], [NgayKT_DK]) VALUES (N'TH002', N'Tin hoc hoa 2', N'TPHCM', N'NC', CAST(0xE9280B00 AS Date), CAST(0xDE290B00 AS Date))
/****** Object:  Table [dbo].[PhongBan]    Script Date: 11/28/2023 09:07:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhongBan](
	[MaPB] [varchar](10) NOT NULL,
	[TenPB] [nvarchar](50) NULL,
	[TrPHG] [nvarchar](50) NULL,
	[NgayNhanChuc] [date] NULL,
	[QL] [nvarchar](50) NULL,
 CONSTRAINT [PK_PhongBan] PRIMARY KEY CLUSTERED 
(
	[MaPB] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [NgayNhanChuc], [QL]) VALUES (N'001', N'Dieu Hanh', N'QL', CAST(0x95240B00 AS Date), N'DH')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [NgayNhanChuc], [QL]) VALUES (N'002', N'Nghien Cuu', N'NC', CAST(0x2B270B00 AS Date), N'NC')
INSERT [dbo].[PhongBan] ([MaPB], [TenPB], [TrPHG], [NgayNhanChuc], [QL]) VALUES (N'003', N'Quan Ly', N'QL', CAST(0xFC270B00 AS Date), N'DH')
/****** Object:  Table [dbo].[ThanNhan]    Script Date: 11/28/2023 09:07:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanNhan](
	[MaNV] [varchar](10) NOT NULL,
	[MaTN] [varchar](10) NOT NULL,
	[TenTN] [nvarchar](50) NULL,
	[Phai] [nvarchar](50) NULL,
	[NgSinh] [date] NULL,
	[QuanHe] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThanNhan] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaTN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'001', N'1', N'Le Nhat Minh', N'Nam', CAST(0x47E40A00 AS Date), N'Vo Chong')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'002', N'1', N'Le Hoai Thuong', N'Nu', CAST(0x48EC0A00 AS Date), N'Vo Chong')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'1', N'Tran Minh Tien', N'Nam', CAST(0x1B170B00 AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'2', N'Tran Ngoc Linh', N'Nu', CAST(0x4F1A0B00 AS Date), N'Con')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'003', N'3', N'Tran Minh Long', N'Nam', CAST(0xC8E70A00 AS Date), N'Vo Chong')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'004', N'1', N'Le Phi Phung', N'Nu', CAST(0x5BEC0A00 AS Date), N'Vo Chong')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'1', N'Tran Thu Hong', N'Nu', CAST(0x08050B00 AS Date), N'Vo Chong')
INSERT [dbo].[ThanNhan] ([MaNV], [MaTN], [TenTN], [Phai], [NgSinh], [QuanHe]) VALUES (N'005', N'2', N'Nguyen Manh Tam', N'Nam', CAST(0x95280B00 AS Date), N'Con')
/****** Object:  Table [dbo].[PhanCong]    Script Date: 11/28/2023 09:07:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhanCong](
	[MaNV] [varchar](10) NOT NULL,
	[MaDA] [varchar](10) NOT NULL,
	[ThoiGian] [float] NULL,
 CONSTRAINT [PK_PhanCong] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC,
	[MaDA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH001', 30)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'001', N'TH002', 12.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH001', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'002', N'TH002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'003', N'TH001', 37.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT001', 22.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'004', N'DT002', 10)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'006', N'DT001', 30.5)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'DT001', 20)
INSERT [dbo].[PhanCong] ([MaNV], [MaDA], [ThoiGian]) VALUES (N'007', N'DT002', 10)
/****** Object:  ForeignKey [FK_ThanNhan_MaNV]    Script Date: 11/28/2023 09:07:46 ******/
ALTER TABLE [dbo].[ThanNhan]  WITH CHECK ADD  CONSTRAINT [FK_ThanNhan_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThanNhan] CHECK CONSTRAINT [FK_ThanNhan_MaNV]
GO
/****** Object:  ForeignKey [FK_PhanCong_MaDA]    Script Date: 11/28/2023 09:07:46 ******/
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_MaDA] FOREIGN KEY([MaDA])
REFERENCES [dbo].[DeAn] ([MaDA])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_MaDA]
GO
/****** Object:  ForeignKey [FK_PhanCong_MaNV]    Script Date: 11/28/2023 09:07:46 ******/
ALTER TABLE [dbo].[PhanCong]  WITH CHECK ADD  CONSTRAINT [FK_PhanCong_MaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhanCong] CHECK CONSTRAINT [FK_PhanCong_MaNV]
GO
