USE [master]
GO
/****** Object:  Database [AccountSystem]    Script Date: 10/25/2023 12:53:45 PM ******/
CREATE DATABASE [AccountSystem]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AccountSystem', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL\MSSQL\DATA\AccountSystem.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AccountSystem_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQL\MSSQL\DATA\AccountSystem_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AccountSystem] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AccountSystem].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AccountSystem] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AccountSystem] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AccountSystem] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AccountSystem] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AccountSystem] SET ARITHABORT OFF 
GO
ALTER DATABASE [AccountSystem] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AccountSystem] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AccountSystem] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AccountSystem] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AccountSystem] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AccountSystem] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AccountSystem] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AccountSystem] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AccountSystem] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AccountSystem] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AccountSystem] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AccountSystem] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AccountSystem] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AccountSystem] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AccountSystem] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AccountSystem] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AccountSystem] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AccountSystem] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AccountSystem] SET  MULTI_USER 
GO
ALTER DATABASE [AccountSystem] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AccountSystem] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AccountSystem] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AccountSystem] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AccountSystem] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AccountSystem]
GO
/****** Object:  Table [dbo].[tbl_ChartofAccount]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ChartofAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Mid] [int] NULL,
	[AccountName] [varchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_ChartofAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_Fixed]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_Fixed](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FixedAccount] [varchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_Fixed] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_GeneralLedger]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_GeneralLedger](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[AccountId] [int] NULL,
	[RefNo] [int] NULL,
	[TypeId] [int] NULL,
	[Debit] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[Description] [varchar](100) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_GeneralLedger] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_JournalDetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_JournalDetail](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefId] [int] NULL,
	[AccountId] [int] NULL,
	[Debit] [decimal](18, 2) NULL,
	[Credit] [decimal](18, 2) NULL,
	[Description] [varchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_JournalDetail] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_JournalMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_JournalMaster](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [varchar](max) NULL,
	[Date] [date] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_JournalMaster] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_MasterAccount]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_MasterAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Fid] [int] NULL,
	[MasterAccount] [varchar](500) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_MasterAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PaymentDetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PaymentDetail](
	[PDId] [int] IDENTITY(1,1) NOT NULL,
	[PId] [int] NULL,
	[DebitAccountId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [varchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_PaymentDetail] PRIMARY KEY CLUSTERED 
(
	[PDId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_PaymentMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_PaymentMaster](
	[PId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [varchar](500) NULL,
	[Date] [date] NULL,
	[CreditAccountId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [varchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_PaymentMaster] PRIMARY KEY CLUSTERED 
(
	[PId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ReceiptDetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ReceiptDetail](
	[RDId] [int] IDENTITY(1,1) NOT NULL,
	[RId] [int] NULL,
	[CreditAccountId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [varchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_ReceiptDetail] PRIMARY KEY CLUSTERED 
(
	[RDId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_ReceiptMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_ReceiptMaster](
	[RId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceNo] [varchar](500) NULL,
	[Date] [date] NULL,
	[DebitAccountId] [int] NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [varchar](max) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_ReceiptMaster] PRIMARY KEY CLUSTERED 
(
	[RId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_TransactionType]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_TransactionType](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeName] [varchar](500) NULL,
	[ShortName] [varchar](50) NULL,
	[Status] [int] NULL,
 CONSTRAINT [PK_tbl_TransactionType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[tbl_ChartofAccount]  WITH CHECK ADD  CONSTRAINT [FK_tbl_ChartofAccount_tbl_MasterAccount] FOREIGN KEY([Mid])
REFERENCES [dbo].[tbl_MasterAccount] ([Id])
GO
ALTER TABLE [dbo].[tbl_ChartofAccount] CHECK CONSTRAINT [FK_tbl_ChartofAccount_tbl_MasterAccount]
GO
ALTER TABLE [dbo].[tbl_GeneralLedger]  WITH CHECK ADD  CONSTRAINT [FK_tbl_GeneralLedger_tbl_ChartofAccount] FOREIGN KEY([AccountId])
REFERENCES [dbo].[tbl_ChartofAccount] ([Id])
GO
ALTER TABLE [dbo].[tbl_GeneralLedger] CHECK CONSTRAINT [FK_tbl_GeneralLedger_tbl_ChartofAccount]
GO
ALTER TABLE [dbo].[tbl_GeneralLedger]  WITH CHECK ADD  CONSTRAINT [FK_tbl_GeneralLedger_tbl_TransactionType] FOREIGN KEY([TypeId])
REFERENCES [dbo].[tbl_TransactionType] ([Id])
GO
ALTER TABLE [dbo].[tbl_GeneralLedger] CHECK CONSTRAINT [FK_tbl_GeneralLedger_tbl_TransactionType]
GO
ALTER TABLE [dbo].[tbl_JournalDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_JournalDetail_tbl_ChartofAccount] FOREIGN KEY([AccountId])
REFERENCES [dbo].[tbl_ChartofAccount] ([Id])
GO
ALTER TABLE [dbo].[tbl_JournalDetail] CHECK CONSTRAINT [FK_tbl_JournalDetail_tbl_ChartofAccount]
GO
ALTER TABLE [dbo].[tbl_JournalDetail]  WITH CHECK ADD  CONSTRAINT [FK_tbl_JournalDetail_tbl_JournalMaster] FOREIGN KEY([RefId])
REFERENCES [dbo].[tbl_JournalMaster] ([Id])
GO
ALTER TABLE [dbo].[tbl_JournalDetail] CHECK CONSTRAINT [FK_tbl_JournalDetail_tbl_JournalMaster]
GO
ALTER TABLE [dbo].[tbl_MasterAccount]  WITH CHECK ADD  CONSTRAINT [FK_tbl_MasterAccount_tbl_Fixed] FOREIGN KEY([Fid])
REFERENCES [dbo].[tbl_Fixed] ([Id])
GO
ALTER TABLE [dbo].[tbl_MasterAccount] CHECK CONSTRAINT [FK_tbl_MasterAccount_tbl_Fixed]
GO
/****** Object:  StoredProcedure [dbo].[DeleteChartAccount]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeleteChartAccount]
@id int 
as
delete from ChartofAccount 
where Id = @id
GO
/****** Object:  StoredProcedure [dbo].[DeleteJournaldetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DeleteJournaldetail]
@id int
as
delete from tbl_JournalDetail where Id = @id
GO
/****** Object:  StoredProcedure [dbo].[DeleteJournalMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[DeleteJournalMaster]
@id int
as
delete from tbl_JournalMaster where id=@id
GO
/****** Object:  StoredProcedure [dbo].[DeleteMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[DeleteMaster]
@id int
as
delete from [dbo].[tbl_MasterAccount]
where id = @id
GO
/****** Object:  StoredProcedure [dbo].[GetAllJournalDetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetAllJournalDetail]
as
Select jd.AccountId,jd.RefId,jd.AccountId,jd.Debit,jd.Credit,jd.Description,jd.Status,
JM.Date,JM.Amount,Ca.AccountName from tbl_JournalDetail jd
inner join  tbl_JournalMaster JM on JM.Id= jd.RefId
inner join  tbl_ChartofAccount Ca on ca.Id= jd.AccountId
GO
/****** Object:  StoredProcedure [dbo].[GetAllJournalMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetAllJournalMaster]
as
Select * from tbl_JournalMaster
GO
/****** Object:  StoredProcedure [dbo].[GetAllJournalVoucher]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetAllJournalVoucher]
as
Select * from tbl_JournalMaster
GO
/****** Object:  StoredProcedure [dbo].[GetALLMasterAC]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[GetALLMasterAC]
as
select ma.id,ma.Fid,ma.MasterAccount,ma.Status,f.FixedAccount from tbl_MasterAccount ma
inner join tbl_Fixed f on ma.Fid = f.id
GO
/****** Object:  StoredProcedure [dbo].[GetByIdCHArtAccount]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[GetByIdCHArtAccount]
@id int
as
select CA.Id, CA.AccountName, CA.Status,ma.MasterAccount from [dbo].[tbl_ChartofAccount] CA
inner join [dbo].[tbl_MasterAccount] ma on ma.Id= CA.Id
where CA.Id = @id
GO
/****** Object:  StoredProcedure [dbo].[GetByIdJouranalDetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetByIdJouranalDetail]
@id int
as
Select jd.AccountId,jd.RefId,jd.AccountId,jd.Debit,jd.Credit,jd.Description,jd.Status,
JM.Date,JM.Amount,Ca.AccountName from tbl_JournalDetail jd
inner join  tbl_JournalMaster JM on JM.Id= jd.RefId
inner join  tbl_ChartofAccount Ca on ca.Id= jd.AccountId
where jd.Id=@id
GO
/****** Object:  StoredProcedure [dbo].[GetByIdJournalMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[GetByIdJournalMaster]
@id int
as
Select * from tbl_JournalMaster where id =@id
GO
/****** Object:  StoredProcedure [dbo].[GetByIDMAsterAc]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetByIDMAsterAc]
@id int
as
select ma.id,ma.Fid,ma.MasterAccount,ma.Status,f.FixedAccount from tbl_MasterAccount ma
inner join tbl_Fixed f on ma.Fid = f.id
where ma.id=@id
GO
/****** Object:  StoredProcedure [dbo].[GetChartOfAccount]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetChartOfAccount]
as
select CA.Id, CA.AccountName, CA.Status,ma.MasterAccount from [dbo].[tbl_ChartofAccount] CA
inner join [dbo].[tbl_MasterAccount] ma on ma.Id= CA.Id
GO
/****** Object:  StoredProcedure [dbo].[InsertChartAccount]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[InsertChartAccount]
@id int,
@Mid int,
@Accountname varchar(500),
@status int
as
insert into chartofAccount 
values(@id,@Mid,@Accountname,@status)
GO
/****** Object:  StoredProcedure [dbo].[InsertMasterAC]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertMasterAC]
@Fid int,
@MasterAccount Varchar (500),
@Status int
as
insert into [dbo].[tbl_MasterAccount]
values (@Fid,@MasterAccount,@Status)

GO
/****** Object:  StoredProcedure [dbo].[SaveJournalDetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Proc [dbo].[SaveJournalDetail]
@id int,
@RefId int,
@AccountId int,
@Debit decimal(18,2),
@Credit decimal(18,2),
@Description varchar(500),
@Status int
as
insert into JournalDetail 
Values(@id,@RefId,@AccountId,@Debit,@Credit,@Description,@Status)
GO
/****** Object:  StoredProcedure [dbo].[SaveJournalMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SaveJournalMaster]
@id int,
@InvoiceNo varchar(max),
@date date,
@Amount decimal(18,2),
@Status int
as
insert into JournalMaster
values(@id,@InvoiceNo,@date,@Amount,@Status)
GO
/****** Object:  StoredProcedure [dbo].[UpdateChartAccount]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateChartAccount]
@id int,
@Mid int,
@Accountname varchar(500),
@status int
as
update ChartofAccount 
set
Mid= @Mid,
Accountname = @Accountname,
status= @status
where Id = @id
GO
/****** Object:  StoredProcedure [dbo].[UpdateJournalDetail]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UpdateJournalDetail]
@id int,@RefId int,@AccountId int,@Debit decimal(18,2),@Credit decimal(18,2),@Description varchar(500),@Status int
as update tbl_JournalDetail
set
RefId=@RefId,
AccountId=@AccountId,
Debit=@Debit,
Credit=@Credit,
Description=@Description,
Status=@Status
where Id=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateJournalMaster]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[UpdateJournalMaster]
@id int,@InvoiceNo varchar(max),@date date,@Amount decimal(18,2),@Status int
as
update tbl_JournalMaster
set
InvoiceNo=@InvoiceNo,
Date=@date,
Amount=@Amount,
Status=@Status
where id=@id
GO
/****** Object:  StoredProcedure [dbo].[UpdateMasterAC]    Script Date: 10/25/2023 12:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[UpdateMasterAC]
@id int,
@Fid int,
@MasterAccount Varchar (500),
@Status int
as
update [dbo].[tbl_MasterAccount]
set
Fid = @Fid,
MasterAccount = @MasterAccount,
Status = @Status
where id = @id
GO
USE [master]
GO
ALTER DATABASE [AccountSystem] SET  READ_WRITE 
GO
