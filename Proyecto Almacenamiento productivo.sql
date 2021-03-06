USE [master]
GO
/****** Jack Jairo Santos Amador Matricula 17-SIIN-1-144 Sección 0541 ******/
CREATE DATABASE [Almacenamiento Productivo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Almacenamiento Productivo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Almacenamiento Productivo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Almacenamiento Productivo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\Almacenamiento Productivo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Almacenamiento Productivo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Almacenamiento Productivo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Almacenamiento Productivo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET ARITHABORT OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Almacenamiento Productivo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Almacenamiento Productivo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Almacenamiento Productivo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Almacenamiento Productivo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Almacenamiento Productivo] SET  MULTI_USER 
GO
ALTER DATABASE [Almacenamiento Productivo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Almacenamiento Productivo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Almacenamiento Productivo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Almacenamiento Productivo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Almacenamiento Productivo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Almacenamiento Productivo] SET QUERY_STORE = OFF
GO
USE [Almacenamiento Productivo]
GO
/****** Object:  Table [dbo].[Articulos]    Script Date: 05/04/2020 12:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Articulos](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
	[Precio] [int] NULL,
	[Fabricante] [int] NULL,
 CONSTRAINT [PK_Articulos] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fabricante]    Script Date: 05/04/2020 12:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fabricante](
	[Codigoid] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NULL,
 CONSTRAINT [PK_Fabricante] PRIMARY KEY CLUSTERED 
(
	[Codigoid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Maquina Registradora]    Script Date: 05/04/2020 12:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Maquina Registradora](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[piso] [int] NULL,
 CONSTRAINT [PK_Maquina Registradora] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ventas]    Script Date: 05/04/2020 12:14:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ventas](
	[Cajero] [nvarchar](50) NULL,
	[Maquina] [int] NULL,
	[Articulo] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Articulos] ON 

INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (1, N'Router', 12000, 1)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (2, N'Taladro', 8000, 2)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (3, N'Sierra guillotina', 18000, 3)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (4, N'Sierra de banco', 23000, 4)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (5, N'Pulodora', 13000, 5)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (6, N'Taladro de pared', 11000, 6)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (7, N'Router 1/4', 9000, 7)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (8, N'Caladora', 5000, 8)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (9, N'Sierra de mano', 5000, 9)
INSERT [dbo].[Articulos] ([Codigo], [Nombre], [Precio], [Fabricante]) VALUES (10, N'Pistola de pintura', 3500, 10)
SET IDENTITY_INSERT [dbo].[Articulos] OFF
SET IDENTITY_INSERT [dbo].[Fabricante] ON 

INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (1, N'DeWalt')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (2, N'Boss')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (3, N'HITACHI')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (4, N'RIOBY')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (5, N'CRAFTMAN')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (6, N'BOSCH')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (7, N'Black and Decker')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (8, N'EROSKI')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (9, N'MAKITA ')
INSERT [dbo].[Fabricante] ([Codigoid], [Nombre]) VALUES (10, N'ECLIPSE')
SET IDENTITY_INSERT [dbo].[Fabricante] OFF
SET IDENTITY_INSERT [dbo].[Maquina Registradora] ON 

INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (1, 1)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (2, 1)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (3, 1)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (4, 1)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (5, 1)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (6, 1)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (7, 1)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (8, 2)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (9, 2)
INSERT [dbo].[Maquina Registradora] ([Codigo], [piso]) VALUES (10, 2)
SET IDENTITY_INSERT [dbo].[Maquina Registradora] OFF
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Pedro Dominguez', 1, 1)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Genesis Parreño', 2, 2)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Maria Tamarez', 3, 3)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Jaxuri Mojica', 4, 4)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Jhon Nixon', 5, 5)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Carlos Mesa', 6, 6)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Ewen Lora', 7, 7)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Maykel Aquino', 8, 8)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Jesus Dias', 9, 9)
INSERT [dbo].[Ventas] ([Cajero], [Maquina], [Articulo]) VALUES (N'Katerine Franco', 10, 10)
ALTER TABLE [dbo].[Articulos]  WITH CHECK ADD  CONSTRAINT [FK_Articulos_Fabricante] FOREIGN KEY([Fabricante])
REFERENCES [dbo].[Fabricante] ([Codigoid])
GO
ALTER TABLE [dbo].[Articulos] CHECK CONSTRAINT [FK_Articulos_Fabricante]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Articulos] FOREIGN KEY([Articulo])
REFERENCES [dbo].[Articulos] ([Codigo])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Articulos]
GO
ALTER TABLE [dbo].[Ventas]  WITH CHECK ADD  CONSTRAINT [FK_Ventas_Maquina Registradora] FOREIGN KEY([Maquina])
REFERENCES [dbo].[Maquina Registradora] ([Codigo])
GO
ALTER TABLE [dbo].[Ventas] CHECK CONSTRAINT [FK_Ventas_Maquina Registradora]
GO
USE [master]
GO
ALTER DATABASE [Almacenamiento Productivo] SET  READ_WRITE 
GO
