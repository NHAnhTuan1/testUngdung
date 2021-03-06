USE [master]
GO
/****** Object:  Database [nguyentuanDb]    Script Date: 06/21/2021 7:56:03 PM ******/
CREATE DATABASE [nguyentuanDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'nguyentuanDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRATUAN\MSSQL\DATA\nguyentuanDb.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'nguyentuanDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRATUAN\MSSQL\DATA\nguyentuanDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [nguyentuanDb] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [nguyentuanDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [nguyentuanDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [nguyentuanDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [nguyentuanDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [nguyentuanDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [nguyentuanDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [nguyentuanDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [nguyentuanDb] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [nguyentuanDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [nguyentuanDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [nguyentuanDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [nguyentuanDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [nguyentuanDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [nguyentuanDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [nguyentuanDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [nguyentuanDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [nguyentuanDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [nguyentuanDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [nguyentuanDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [nguyentuanDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [nguyentuanDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [nguyentuanDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [nguyentuanDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [nguyentuanDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [nguyentuanDb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [nguyentuanDb] SET  MULTI_USER 
GO
ALTER DATABASE [nguyentuanDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [nguyentuanDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [nguyentuanDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [nguyentuanDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [nguyentuanDb]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 06/21/2021 7:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[id] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[LoaiSP] [nvarchar](50) NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 06/21/2021 7:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[id] [nvarchar](50) NOT NULL,
	[Ten] [nvarchar](100) NULL,
	[Gia] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 06/21/2021 7:56:04 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[userAcc] [varchar](100) NOT NULL,
	[password] [varchar](100) NOT NULL,
	[Email] [varchar](1000) NULL,
	[Fullname] [nvarchar](100) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[userAcc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[LoaiSanPham] ([id], [Ten], [LoaiSP]) VALUES (N'1', N'thước', N'học sinh')
INSERT [dbo].[LoaiSanPham] ([id], [Ten], [LoaiSP]) VALUES (N'10', N'Dụng cụ Giảng dạy Toán', N'giáo viên')
INSERT [dbo].[LoaiSanPham] ([id], [Ten], [LoaiSP]) VALUES (N'8', N'sổ giáo án', N'giáo viên')
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'1', N'bút chì', 6000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'10', N'Dụng cụ Giảng dạy Toán', 138000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'13', N'but bi', 2)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'2', N'gọt', 4000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'3', N'thước', 8000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'4', N'hộp bút', 45000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'5', N'giấy', 1000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'6', N'vở', 12000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'7', N'phấn', 5000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'8', N'sổ giáo án', 20000)
INSERT [dbo].[Sanpham] ([id], [Ten], [Gia]) VALUES (N'9', N'sách hướng dẫn', 37000)
INSERT [dbo].[Users] ([userAcc], [password], [Email], [Fullname]) VALUES (N'aa', N'ab', N'anhtuan@gmail.com', N'tuan')
INSERT [dbo].[Users] ([userAcc], [password], [Email], [Fullname]) VALUES (N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'anhtuan@gmail.com', N'nguyễn hoàng anh tuấn')
INSERT [dbo].[Users] ([userAcc], [password], [Email], [Fullname]) VALUES (N'anhtuan', N'12345678', N'tuannguyen@gmail.com', N'hoàng anh tuấn')
INSERT [dbo].[Users] ([userAcc], [password], [Email], [Fullname]) VALUES (N'tuan0904', N'12345678', N'tuan18T4@gmail.com', N'Hoàng Tuấn')
INSERT [dbo].[Users] ([userAcc], [password], [Email], [Fullname]) VALUES (N'tuannguyen', N'12345678', N'tuan2000@gmail.com', N'nguyễn tuấn')
INSERT [dbo].[Users] ([userAcc], [password], [Email], [Fullname]) VALUES (N'tuannh2000', N'12345678', N'tuannh@gmail.com', N'lê tuấn')
USE [master]
GO
ALTER DATABASE [nguyentuanDb] SET  READ_WRITE 
GO
