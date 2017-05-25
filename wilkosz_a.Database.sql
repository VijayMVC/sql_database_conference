USE [master]
GO
/****** Object:  Database [wilkosz_a]    Script Date: 2017-05-25 12:20:46 ******/
CREATE DATABASE [wilkosz_a]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'wilkosz_a', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\wilkosz_a.mdf' , SIZE = 10240KB , MAXSIZE = 30720KB , FILEGROWTH = 2048KB )
 LOG ON 
( NAME = N'wilkosz_a_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\wilkosz_a.ldf' , SIZE = 16384KB , MAXSIZE = 30720KB , FILEGROWTH = 2048KB )
GO
ALTER DATABASE [wilkosz_a] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [wilkosz_a].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [wilkosz_a] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [wilkosz_a] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [wilkosz_a] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [wilkosz_a] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [wilkosz_a] SET ARITHABORT OFF 
GO
ALTER DATABASE [wilkosz_a] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [wilkosz_a] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [wilkosz_a] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [wilkosz_a] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [wilkosz_a] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [wilkosz_a] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [wilkosz_a] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [wilkosz_a] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [wilkosz_a] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [wilkosz_a] SET  ENABLE_BROKER 
GO
ALTER DATABASE [wilkosz_a] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [wilkosz_a] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [wilkosz_a] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [wilkosz_a] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [wilkosz_a] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [wilkosz_a] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [wilkosz_a] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [wilkosz_a] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [wilkosz_a] SET  MULTI_USER 
GO
ALTER DATABASE [wilkosz_a] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [wilkosz_a] SET DB_CHAINING OFF 
GO
ALTER DATABASE [wilkosz_a] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [wilkosz_a] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [wilkosz_a] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'wilkosz_a', N'ON'
GO
ALTER DATABASE [wilkosz_a] SET  READ_WRITE 
GO
