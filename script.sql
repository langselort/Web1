USE [master]
GO
/****** Object:  Database [Web]    Script Date: 05/28/2016 22:42:51 ******/
CREATE DATABASE [Web] ON  PRIMARY 
( NAME = N'Web', FILENAME = N'D:\Data\Web.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Web_log', FILENAME = N'D:\Data\Web_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Web] SET COMPATIBILITY_LEVEL = 90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Web] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [Web] SET ANSI_NULLS OFF
GO
ALTER DATABASE [Web] SET ANSI_PADDING OFF
GO
ALTER DATABASE [Web] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [Web] SET ARITHABORT OFF
GO
ALTER DATABASE [Web] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Web] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [Web] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [Web] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [Web] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [Web] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [Web] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [Web] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [Web] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [Web] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [Web] SET  DISABLE_BROKER
GO
ALTER DATABASE [Web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [Web] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [Web] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [Web] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [Web] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [Web] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [Web] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [Web] SET  READ_WRITE
GO
ALTER DATABASE [Web] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Web] SET  MULTI_USER
GO
ALTER DATABASE [Web] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Web] SET DB_CHAINING OFF
GO
USE [Web]
GO
/****** Object:  Table [dbo].[MTVType]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MTVType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
	[ZhuanYe] [nvarchar](50) NULL,
	[Teacher] [int] NULL,
 CONSTRAINT [PK_MTVType] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[MTVType] ON
INSERT [dbo].[MTVType] ([ID], [Type], [ZhuanYe], [Teacher]) VALUES (1, N'语文', N'电子商务', 3)
INSERT [dbo].[MTVType] ([ID], [Type], [ZhuanYe], [Teacher]) VALUES (2, N'数学', N'电子信息工程', 4)
INSERT [dbo].[MTVType] ([ID], [Type], [ZhuanYe], [Teacher]) VALUES (3, N'计算机应用', N'网络工程', 3)
INSERT [dbo].[MTVType] ([ID], [Type], [ZhuanYe], [Teacher]) VALUES (5, N'物理学', N'土木工程', 4)
INSERT [dbo].[MTVType] ([ID], [Type], [ZhuanYe], [Teacher]) VALUES (6, N'生物学', N'土木工程', 4)
SET IDENTITY_INSERT [dbo].[MTVType] OFF
/****** Object:  Table [dbo].[Client]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Client](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NULL,
	[sex] [nvarchar](50) NULL,
	[age] [int] NULL,
	[tel] [nvarchar](50) NULL,
	[address] [nvarchar](50) NULL,
	[mail] [nvarchar](50) NULL,
	[xueli] [nvarchar](50) NULL,
	[login] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Client] ON
INSERT [dbo].[Client] ([ID], [name], [sex], [age], [tel], [address], [mail], [xueli], [login], [pass]) VALUES (1, N'胡增陆', N'男', 29, N'13057509390', N'南京市', N'hu0336@163.com', N'博士', N'hu0336', N'111111')
INSERT [dbo].[Client] ([ID], [name], [sex], [age], [tel], [address], [mail], [xueli], [login], [pass]) VALUES (2, N'测试员', N'男', 2, N'13057509390', N'南京市', N'hu0336@163.com', N'高中', N'test', N'111111')
SET IDENTITY_INSERT [dbo].[Client] OFF
/****** Object:  Table [dbo].[admin]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[admin](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[admin] ON
INSERT [dbo].[admin] ([id], [login], [pass]) VALUES (1, N'admin', N'111111')
SET IDENTITY_INSERT [dbo].[admin] OFF
/****** Object:  Table [dbo].[ZhuanYe]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZhuanYe](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NULL,
 CONSTRAINT [PK_ZhuanYe] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ZhuanYe] ON
INSERT [dbo].[ZhuanYe] ([ID], [Type]) VALUES (1, N'土木工程')
INSERT [dbo].[ZhuanYe] ([ID], [Type]) VALUES (2, N'电子商务')
INSERT [dbo].[ZhuanYe] ([ID], [Type]) VALUES (3, N'电子信息工程')
INSERT [dbo].[ZhuanYe] ([ID], [Type]) VALUES (4, N'网络工程')
INSERT [dbo].[ZhuanYe] ([ID], [Type]) VALUES (5, N'电子商务')
SET IDENTITY_INSERT [dbo].[ZhuanYe] OFF
/****** Object:  Table [dbo].[Teacher]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Teacher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[xueli] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[ZhuanYe_ID] [int] NULL,
	[Content] [text] NULL,
	[Img] [varchar](500) NULL,
	[login] [varchar](50) NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Teacher] ON
INSERT [dbo].[Teacher] ([ID], [Name], [Age], [xueli], [Tel], [ZhuanYe_ID], [Content], [Img], [login], [pass]) VALUES (3, N'李万根', 38, N'本科', N'130575093920', 1, N'李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根李万根', N'file/33.jpg', N'001', N'001')
INSERT [dbo].[Teacher] ([ID], [Name], [Age], [xueli], [Tel], [ZhuanYe_ID], [Content], [Img], [login], [pass]) VALUES (4, N'王凯', 45, N'大专', N'13057509390', 5, N'王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯王凯', N'file/33.jpg', N'002', N'002')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
/****** Object:  Table [dbo].[Board]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Board](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Client_ID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Content] [text] NULL,
	[intime] [datetime] NULL,
	[HuiFu] [text] NULL,
 CONSTRAINT [PK_Board] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Board] ON
INSERT [dbo].[Board] ([ID], [Client_ID], [Title], [Content], [intime], [HuiFu]) VALUES (1, 1, N'测试一下', N'测试一下看有没有问题！！', CAST(0x0000A5EF00F61CB0 AS DateTime), N' ')
INSERT [dbo].[Board] ([ID], [Client_ID], [Title], [Content], [intime], [HuiFu]) VALUES (2, 1, N'如果有问题在这里留言', N'不错哦', CAST(0x0000A5EF00F61CB0 AS DateTime), N' ')
INSERT [dbo].[Board] ([ID], [Client_ID], [Title], [Content], [intime], [HuiFu]) VALUES (3, 2, N'小孩怎么弄', N'测试一下留言', CAST(0x0000A5EF00F61CB0 AS DateTime), N'哦')
INSERT [dbo].[Board] ([ID], [Client_ID], [Title], [Content], [intime], [HuiFu]) VALUES (5, 1, N'我考试考了多少分？', N'我考试考了多少分？', CAST(0x0000A5EF00F61CB0 AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[Board] OFF
/****** Object:  Table [dbo].[MTV]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MTV](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[InTime] [datetime] NULL,
	[Content] [text] NULL,
	[MTVType_ID] [int] NULL,
	[Url] [varchar](50) NULL,
	[Teacher_ID] [int] NULL,
 CONSTRAINT [PK_MTV] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[MTV] ON
INSERT [dbo].[MTV] ([ID], [Title], [InTime], [Content], [MTVType_ID], [Url], [Teacher_ID]) VALUES (1, N'学习视频', CAST(0x0000A5EF00F61CB0 AS DateTime), N'学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频学习视频', 2, N'file/111008105222.flv', 3)
INSERT [dbo].[MTV] ([ID], [Title], [InTime], [Content], [MTVType_ID], [Url], [Teacher_ID]) VALUES (2, N'实验视频', CAST(0x0000A5EF00F61CB0 AS DateTime), N'实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频实验视频', 3, N'file/634982604773750000.flv', 4)
SET IDENTITY_INSERT [dbo].[MTV] OFF
/****** Object:  Table [dbo].[Down]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Down](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Teacher_ID] [int] NULL,
	[Title] [nvarchar](50) NULL,
	[Content] [text] NULL,
	[intime] [datetime] NULL,
	[url] [varchar](50) NULL,
 CONSTRAINT [PK_Down] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Down] ON
INSERT [dbo].[Down] ([ID], [Teacher_ID], [Title], [Content], [intime], [url]) VALUES (1, 3, N'论文模板', N'', CAST(0x0000A5EF00F61CB0 AS DateTime), N'file/1.docx')
INSERT [dbo].[Down] ([ID], [Teacher_ID], [Title], [Content], [intime], [url]) VALUES (2, 3, N'123', N'', CAST(0x0000A5EF00F61CB0 AS DateTime), N'file/1.docx')
INSERT [dbo].[Down] ([ID], [Teacher_ID], [Title], [Content], [intime], [url]) VALUES (3, 4, N'答辩PPT模板', N'', CAST(0x0000A5EF00F61CB0 AS DateTime), N'file/1.docx')
SET IDENTITY_INSERT [dbo].[Down] OFF
/****** Object:  Table [dbo].[Ass]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ass](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Url] [varchar](500) NULL,
	[InTime] [datetime] NULL,
	[Teacher_ID] [int] NULL,
 CONSTRAINT [PK_Ass] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Ass] ON
INSERT [dbo].[Ass] ([ID], [Title], [Url], [InTime], [Teacher_ID]) VALUES (7, N'123', N'file/1.docx', CAST(0x0000A5EF00F61CB0 AS DateTime), 3)
INSERT [dbo].[Ass] ([ID], [Title], [Url], [InTime], [Teacher_ID]) VALUES (8, N'计算机第14章课后作业', N'file/1.docx', CAST(0x0000A5EF00F61CB0 AS DateTime), 4)
SET IDENTITY_INSERT [dbo].[Ass] OFF
/****** Object:  Table [dbo].[Answer]    Script Date: 05/28/2016 22:42:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Answer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ass_ID] [int] NULL,
	[Client_ID] [int] NULL,
	[Score] [float] NULL,
	[Url] [varchar](500) NULL,
 CONSTRAINT [PK_Answer] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Answer] ON
INSERT [dbo].[Answer] ([ID], [Ass_ID], [Client_ID], [Score], [Url]) VALUES (1, 7, 1, 90, N'file/1.docx')
INSERT [dbo].[Answer] ([ID], [Ass_ID], [Client_ID], [Score], [Url]) VALUES (2, 8, 1, 60, N'file/1.docx')
INSERT [dbo].[Answer] ([ID], [Ass_ID], [Client_ID], [Score], [Url]) VALUES (3, 8, 2, 0, N'file/10.pkt')
SET IDENTITY_INSERT [dbo].[Answer] OFF
/****** Object:  ForeignKey [FK_Teacher_ZhuanYe]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Teacher_ZhuanYe] FOREIGN KEY([ZhuanYe_ID])
REFERENCES [dbo].[ZhuanYe] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Teacher_ZhuanYe]
GO
/****** Object:  ForeignKey [FK_Board_Client]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[Board]  WITH CHECK ADD  CONSTRAINT [FK_Board_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Board] CHECK CONSTRAINT [FK_Board_Client]
GO
/****** Object:  ForeignKey [FK_MTV_MTVType]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[MTV]  WITH CHECK ADD  CONSTRAINT [FK_MTV_MTVType] FOREIGN KEY([MTVType_ID])
REFERENCES [dbo].[MTVType] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MTV] CHECK CONSTRAINT [FK_MTV_MTVType]
GO
/****** Object:  ForeignKey [FK_MTV_Teacher]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[MTV]  WITH CHECK ADD  CONSTRAINT [FK_MTV_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MTV] CHECK CONSTRAINT [FK_MTV_Teacher]
GO
/****** Object:  ForeignKey [FK_Down_Teacher]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[Down]  WITH CHECK ADD  CONSTRAINT [FK_Down_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Down] CHECK CONSTRAINT [FK_Down_Teacher]
GO
/****** Object:  ForeignKey [FK_Ass_Teacher]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[Ass]  WITH CHECK ADD  CONSTRAINT [FK_Ass_Teacher] FOREIGN KEY([Teacher_ID])
REFERENCES [dbo].[Teacher] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Ass] CHECK CONSTRAINT [FK_Ass_Teacher]
GO
/****** Object:  ForeignKey [FK_Answer_Ass]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Ass] FOREIGN KEY([Ass_ID])
REFERENCES [dbo].[Ass] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Ass]
GO
/****** Object:  ForeignKey [FK_Answer_Client]    Script Date: 05/28/2016 22:42:51 ******/
ALTER TABLE [dbo].[Answer]  WITH CHECK ADD  CONSTRAINT [FK_Answer_Client] FOREIGN KEY([Client_ID])
REFERENCES [dbo].[Client] ([ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Answer] CHECK CONSTRAINT [FK_Answer_Client]
GO
