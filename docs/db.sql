USE [master]
GO
/****** Object:  Database [FP_Exam]    Script Date: 2019/03/29 11:50:30 ******/
CREATE DATABASE [FP_Exam]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FP_Exam].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FP_Exam] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FP_Exam] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FP_Exam] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FP_Exam] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FP_Exam] SET ARITHABORT OFF 
GO
ALTER DATABASE [FP_Exam] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FP_Exam] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [FP_Exam] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FP_Exam] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FP_Exam] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FP_Exam] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FP_Exam] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FP_Exam] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FP_Exam] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FP_Exam] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FP_Exam] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FP_Exam] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FP_Exam] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FP_Exam] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FP_Exam] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FP_Exam] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FP_Exam] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FP_Exam] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FP_Exam] SET RECOVERY FULL 
GO
ALTER DATABASE [FP_Exam] SET  MULTI_USER 
GO
ALTER DATABASE [FP_Exam] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FP_Exam] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FP_Exam', N'ON'
GO
USE [FP_Exam]
GO
/****** Object:  Table [dbo].[FP_Exam_ExamInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[typelist] [nvarchar](255) NULL,
	[name] [nvarchar](100) NULL,
	[total] [float] NULL,
	[passmark] [float] NULL,
	[examtime] [int] NULL,
	[islimit] [int] NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[repeats] [int] NULL,
	[showanswer] [int] NULL,
	[allowdelete] [int] NULL,
	[display] [int] NULL,
	[optiondisplay] [int] NULL,
	[postdatetime] [datetime] NULL,
	[examtype] [int] NULL,
	[examroles] [nvarchar](255) NULL,
	[examdeparts] [nvarchar](255) NULL,
	[examuser] [nvarchar](255) NULL,
	[credits] [int] NULL,
	[exams] [int] NULL,
	[score] [float] NULL,
	[views] [int] NULL,
	[questions] [int] NULL,
	[status] [int] NULL,
	[papers] [int] NULL,
	[description] [nvarchar](100) NULL,
	[content] [nvarchar](max) NULL,
	[iscopy] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamLogInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamLogInfo](
	[id] [int] NOT NULL,
	[sortid] [int] NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[answers] [int] NULL,
	[qidlist] [nvarchar](max) NULL,
	[optionlist] [nvarchar](max) NULL,
	[answerlist] [nvarchar](max) NULL,
	[scorelist] [nvarchar](max) NULL,
	[wrongs] [int] NULL,
	[curwrongs] [int] NULL,
	[wronglist] [nvarchar](max) NULL,
	[notes] [int] NULL,
	[curnotes] [int] NULL,
	[notelist] [nvarchar](max) NULL,
	[favs] [int] NULL,
	[curfavs] [int] NULL,
	[favlist] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamNote]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamNote](
	[id] [int] NOT NULL,
	[qid] [int] NULL,
	[uid] [int] NULL,
	[note] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamQuestion]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamQuestion](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[type] [int] NULL,
	[title] [nvarchar](max) NULL,
	[content] [nvarchar](max) NULL,
	[answer] [nvarchar](max) NULL,
	[upperflg] [int] NULL,
	[orderflg] [int] NULL,
	[answerkey] [nvarchar](200) NULL,
	[ascount] [int] NULL,
	[explain] [nvarchar](max) NULL,
	[difficulty] [int] NULL,
	[postdatetime] [datetime] NULL,
	[exams] [int] NULL,
	[wrongs] [int] NULL,
	[status] [int] NULL,
	[isclear] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamResult]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamResult](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[channelid] [int] NULL,
	[sortid] [int] NULL,
	[examid] [int] NULL,
	[examname] [nvarchar](100) NULL,
	[examtime] [int] NULL,
	[examtype] [int] NULL,
	[showanswer] [int] NULL,
	[allowdelete] [int] NULL,
	[total] [float] NULL,
	[passmark] [float] NULL,
	[score1] [float] NULL,
	[score2] [float] NULL,
	[score] [float] NULL,
	[utime] [int] NULL,
	[islimit] [int] NULL,
	[starttime] [datetime] NULL,
	[endtime] [datetime] NULL,
	[examdatetime] [datetime] NULL,
	[credits] [int] NULL,
	[questions] [int] NULL,
	[wrongs] [int] NULL,
	[unanswer] [int] NULL,
	[exp] [int] NULL,
	[getcredits] [int] NULL,
	[exnote] [nvarchar](200) NULL,
	[status] [int] NULL,
	[paper] [int] NULL,
	[ip] [nvarchar](30) NULL,
	[mac] [nvarchar](50) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamResultTopic]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamResultTopic](
	[id] [int] NOT NULL,
	[resultid] [int] NULL,
	[type] [int] NULL,
	[title] [nvarchar](100) NULL,
	[display] [int] NULL,
	[perscore] [float] NULL,
	[score] [float] NULL,
	[questions] [int] NULL,
	[wrongs] [int] NULL,
	[questionlist] [nvarchar](max) NULL,
	[optionlist] [nvarchar](max) NULL,
	[answerlist] [nvarchar](max) NULL,
	[scorelist] [nvarchar](max) NULL,
	[correctlist] [nvarchar](max) NULL,
	[paper] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExamTopic]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExamTopic](
	[id] [int] NOT NULL,
	[examid] [int] NULL,
	[type] [int] NULL,
	[title] [nvarchar](100) NULL,
	[display] [int] NULL,
	[questions] [int] NULL,
	[curquestions] [int] NULL,
	[questionlist] [nvarchar](200) NULL,
	[perscore] [float] NULL,
	[randomsort] [nvarchar](max) NULL,
	[randomcount] [nvarchar](max) NULL,
	[randoms] [int] NULL,
	[paper] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_Exam_ExpInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_Exam_ExpInfo](
	[id] [int] NOT NULL,
	[examid] [int] NULL,
	[scorelower] [int] NULL,
	[scoreupper] [int] NULL,
	[exp] [int] NULL,
	[credits] [int] NULL,
	[comment] [nvarchar](200) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_AppInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_AppInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](100) NULL,
	[installpath] [nvarchar](100) NULL,
	[setpath] [nvarchar](100) NULL,
	[author] [nvarchar](100) NULL,
	[version] [nvarchar](30) NULL,
	[frontpage] [nvarchar](100) NULL,
	[target] [nvarchar](30) NULL,
	[notes] [nvarchar](200) NULL,
	[files] [nvarchar](max) NULL,
	[guid] [nvarchar](50) NULL,
	[sortapps] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_AttachInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_AttachInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[sortid] [int] NULL,
	[filename] [nvarchar](100) NULL,
	[filetype] [nvarchar](30) NULL,
	[filesize] [int] NULL,
	[originalname] [nvarchar](100) NULL,
	[description] [nvarchar](100) NULL,
	[postdatetime] [datetime] NULL,
	[downloads] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_AttachType]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_AttachType](
	[id] [int] NOT NULL,
	[extension] [nvarchar](10) NULL,
	[maxsize] [int] NULL,
	[type] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_ChannelInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_ChannelInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[display] [int] NULL,
	[markup] [nvarchar](20) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_CreditInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_CreditInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[type] [int] NULL,
	[credits] [int] NULL,
	[postdatetime] [datetime] NULL,
	[doid] [int] NULL,
	[doname] [nvarchar](30) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_Department]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_Department](
	[id] [int] NOT NULL,
	[parentid] [int] NULL,
	[parentlist] [nvarchar](100) NULL,
	[name] [nvarchar](50) NULL,
	[usercount] [int] NULL,
	[description] [nvarchar](50) NULL,
	[display] [int] NULL,
	[subcounts] [int] NULL,
	[posts] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_DesktopInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_DesktopInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[icon] [nvarchar](200) NULL,
	[lefturl] [nvarchar](200) NULL,
	[righturl] [nvarchar](200) NULL,
	[description] [nvarchar](200) NULL,
	[hidden] [int] NULL,
	[system] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_MenuInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_MenuInfo](
	[id] [int] NOT NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[lefturl] [nvarchar](200) NULL,
	[righturl] [nvarchar](200) NULL,
	[display] [int] NULL,
	[system] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_MsgTempInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_MsgTempInfo](
	[id] [int] NOT NULL,
	[type] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](20) NULL,
	[content] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_Permission]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_Permission](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[flagpage] [nvarchar](max) NULL,
	[isadd] [int] NULL,
	[isupdate] [int] NULL,
	[isdelete] [int] NULL,
	[isaudit] [int] NULL,
	[status] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_RoleInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_RoleInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](60) NULL,
	[description] [nvarchar](100) NULL,
	[desktopurl] [nvarchar](100) NULL,
	[sorts] [nvarchar](250) NULL,
	[menus] [nvarchar](250) NULL,
	[desktop] [nvarchar](250) NULL,
	[permission] [nvarchar](250) NULL,
	[isadmin] [int] NULL,
	[isupload] [int] NULL,
	[isdownload] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_SortAppInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SortAppInfo](
	[id] [int] NOT NULL,
	[appid] [int] NULL,
	[name] [nvarchar](60) NULL,
	[markup] [nvarchar](30) NULL,
	[indexpage] [nvarchar](200) NULL,
	[viewpage] [nvarchar](200) NULL,
	[installpath] [nvarchar](60) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_SortInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SortInfo](
	[id] [int] NOT NULL,
	[channelid] [int] NULL,
	[appid] [int] NULL,
	[display] [int] NULL,
	[parentid] [int] NULL,
	[parentlist] [nvarchar](100) NULL,
	[name] [nvarchar](60) NULL,
	[markup] [nvarchar](20) NULL,
	[description] [nvarchar](200) NULL,
	[icon] [nvarchar](60) NULL,
	[img] [nvarchar](100) NULL,
	[subcounts] [int] NULL,
	[types] [nvarchar](200) NULL,
	[otherurl] [nvarchar](200) NULL,
	[hidden] [int] NULL,
	[posts] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_SysLogInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_SysLogInfo](
	[id] [int] NOT NULL,
	[uid] [int] NULL,
	[name] [nvarchar](30) NULL,
	[title] [nvarchar](60) NULL,
	[description] [nvarchar](200) NULL,
	[ip] [nvarchar](30) NULL,
	[postdatetime] [datetime] NULL,
	[status] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_TaskInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_TaskInfo](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
	[key] [nvarchar](50) NULL,
	[timeofday] [int] NULL,
	[minutes] [int] NULL,
	[type] [nvarchar](50) NULL,
	[lastexecuted] [nvarchar](20) NULL,
	[enabled] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_TypeInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_TypeInfo](
	[id] [int] NOT NULL,
	[parentid] [int] NULL,
	[name] [nvarchar](50) NULL,
	[markup] [nvarchar](50) NULL,
	[description] [nvarchar](60) NULL,
	[display] [int] NULL,
	[img] [nvarchar](200) NULL,
	[subcounts] [int] NULL,
	[posts] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_UserGrade]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_UserGrade](
	[id] [int] NOT NULL,
	[name] [nvarchar](30) NULL,
	[stars] [int] NULL,
	[explower] [int] NULL,
	[expupper] [int] NULL,
	[description] [nvarchar](60) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FP_WMS_UserInfo]    Script Date: 2019/03/29 11:50:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FP_WMS_UserInfo](
	[id] [int] NOT NULL,
	[roleid] [int] NULL,
	[departid] [int] NULL,
	[gradeid] [int] NULL,
	[type] [nvarchar](50) NULL,
	[username] [nvarchar](20) NULL,
	[password] [nvarchar](32) NULL,
	[password2] [nvarchar](32) NULL,
	[email] [nvarchar](30) NULL,
	[isemail] [int] NULL,
	[mobile] [nvarchar](20) NULL,
	[ismobile] [int] NULL,
	[realname] [nvarchar](20) NULL,
	[isreal] [int] NULL,
	[nickname] [nvarchar](20) NULL,
	[avatar] [nvarchar](60) NULL,
	[sex] [int] NULL,
	[exp] [int] NULL,
	[credits] [int] NULL,
	[regip] [nvarchar](15) NULL,
	[joindatetime] [datetime] NULL,
	[onlinestate] [int] NULL,
	[lastip] [nvarchar](15) NULL,
	[lastvisit] [datetime] NULL,
	[secques] [nvarchar](8) NULL,
	[authstr] [nvarchar](20) NULL,
	[authtime] [datetime] NULL,
	[authflag] [int] NULL,
	[vipdate] [nvarchar](20) NULL,
	[bday] [nvarchar](30) NULL,
	[bloodtype] [nvarchar](30) NULL,
	[height] [nvarchar](30) NULL,
	[weight] [nvarchar](30) NULL,
	[married] [int] NULL,
	[education] [nvarchar](30) NULL,
	[school] [nvarchar](60) NULL,
	[job] [nvarchar](30) NULL,
	[position] [nvarchar](30) NULL,
	[politics] [nvarchar](30) NULL,
	[company] [nvarchar](60) NULL,
	[nation] [nvarchar](30) NULL,
	[phone] [nvarchar](30) NULL,
	[qq] [nvarchar](30) NULL,
	[blog] [nvarchar](60) NULL,
	[province] [nvarchar](30) NULL,
	[city] [nvarchar](30) NULL,
	[address] [nvarchar](60) NULL,
	[zipcode] [nvarchar](30) NULL,
	[note] [nvarchar](60) NULL,
	[idcard] [nvarchar](60) NULL,
	[isidcard] [int] NULL,
	[idcardface] [nvarchar](100) NULL,
	[idcardback] [nvarchar](100) NULL,
	[idcardper] [nvarchar](100) NULL,
	[idcarvalidity] [datetime] NULL,
	[content] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[FP_Exam_ExamInfo] ([id], [uid], [channelid], [sortid], [typelist], [name], [total], [passmark], [examtime], [islimit], [starttime], [endtime], [repeats], [showanswer], [allowdelete], [display], [optiondisplay], [postdatetime], [examtype], [examroles], [examdeparts], [examuser], [credits], [exams], [score], [views], [questions], [status], [papers], [description], [content], [iscopy]) VALUES (1, 1, 2, 2, N'', N'模拟考试', 100, 60, 60, 0, CAST(0x0000A42600ABA950 AS DateTime), CAST(0x0000A42600BC2410 AS DateTime), 0, 1, 0, 0, 0, CAST(0x0000A3EE0015E640 AS DateTime), 0, N'', N'', N'', 0, 6, 22.7, 0, 100, 1, 2, N'', N'', 0)
INSERT [dbo].[FP_Exam_ExamInfo] ([id], [uid], [channelid], [sortid], [typelist], [name], [total], [passmark], [examtime], [islimit], [starttime], [endtime], [repeats], [showanswer], [allowdelete], [display], [optiondisplay], [postdatetime], [examtype], [examroles], [examdeparts], [examuser], [credits], [exams], [score], [views], [questions], [status], [papers], [description], [content], [iscopy]) VALUES (3, 1, 3, 7, N'', N'信息化正式考试', 100, 60, 60, 0, CAST(0x0000A42A015333F0 AS DateTime), CAST(0x0000A42A0163AEB0 AS DateTime), 0, 1, 0, 0, 1, CAST(0x0000A42A01539534 AS DateTime), 0, N'', N'', N'', 0, 2, 4, 0, 40, 1, 2, N'', N'', 0)
INSERT [dbo].[FP_Exam_ExamLogInfo] ([id], [sortid], [uid], [channelid], [answers], [qidlist], [optionlist], [answerlist], [scorelist], [wrongs], [curwrongs], [wronglist], [notes], [curnotes], [notelist], [favs], [curfavs], [favlist]) VALUES (1, 1, 1, 1, 252, N'332,223,96,291,296,100,26,74,167,192,5,311,88,80,326,79,81,78,46,335,304,76,184,143,18,174,175,201,19,303,51,287,256,35,320,67,247,109,232,66,216,34,288,2,257,231,159,110,200,272,94,20,68,264,161,289,233,112,11,195,255,298,106,208,278,6,120,45,23,308,145,205,240,158,246,290,63,122,238,190,241,266,178,228,206,14,146,279,58,31,97,166,168,218,227,268,217,321,258,169,28,307,156,72,239,196,297,207,147,244,188,197,295,177,102,121,189,40,157,111,179,277,229,280,306,245,267,319,53,75,9,164,185,275,152,194,39,154,119,142,12,163,52,61,237,225,162,213,235,226,7,29,153,331,203,187,165,329,215,315,265,292,117,141,293,186,105,236,22,285,273,284,305,286,243,330,294,263,57,253,93,316,118,276,116,176,274,252,224,214,49,242,71,43,4,234,254,191,193,202,204,17,309,259,64,27,310,103,281,41,170,323,221,171,271,219,248,10,32,54,322,300,149,199,249,24,47,180,69,209,220,270,113,182,282,269,98,148,15,198,36,59,260,312,160,210,50,230,299,181,144,99', N'0,1,2,3|3,0,1,2|2,1,0|0,1,2,3|3,0,1,2|0,1,2|2,3,0,1|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|3,2,4,1,0|0,2,1,3,5,4|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|0,1,2,3|*|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,3,1,2|2,3,0,1|1,2,3,0|0,1,2,3|1,3,2,0|0,2,1,3|3,1,0,2|2,0,3,1|3,2,0,1|0,1,2,3|3,0,1,2|1,2,0|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,3,0,1|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,3,0,1|1,2,3,0|0,1,2,3|2,3,0,1|0,1,2,3|3,0,1,2|2,3,0,1|0,1,2,3|3,0,1,2|2,3,0,1|1,2,0|0,2,3,1|1,2,3,0|3,0,1,2|2,1,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|0,1,2,3|2,0,1|1,2,3,0|3,0,1,2|0,3,1,2|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|2,3,1,0|0,1,2,3|3,0,1,2|2,3,0,1|3,0,1,2|2,3,0,1|1,2,3,0|0,1,3,2|1,0,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|1,2,3,0|0,1,2,3|3,0,1,2|1,2,3,0|0,1,2,3|3,0,1,2|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,0,3,1|1,2,0|0,2,1,3|3,1,0,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|0,1,2,3|3,0,1,2|2,3,0,1|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|1,2,3,0|0,1,2,3|3,0,1,2|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|3,0,1,2|2,3,0,1|1,2,3,0|2,3,0,1|1,2,3,0|2,3,0,1|2,0,1|1,2,3,0|1,2,3,0|3,0,1,2|2,3,0,1|0,1,2,3|3,0,1,2|1,2,3,0|0,1,2,3|2,3,0,1|1,2,3,0|3,0,1,2|1,2,3,0|0,1,2,3|3,0,1,2|1,2,3,0|3,0,1,2|1,2,3,0|0,1,2,3|1,0,2,3|3,0,1,2|2,3,0,1|1,2,3,0|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|3,1,0,2|0,1,2,3|1,2,0|0,3,1,2|2,1,3,0|0,1,2,3|3,0,1,2|2,3,0,1|3,0,1,2|1,2,3,0|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|0,1,2', N'B§C§A§D§B§§§C§§C§B,C§A,B§D,E§B,C§A,B§B,C§A,B§B,C§§布尔,§B§§§§§§§§§C§B§§§§§§§§§§§§B§§§§§§§§§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§A§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§§§B', N'0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1', 249, 0, N'332,223,96,291,296,74,192,5,311,88,80,326,79,81,78,335,304,76,184,143,18,174,175,201,19,303,51,287,256,35,320,67,247,109,232,66,216,34,2,257,231,159,110,200,272,94,46,20,68,264,161,289,233,112,11,195,255,298,106,208,278,6,120,45,23,308,145,205,240,158,246,290,63,122,238,190,241,266,178,228,206,14,146,279,58,31,97,166,168,218,227,268,217,321,258,169,28,307,156,72,239,196,297,207,147,244,188,197,295,177,102,121,189,40,167,157,111,179,277,229,280,306,245,267,319,53,75,9,164,185,275,152,194,39,154,119,142,12,163,52,61,237,225,162,213,235,226,7,29,153,331,203,187,165,329,215,315,265,292,117,141,293,186,105,236,22,285,273,284,305,286,243,330,294,263,57,253,93,316,118,276,116,176,274,252,224,214,26,49,242,71,43,4,234,254,191,193,202,204,100,17,309,259,64,27,310,103,41,170,323,221,171,271,219,248,10,32,54,322,300,149,199,249,24,47,180,69,209,220,270,113,182,282,269,98,148,15,198,36,59,260,312,160,210,50,230,299,181,144', 0, 0, N'', 0, 0, N'')
INSERT [dbo].[FP_Exam_ExamLogInfo] ([id], [sortid], [uid], [channelid], [answers], [qidlist], [optionlist], [answerlist], [scorelist], [wrongs], [curwrongs], [wronglist], [notes], [curnotes], [notelist], [favs], [curfavs], [favlist]) VALUES (2, 5, 1, 1, 180, N'332,223,291,296,167,192,311,326,304,184,143,174,175,201,303,287,256,320,247,109,232,216,288,257,231,159,110,200,272,264,161,289,233,112,195,255,298,208,278,120,308,145,205,240,158,246,290,122,238,190,241,266,178,228,206,146,279,166,168,218,227,268,217,321,258,169,307,156,239,196,297,207,147,244,188,197,295,177,121,189,157,111,179,277,229,280,306,245,267,319,164,185,275,152,194,154,119,142,163,237,225,162,213,235,226,153,331,203,187,165,329,215,315,265,292,117,141,293,186,236,285,273,284,305,286,243,330,294,263,253,316,118,276,116,176,274,252,224,214,242,234,254,191,193,202,204,309,259,310,281,170,323,221,171,271,219,248,322,300,149,199,249,180,209,220,270,113,182,282,269,148,198,260,312,160,210,230,299,181,144', N'0,1,2,3|3,0,1,2|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|3,0,1,2|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|1,2,3,0|0,1,2,3|1,3,2,0|0,2,1,3|3,1,0,2|3,2,0,1|0,1,2,3|3,0,1,2|3,0,1,2|2,3,0,1|0,1,2,3|1,2,3,0|0,1,2,3|2,3,0,1|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,3,0,1|1,2,3,0|0,1,2,3|2,3,0,1|1,2,3,0|0,1,2,3|2,3,0,1|0,1,2,3|2,3,0,1|0,1,2,3|0,2,3,1|1,2,3,0|3,0,1,2|2,1,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,3,0,1|0,1,2,3|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|0,1,2,3|1,2,3,0|3,0,1,2|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|2,3,1,0|0,1,2,3|3,0,1,2|2,3,0,1|0,1,3,2|1,0,2,3|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|0,1,2,3|1,2,3,0|0,1,2,3|3,0,1,2|1,2,3,0|0,1,2,3|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,0,3,1|0,2,1,3|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|0,1,2,3|3,0,1,2|2,3,0,1|2,3,0,1|0,1,2,3|1,2,3,0|0,1,2,3|3,0,1,2|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|3,0,1,2|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|2,3,0,1|1,2,3,0|2,3,0,1|1,2,3,0|3,0,1,2|2,3,0,1|0,1,2,3|3,0,1,2|1,2,3,0|0,1,2,3|2,3,0,1|0,1,2,3|3,0,1,2|1,2,3,0|3,0,1,2|1,2,3,0|3,0,1,2|1,2,3,0|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|3,1,0,2|0,1,2,3|0,3,1,2|0,1,2,3|3,0,1,2|1,2,3,0|3,0,1,2|2,3,0,1|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3', N'B§C§D§B§§C§A,B§A,B§B§§§§§§C§§§§§§§§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§§', N'0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0', 178, 178, N'332,223,291,296,192,311,326,304,184,143,174,175,201,303,287,256,320,247,109,232,216,257,231,159,110,200,272,264,161,289,233,112,195,255,298,208,278,120,308,145,205,240,158,246,290,122,238,190,241,266,178,228,206,146,279,166,168,218,227,268,217,321,258,169,307,156,239,196,297,207,147,244,188,197,295,177,121,189,167,157,111,179,277,229,280,306,245,267,319,164,185,275,152,194,154,119,142,163,237,225,162,213,235,226,153,331,203,187,165,329,215,315,265,292,117,141,293,186,236,285,273,284,305,286,243,330,294,263,253,316,118,276,116,176,274,252,224,214,242,234,254,191,193,202,204,309,259,310,170,323,221,171,271,219,248,322,300,149,199,249,180,209,220,270,113,182,282,269,148,198,260,312,160,210,230,299,181,144', 0, 0, N'', 0, 0, N'')
INSERT [dbo].[FP_Exam_ExamLogInfo] ([id], [sortid], [uid], [channelid], [answers], [qidlist], [optionlist], [answerlist], [scorelist], [wrongs], [curwrongs], [wronglist], [notes], [curnotes], [notelist], [favs], [curfavs], [favlist]) VALUES (3, 4, 1, 1, 72, N'96,100,26,74,5,88,80,79,81,78,46,335,76,18,19,51,35,67,66,34,2,94,20,68,11,106,6,45,23,63,14,58,31,97,28,72,102,40,53,75,9,39,12,52,61,7,29,105,22,57,93,49,71,43,4,17,64,27,103,41,10,32,54,24,47,69,98,15,36,59,50,99', N'2,1,0|0,1,2|2,3,0,1|3,0,1,2|0,1,2,3|3,2,4,1,0|0,2,1,3,5,4|2,3,0,1|1,2,3,0|0,1,2,3|0,1,2,3|*|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,3,1,2|2,3,0,1|2,0,3,1|1,2,0|1,2,3,0|3,0,1,2|2,3,0,1|3,0,1,2|3,0,1,2|3,0,1,2|2,3,0,1|1,2,0|3,0,1,2|3,0,1,2|2,0,1|0,3,1,2|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|0,1,2,3|2,3,0,1|1,2,3,0|3,0,1,2|1,2,3,0|1,2,0|3,1,0,2|1,2,3,0|3,0,1,2|0,1,2,3|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|2,0,1|1,2,3,0|1,2,3,0|3,0,1,2|1,2,3,0|0,1,2,3|1,0,2,3|2,3,0,1|1,2,0|2,1,3,0|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2', N'A§§§C§B,C§D,E§B,C§B,C§A,B§B,C§§布尔,§§§§B§§§§§§§B§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§B§§§§§§§§§§§§B', N'0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1', 71, 71, N'96,74,5,88,80,79,81,78,335,76,18,19,51,35,67,66,34,2,94,46,20,68,11,106,6,45,23,63,14,58,31,97,28,72,102,40,53,75,9,39,12,52,61,7,29,105,22,57,93,26,49,71,43,4,100,17,64,27,103,41,10,32,54,24,47,69,98,15,36,59,50', 0, 0, N'', 0, 0, N'')
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (1, 1, 1, 4, 1, N'在word的编辑状态，文档中某段内容被选择，执行编辑菜单中的“复制”命令后（）', N'被选择的内容被复制到插入点§被选择的内容被复制到剪贴板§插入点所在的段落内容被复制到剪贴板§光标所在的段落内容被复制到剪贴板', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CE78 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (2, 1, 1, 4, 1, N'可以用”媒体播放器（WINDOS MEDIA PLAYER)"播放的是（）', N'录像带§文本文件§EXCEL文件§视频文件', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (3, 1, 1, 4, 1, N'计算机的启动方式有（）', N'热启动和复位启动§热启动和冷启动§加电启动和冷启动§只能是加电启动', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (4, 1, 1, 4, 1, N'假设机箱内已经正确插入了高质量的声卡，但却始终没有声音，其原因可能是（）', N'没有安装音箱或音响没有打开§音量调节过低§没有安装相应的驱动程序§以上都有可能', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (5, 1, 1, 4, 2, N'在WINDOS的”回收站“中，存放的（）', N'只能是硬盘上被删除的文件或文件夹§只能是软盘上被删除的文件或文件夹§可以是硬盘或软盘上被删除的文件或文件夹§可以是所有外存储器中被删或文件夹', N'A,C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 37, 37, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (6, 1, 1, 4, 1, N'在WINDS中，“任务栏"的作用是()', N'显示系统的所有功能§只能显示当前活动窗口名§只显示正在后台工作的窗口名§实现窗口之间的切换', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (7, 1, 1, 4, 1, N'在WINDOWS中“显示属性”对话框中，用于调整显示器分辨率功能的标签是（）', N'背景§外观§效果§设置', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (8, 1, 1, 4, 1, N'在WINDOWS中，回收站是（）', N'硬盘上的一块区域§主板上的一块区域§内存中的一块区域§存储器的一块区域', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (9, 1, 1, 4, 1, N'若已打开若干个窗口，利用快捷键ALT+（），可在窗口之间切换，并且还将显示该窗口对应的应用程序图标', N'ESC§CTRL§TAB§SHIFT', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (10, 1, 1, 4, 1, N'下面属于操作系统软件的是（）', N'WINDOWS XP§VISUALC§VISUALFOXPRO§EXCEL', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (11, 1, 1, 4, 1, N'键盘上的回车键是（）', N'ALT§SHIFT§INS§ENTER', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (12, 1, 1, 4, 1, N'使用鼠标拖放方法移动窗口，必须将鼠标光标放在使用窗口的（）', N'菜单条上§标题栏上§何一个角上§工作区内', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (13, 1, 1, 4, 1, N'微型计算机的运行速度主要取决于（）', N'微处理器§内存储器§显示适配器§硬磁盘存储器', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (14, 1, 1, 4, 1, N'在媒体播放机中不能播放（）', N'扩展名为AVI的文件§扩展名为MID的文件§扩展名为WAV的文件§扩展名为DOC的文件', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (15, 1, 1, 4, 1, N'办公自动化系统属于（）', N'工具软件§聊天软件§编辑软件§应用软件', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (16, 1, 1, 4, 1, N'下列对“记事本”应用程序的说法，正确的是（）', N'在“记事本”中能完成文档的编排、保存操作、但无打印操作§在“记事本”中能编辑文件信息，也能插入图片、表格等信息§在“记事本”中，只能打开一个文件§与“写字板”完全一样，都是小型的纯文本编辑器', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (17, 1, 1, 4, 1, N'硬盘属于（）', N'输出设备§输出设备§内存储设备§外存储设备', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (18, 1, 1, 4, 1, N'常规键盘具有“Caps Lock"的功能是（）', N'字母大小写锁定§数字小键盘锁定§屏幕滚动锁定§制表锁定', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (19, 1, 1, 4, 1, N'在Window XP资源管理器窗口中，要一次选中多个分散的文件，正确的操作是（）', N'按Ctrl键，同时用鼠标左键逐个选取§按Ctrl键，同时用鼠标右键逐个选取§按Shift键，同时用鼠标右键逐个选取§按Shift键，同时用鼠标左键逐个选取', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (20, 1, 1, 4, 1, N'在WindowsXP中,不能在任务栏中进行的操作是（）', N'切换活动窗口§排列桌面图标§设置系统日期和时间§启动开始菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (21, 1, 1, 4, 1, N'在Windows XP中，需要查找以n开头且扩展名为.com的所有文件，在查找对话框内的名称框中应输入（）', N'n.com§?.com§com.n*§n*.com', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (22, 1, 1, 4, 1, N'下列不属于信息采集的手段的是（）', N'利用传统工具采集§利用专业工具采集§利用数据交易手段采集§利用网络采集', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (23, 1, 1, 4, 1, N'将信息录入到信息系统，就是信息（）的过程', N'共享化§数字化§规范化§标准化', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (24, 1, 1, 4, 1, N'CA指的是（）', N'证书授权§加密认证§虚拟专用网§安全套接字', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (25, 1, 1, 4, 1, N'发生非法外联时会在（）控制台报警', N'公安部控制台§厅控制台§市控制台§部,省，市同时', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (26, 1, 1, 4, 1, N'密码的设置规则不包括（）', N'使用较长密码§逆序设置密码§使用陌生密码§使用难记密码', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (27, 1, 1, 4, 1, N'病毒通过病毒载体进入系统，常驻在（）中，当满足条件就进行传播', N'内存§硬盘§主板§操作系统', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (28, 1, 1, 4, 1, N'出网设备不需要做的操作是（）', N'卸载“一机两用”§卸载网卡§删除涉密数据§修改网络配置', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (29, 1, 1, 4, 1, N'嗅探未加密通信数据不包括', N'本地嗅探§共享介质§服务器嗅探§远程嗅探', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (30, 1, 1, 4, 1, N'最直接最简单的提高系统安全性的措施是（）', N'专业杀毒软件§修补漏洞§安全策略§设置密码', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (31, 1, 1, 4, 1, N'最直接最有效的病毒防范措施是（）', N'专业杀毒软件§手工补救§修补漏洞§安全策略', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (32, 1, 1, 4, 1, N'数字签名是使用（）', N'自己的私钥签名§自己的公钥签名§对方的私钥签名§对方的公钥签名', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (33, 1, 1, 4, 1, N'若想每天自动进行磁盘的病毒扫描工作，可以通过本地扫描器菜单的（）实现。', N'实现扫描选项§本地扫描选项§安排扫描工作§服务器管理', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (34, 1, 1, 4, 1, N'当前病毒的主流类型是（）', N'木马蠕虫§引导区病毒§宏病毒§恶作剧程序', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (35, 1, 1, 4, 1, N'关于计算机病毒的传播渠道，错误的是（）', N'U盘§光盘§网络§空气', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 6, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (36, 1, 1, 4, 1, N'以下属于威胁计算机网络安全的行为是（）', N'操作员安全配置不当而造成的安全漏洞§在不影响网络正常工作的情况下，进行截获，窃取，破译以获得重要机密信息§安装非正版软件§以上均是', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (37, 1, 1, 4, 1, N'下列选项中不属于因特网浏览器的是（）', N'微软IE§火狐firefox§腾讯QQ§腾讯TT', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (38, 1, 1, 4, 1, N'hao0913@hao0913.com表示', N'ip地址§邮箱地址§网络协议§域名', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (39, 1, 1, 4, 1, N'使用FTP服务下载文件时，不需要知道的是（）', N'文件存放的服务器名称§文件名称§文件所在的服务器的距离§文件存放的目录路径', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (40, 1, 1, 4, 1, N'下列软件中，（）不是计算机的操作系统软件。', N'Windows2003§office2003§AIX§DOS', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (41, 1, 1, 4, 1, N'多媒体技术是（）。', N'一种图像和图形处理技术§文本和图形处理技术§超文本处理技术§计算机技术，电视技术和通信技术相结合的综合技术', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (42, 1, 1, 4, 1, N'在计算机系统，CPU可以直接读、写（）中的内容', N'光盘§ROM§硬盘§RAM', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (43, 1, 1, 4, 1, N'严禁在计算机硬盘内存储（）信息。', N'秘密§机密§绝密§秘密，机密，绝密', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (44, 1, 1, 4, 1, N'关于双击鼠标，下列描述中正确的是（）', N'光标到目标位置后，快速按二下鼠标器右边的键§光标到目标位置后，快速按二下鼠标器左边的键§光标到目标位置后，快速按二下鼠标器中间的键§光标到目标位置后，同时快速按下鼠标器两个键', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (45, 1, 1, 4, 1, N'DNS是用来', N'邮件传输§超文本传输§文本解析§域名解析', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (46, 1, 1, 4, 2, N'公安计算机网络采用三层网络结构，从公安部到各省，直辖市公安厅局为（）。', N'一级网§二级网§三级网§四级网', N'A,B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 37, 36, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (47, 1, 1, 4, 1, N'下列不属于公安信息资源分类的是（）。', N'人员§物品§机构§照片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (48, 1, 1, 4, 1, N'计算机数据的表示形式是（）。', N'八进制§十进制§二进制§十六进制', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (49, 1, 1, 4, 1, N'计算机软件系统最基础的部分是（）。', N'数据库管理系统§操作系统§语言处理系统§应用软件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (50, 1, 1, 4, 1, N'电子邮件又称为（），是目前因特网上使用最广泛的应用服务之一。', N'ASCII§TCP/IP§电报§E-mail', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (51, 1, 1, 4, 1, N'下列属于全国公安信息资源库的是（）。', N'全国被盗抢汽车信息资源库§全国重大刑事案件信息库§全国公安综合信息查询系统§高危人群管理信息库', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (52, 1, 1, 4, 1, N'以下不属于移动终端的是（）。', N'手持设备§笔记本§服务器§车载专用终端', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (53, 1, 1, 4, 1, N'将回收站中的文件还原时，被还原的文件将回到（）。', N'桌面上§我的文档中§内存中§原来被删除时的位置', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (54, 1, 1, 4, 1, N'在计算机系统中（）存储量最大', N'硬盘§主存储器§CACHE§ROM', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (55, 1, 1, 4, 1, N'计算机操作系统是（）', N'计算机中最重要的应用软件§最核心的计算机系统软件§微机专用软件§微机的通用软件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 7, 7, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (56, 1, 1, 4, 1, N'关于计算机病毒的传播渠道，错误的是', N'U盘§光盘§网络§空气', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (57, 1, 1, 4, 1, N'下列不属于公安信息资源的分类的是', N'人员§物品§机构§照片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (58, 1, 1, 4, 1, N'哪项信息属于实时动态接入信息', N'人口信息§GPS定位信息§地址信息§案事件信息', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (59, 1, 1, 4, 1, N'下面哪项是数据库服务器用途', N'用于存储和管理海量空间数据§用于安装SOA架构基础GIS软件§用于安装PGIS平台软件服务§用于安装WEB应用服务', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (60, 1, 1, 4, 1, N'PGIS平台在现有PKI/PMI基础上，针对各个模块建立了（），实现了不同业务对象的权限控制', N'服务代理§二次授权体系§用户身份认证§功能权限控制', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (61, 1, 1, 4, 1, N'GIS通常的中文意思是指', N'卫星定位系统§地理信息系统§遥感§地理信息服务', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (62, 1, 1, 4, 1, N'警情分析模版中的四色警情提到的四色不包括以下哪种颜色的警情', N'紫§黄§橙§红', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (63, 1, 1, 4, 1, N'微型计算机键盘上的TAB键是（）。', N'退格键§控制键§交替换挡键§制表定位键', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (64, 1, 1, 4, 1, N'窗口排列有层叠、横向和纵向平铺三种方式，用鼠标右键单击（）可以进行窗口排列。', N'任务栏的空白处§桌面的空白处§窗口的标题栏§“开始”按钮', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (65, 1, 1, 4, 1, N'内存和外存相比，其主要特点是（）。', N'能储存大量信息§能长期保存信息§存取速度快§能同时存储程序和数据', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (66, 1, 1, 4, 1, N'打印机是一种（）。', N'输出设备§输入设备§存储器§运算器', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (67, 1, 1, 4, 1, N'计算机系统中CPU的重要组成部分是指（）。', N'运算器和存储器§控制器和运算器§输入设备和输出设备§内存储器和控制器', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (68, 1, 1, 4, 1, N'一个完整的系统包括（）。', N'硬件系统和软件系统§主机和外部设备§CPU和储存器§主机和实用程序', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (69, 1, 1, 4, 1, N'在WINDOWS操作系统中，进行窗口切换使用（）组合键。', N'Shitf+Tab§Alt+Tab§Ctrl+Tab§空格+Tab', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (70, 1, 1, 4, 1, N'在WINDOWS中可按（）键得到帮助信息。', N'F1§F5§F8§F10', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (71, 1, 1, 4, 1, N'选定某个图标后，按（）键可以将其删除。', N'Ctrl§Delete§Shift§Tab', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 6, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (72, 1, 1, 4, 1, N'发送电子邮件时，在发邮件界面中，“收件人”一栏中，应该填写“”。', N'接收者名字§接收者的信箱地址§接收者的IP地址§接收者的主页地址', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (73, 1, 1, 4, 1, N'下面是WEB网页的保存格式类型，可以以纯文本格式保存网页信息的是（）。', N'WEB页，全部（*.htm;*.html）§WEB电子邮件档案（.mht）§文本文件（*.txt）§Web页，仅HTML(*.htm;*.html)', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (74, 1, 1, 4, 1, N'在查找文件时，通配符*与？的含义是（）。', N'*表示任意多个字符，？表示任意一个字符§？表示任意多个字符，*表示任意一个字符§*和？表示乘号和问好§查找*。？与？。*的文件是一致的', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (75, 1, 1, 4, 1, N'Windows的（）也可以被看作一个文件夹并且它处于文件夹树最上层。', N'“状态栏”§“桌面”§“菜单栏”§“标题栏”', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (76, 1, 1, 4, 1, N'与显示器一样能决定系统可以使用的最高屏幕分辨率的是（）。', N'U盘§键盘§显示卡§硬盘', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (77, 1, 1, 4, 1, N'通过控制面板可以灵活地配置计算机，但不能（）。', N'使计算机工作起来更加有效率§更符合用户的工作习惯§使计算机工作的更快§使计算机磁盘总空间变大', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (78, 1, 1, 4, 2, N'下列号码中那些是组号（）', N'30390§30930§30309§30903', N'B,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 40, 40, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (79, 1, 1, 4, 2, N'集群系统主要功能()', N'个呼、组呼、全呼§调度通播、跨系统个呼和组呼§用户优先级别设定§移动台自动漫游登记入网', N'A,B,C,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 37, 37, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (80, 1, 1, 4, 2, N'集群通信的特点是（）', N'具有灵活的多级别分组调度指挥功能§高级别用户优先分配信道§通话具有私密性§系统具有故障弱化的功能§可生成详细的管理报告§可进行话音加密', N'A,B,C,D,E,F', 0, 0, N'', 6, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 36, 36, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (81, 1, 1, 4, 2, N'使用MOTOROLAPTX760通话结束，可按什么按键挂机。', N'“√” 键§“╳”键§Ptt键§清除、挂机键', N'B,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 35, 35, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (82, 1, 1, 4, 5, N'两台对讲机要进行一对一通话，可以通过（）方式来实现？', N'', N'拨打对方单机号', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (83, 1, 1, 4, 5, N'使用HYT890GM时，在开机状态下，能听见所有已写入的群呼的呼叫，这是因为（）', N'', N'将频道放在自身的单机号码上', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (84, 1, 1, 4, 3, N'打开对讲机时不必检查对讲机是处于常规还是集群状态下。', N'', N'N', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (85, 1, 1, 4, 3, N'在进行组呼时，只有发起组呼的一方可以结束通话，被叫方不能结束通话。单呼状态下，发起方和被叫方都可结束通话。以上说法是否正确？', N'', N'Y', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (86, 1, 1, 4, 5, N'使用HYT890GM时，如果想手动搜索基站，可以按下（）', N'', N'按侧面“搜索”键', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (87, 1, 1, 4, 5, N'对讲机上的PPT键的作用是（）', N'', N'发起呼叫并发送通话信息', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (88, 1, 1, 4, 2, N'以下关于使用对讲机电池正确的做法是？', N'电池不能放置于高温、潮湿的环境下；不能接触腐蚀性物体。§应在5℃ ~ 40℃的温度环境下进行充电，否则可能充不满额定容量§已充满电的电池，应从充电器上取下，以免过充缩短电池寿命，降低性能§较长时间不使用对讲机时，应把电池卸下§避免电池短路', N'ABCDE', 0, 0, N'', 5, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 39, 39, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (90, 1, 1, 4, 5, N'使用MOTOROLAPTX760时集群与常规状态转换步骤：按机身侧面的状态按键，（）显示屏上出现CONV（常规）字样后再次按下状态键。', N'', N'旋转频道选择键', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (91, 1, 1, 4, 5, N'在使用HYT890GM时，如何实现集群、常规状态转换？', N'', N'按键盘上的“OK”键再按“数字1”键', 0, 0, N'', 1, N'', 4, CAST(0x0000A3ED0130CFA4 AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (93, 1, 1, 4, 1, N'计算机被病毒感染的可能途径是', N'运行错误的操作命令§磁盘表面不清洁§运行来历不明的外来文件§电源不稳定', N'C', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (94, 1, 1, 4, 2, N'下列关于计算机病毒的叙述中正确的是', N'计算机病毒通常不会自己死亡§使用防病毒卡后，计算机就不会感染病毒§预种抗病毒疫苗后，计算机就不会感染病毒了§使用防病毒软件后，计算机就不会再感染病毒了', N'A,D', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 37, 37, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (95, 1, 1, 4, 1, N'在光线明暗差别很大的监控场所宜选用', N'红外摄像机§宽动态摄像机低照度摄像机', N'B', 0, 0, N'', 2, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (96, 1, 1, 4, 1, N'视角要求大的场景应选用', N' 广角镜头§定焦镜头§变焦镜头', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 20, 16, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (97, 1, 1, 4, 1, N'为看清楚远处的景观，应该选用', N'长焦镜头§鱼眼镜头§ 广角镜头', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (98, 1, 1, 4, 1, N'摄像机云台的作用是', N' 承载摄像机转动§遮阳挡雨§天文观测', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (99, 1, 1, 4, 1, N'要把当前球机监控的画面拉近放大，可以（ ）', N'点击PTZ控制区的→§点击PTZ控制区的缩放§点击PTZ控制区的↓', N'B', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (100, 1, 1, 4, 1, N'CU客户端中，（ ）是指保存在本地电脑上的录像', N'本地录像§平台录像§前段录像', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 5, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (101, 1, 1, 4, 1, N'“高清”指的是分辨率在（ ）以上', N'1280*720§480*320§320*240', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (102, 1, 1, 4, 1, N'下列关于监控图像优化的说法，错误的是', N'摄像头的自动增益越高效果越好§ 要避免强光源直射镜头§球机可以通过PTZ调节选择的最佳视角', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
GO
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (103, 1, 1, 4, 1, N'在CU监控客户端中，看到某路监控点图标显示为灰色，表示', N'该监控点离线§该监控点的图像是黑白的§该监控点', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (104, 1, 1, 4, 1, N'数字摄像机的核心部件为', N' CCD或CMOS§电源线§三脚架', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (105, 1, 1, 4, 1, N'1080P分辨率指的是', N'1920*1080§720*576§1440*900', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (106, 1, 1, 4, 1, N'下列接口属于数字接口的是', N'HDMI§C端子§S端子', N'A', 0, 0, N'', 3, N'', 0, CAST(0x0000A3ED0130CFA4 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (109, 1, 1, 5, 1, N'为了方便用户登录网页，因此经常访问的网页可以把它保存在（）中', N'文档§地址栏§收藏夹§状态栏', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (110, 1, 1, 5, 1, N'如何最快地获知自已在Word里打了多少字（）', N'一个一个数§数一数每行有多少字，然后数有多少行§选定自已打的字，点“工具”菜单里的“字数统计”§选定自已打的字，右键弹出菜单，点“字体”', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (111, 1, 1, 5, 1, N'下面哪一个做法并没有从FTP中下载一个文件回本地（）', N'选中该文件，点右键，“复制”，然后点击本地桌面，右键“粘贴”§选中该文件，点右键，“复制到文件夹”§双击该文件§将该文件从FTP中拖动到本地桌面上', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (112, 1, 1, 5, 1, N'如何获知计算机的IP设置（）', N'右键点桌面上的“网上邻居”，点“属性”，右键点“本地连接”，点“属性”，双击属性窗口中部的“Internet协议”§双击桌面上的“网上邻居”，点“工具”菜单里的“文件夹选项”§右键点桌面上的“我的电脑”，点“属性”，点上部的“计算机名”，再点中部的“更改”按钮§右键点桌面上的“InternetExplorer”浏览器，点“属性”，点上部的“连接”，再点下部的“局域网设置”按钮', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (113, 1, 1, 5, 1, N'选定工作表全部单元格的方法是：单击工作表的什么位置（）', N'列标§编辑栏中的名称§行号§左上角行号和列号交叉处的空白方块', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (114, 1, 1, 5, 1, N'键盘上的enter是（）', N'热键§字符键§确定键§数字键', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (115, 1, 1, 5, 1, N'下面关于公安网和互联网，说法正确的一项是（）', N'公安网和互联网使用的网络传输协议是不同的§公安网和互联网都使用自动获取IP的方法§公安网电脑首次上网要注册，互联网则不需要§同一台电脑可以上公安网，也可以用来上互联网', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (116, 1, 1, 5, 1, N'在Word中，选定全文字段的最快方法是（）', N'鼠标指针移到段首左侧，按住鼠标左键，从段首拉动到段尾§按Ctrl+A§鼠标指针移到段首左侧，双击左键§以上都不对', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (117, 1, 1, 5, 1, N'在系统中，哪种文书打印后不会生成相应的执行情况（）', N'传唤通知书§拘留证、拘留通知书§拘传证§破案告知书', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (118, 1, 1, 5, 1, N'在“案件管理”中，需要查询出单位代码为“450102330000”的派出所所有案件的诉讼文书记录，下面最佳选项是：（ ）', N'A. 在诉讼文书查询页面中的“案件/警情编号”输入“450102330000”，并选择精确查询§?B. 在诉讼文书查询页面中的“案件/警情编号”输入“A450102330000”，并选择左匹配查询§C. 在诉讼文书查询页面中的“案件/警情编号”输入“A450102330000”，并选择右匹配查询§D. 在诉讼文书查询页面中的“案件/警情编号”输入“A450102330000”，并选择模糊查询', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (119, 1, 1, 5, 1, N'在系统中，所有呈请的文书都会有记录，如果忘记呈请给哪位领导，查看路径是', N'进入案件管理-审批监督-文书反馈历史，通过审批历史查看接收人是哪位领导§进入案件管理-诉讼文书，通过审批历史查看接收人是哪位领导§进入文书汇总-报告书，通过审批历史查看接收人是哪位领导§进入文书汇总-诉讼文书，通过审批历史查看接收人是哪位领导', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (120, 1, 1, 5, 1, N'在“案件管理”中，关于行政案件的调解处理，描述正确的是：', N'只有案件状态为“已处警”，才能进行调解 §只有案件状态为“已受理”，才能进行调解 §案件状态为“已处罚”，也可以进行调解 §以上都不正确', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (121, 1, 1, 5, 1, N'在系统中，通过那种路径取回已经呈请上去的文书()', N'进入“案件管理－审批/监督－执法审批”查询，选择类型是“未办理”文书 §进入“案件管理－审批/监督－文书反馈信息”查询，选择类型是“未办理”文书 §进入“案件管理－审批/监督－执法审批”查询，选择类型是“已办理”文书 §进入“案件管理－审批/监督－诉讼文书”查询，选择类型是“已办理”文书', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (122, 1, 1, 5, 1, N'常规管控预警情报信息根据危害程度和紧急程度，分为：', N'红、黄、绿三色§红、橙、紫三色§红、橙、蓝三色 §红、绿、蓝三色', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (123, 1, 1, 5, 2, N'需联接公安信息通信网的计算机必须进行（      ）。', N'“一机两用”注册 §网络版防病毒软件安装 § office软件安装§网络电报传输系统软件安装', N'A,B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (124, 1, 1, 5, 2, N'使用数字证书前计算机必须安装的程序是：（      ）。', N'公安数字证书驱动 § 广西公安数字证书在线管理系统 §防病毒软件 §警示桌面程序', N'A,B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (125, 1, 1, 5, 2, N'安装了防病毒软件后需要定期进行哪些操作：（      ）。', N'升级病毒库 §重装计算机系统 § 扫描病毒 §重启计算机 ', N'A,C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (126, 1, 1, 5, 2, N'如果计算机发现下列哪些症状，则可能感染了计算机病毒：（      ）。', N'计算机系统运行速度减慢§计算机系统经常无故发生死机 § 计算机系统中文件长度发生变化 §计算机存储的容量异常减少', N'A,B,C,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (127, 1, 1, 5, 2, N'防范计算机病毒（      ）。', N'使用复杂的密码 §安装防病毒软件§ 定期升级防病毒软件§ 经常重启计算机', N'A,B,C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (128, 1, 1, 5, 2, N'计算机病毒传播的渠道有（      ）。', N'通过移动存储设备 §通过硬盘§通过光盘 §通过网络', N'A,B,C,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (129, 1, 1, 5, 1, N'对于非windows操作系统的设备需要接入公安信息网的，均需向本级科信部门提交（      ）。', N'公安信息通信网设备入网注册申请表§公安信息通信网设备变更出网注销申请表§公安信息通信网设备保护申请表 §公安信息系统数字身份证书申请表', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (130, 1, 1, 5, 1, N'公安信息通信网中的设备因报废、停用、更换等原因需退出公安信息通信网的，均需向本级科信部门提交（      ）。', N'公安信息通信网设备入网注册申请表 §公安信息通信网设备变更出网注销申请表 §公安信息通信网设备保护申请表§公安信息系统数字身份证书申请表', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (131, 1, 1, 5, 1, N'需联接公安信息通信网的设备，由设备使用单位负责对入网设备进行安全检查，并向本级科信部门提交（      ）。', N'公安信息通信网设备入网注册申请表§公安信息通信网设备变更出网注销申请表 §公安信息通信网设备保护申请表 §公安信息系统数字身份证书申请表', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (132, 1, 1, 5, 1, N'以下哪个程序可以修改数字证书密码（      ）。', N'一机两用程序 §eSafe管理工具 §防病毒软件 § 警示桌面程序', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (133, 1, 1, 5, 1, N'公安数字证书必须在什么网络使用（      ）。', N'互联网 §公安信息通信网 § 保密网 §局域网 ', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (134, 1, 1, 5, 1, N'申请数字证书需要填写的表格是：（      ）。', N'公安信息通信网设备保护申请表 §公安信息系统数字身份证书撤销停用、恢复、更新申请表 § 公安信息通信网电子印章采集申请表 § 公安信息系统数字身份证书申请表 ', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (135, 1, 1, 5, 1, N'下列哪项不属于网络病毒的特点和危害性（      ）。', N'感染速度快 §扩散面广 § 破坏性小 §破坏性大', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (136, 1, 1, 5, 1, N'计算机在工作中突然断电，什么地方的数据会丢失（      ）。', N'硬盘 §光盘 §内存 §插在机器上的U盘', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (137, 1, 1, 5, 1, N'执行了删除操作后，文件将会被移动到“回收站”，我们可以用（      ）命令取回被误删除的文件。', N'复制 § 恢复 §还原 § 返回', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (138, 1, 1, 5, 1, N'计算机病毒是指（      ）。', N'编制有错误的计算机程序 §设计不完善的计算机程序§己被破坏的计算机程序 §以危害系统为目的的特殊的计算机程序', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (139, 1, 1, 5, 1, N'下列的（      ）可临时存放删除的文件。', N'我的电脑 §网上邻居 §回收站 §我的文档', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (140, 1, 1, 5, 1, N'办公自动化简称（      ）。', N'OA § OC §OIS §Word ', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 0, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (141, 1, 1, 5, 1, N'在Word中，Ctrl+C的功能是（）。', N'剪切§复制§全选§粘贴', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (142, 1, 1, 5, 1, N'Excel2003中，若在工作表中插入一列，则一般插在当前列的（）。', N'左侧§上方§右侧§下方', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (143, 1, 1, 5, 1, N'Excel2003中，若选定多个不连续的行所用的键是（）。', N'Shift+所选行§Ctrl+所选行§Alt+所选行§Shift+Ctrl+所选行', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (144, 1, 1, 5, 1, N'在Excel中，没有进行“边框”设置的表格，打印出来后，看到的效果是（）。', N'有网格线§无网格线§时而有网格线，时而无网格线§表格的一部分有网格线，一部分无网格线', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (145, 1, 1, 5, 1, N'在PowerPoint2003中，若一个演示文稿中有三张幻灯片，播放时要跳过第二张放映，可（）。', N'隐藏第二张幻灯片§取消第二张幻灯片的动画效果§取消第一张幻灯片的动画效果§只能删除第二张幻灯片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (146, 1, 1, 5, 1, N'在使用Word编辑文档时，插入点的形状是（）。', N'手型§箭头型§闪烁的竖条型§沙漏型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (147, 1, 1, 5, 1, N'在Word制表时，选择“表格”菜单中的（）命令可以调整行高和列宽。', N'表格属性§单元格§自动套用格式§插入表格', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (148, 1, 1, 5, 1, N'在Word中，要想使所编辑的文件保存后不被他人查看，可在安全性的“选项”中设置（）。', N'修改权限口令§建议只读方式打开§打开权限口令§快速保存', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (149, 1, 1, 5, 1, N'在Word环境下，如果你在编辑文本是执行了错误操作，（）功能可以帮助你回复换来的状态。', N'复制§粘贴§撤销§清除', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (150, 1, 1, 5, 1, N'Excel不能用于（）。', N'处理表格§创建图表§统计分析§制作演示文稿', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (151, 1, 1, 5, 1, N'Excel中，在当前工作表的前面插入一新工作表，可以使用菜单中的（）命令。', N'编辑§插入§工具§文件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (152, 1, 1, 5, 1, N'Worde2003中的（）视图方式使得显示效果与打印预览基本相同。', N'普通§阅读§大纲§页面', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (153, 1, 1, 5, 1, N'在幻灯片“动作设置”对话框中设置的超级链接，起链接对象不可以是（）。', N'下一站幻灯片§上一张幻灯片§其他演示文稿§幻灯片中的某一对象', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (154, 1, 1, 5, 1, N'在Worde的编辑状态，执行编辑菜单中的“全选”命令后（）。', N'整个文档被选择§插入点所在的段落被选择§插入点所在的行被选择§插入点至文档的首部被选择', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (155, 1, 1, 5, 1, N'中文Windows中，按键（），可在个中汉字输入方式之间切换。', N'Ctrl+Space§Shift+Space§Alt+Space§Ctrl+Shinft', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (156, 1, 1, 5, 1, N'在Word中，段落“缩进”后打印出来的文本，起文本相对于打印纸边界的距离为（）。', N'页边距§缩进距离§悬挂缩进距离§页边距+缩进距离', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (157, 1, 1, 5, 1, N'在Word文档窗口中，若选定的文字包含有几种字体的汉字，则格式工具栏的字体框中显示（）。', N'空白§第一个案子的字体§宋体§选定的文字中使用最多的文字字体', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (158, 1, 1, 5, 1, N'在“幻灯片浏览视图”模式下，不允许进行的操作是（）。', N'幻灯片移动和复制§幻灯片切换§幻灯片删除§设置动画效果', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (159, 1, 1, 5, 1, N'Powerpoint2000运行的操作系统环境是（）。', N'UNIX§DOS§Macintosh§Windows', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (160, 1, 1, 5, 1, N'在Excel中，选取单元格时，鼠标指针为（）。', N'竖条光标§空心十字光标§箭头光标§不确定', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (161, 1, 1, 5, 1, N'在PowerPoint文本框中可以插入（）。', N'只有文字§只有图片§只有声音§文字和图片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (162, 1, 1, 5, 1, N'在Excel中，不连续单元格的选取，可借助于（）键完成。', N'Ctrl键§Shift键§Alt键§Tab键', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 24, 23, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (163, 1, 1, 5, 1, N'在Word中，单击“常用”工具栏上的“打印”按钮，则会（）。', N'打印选定内容§打印当前页§打印全部文档§出现“打印”对话框', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 7, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (164, 1, 1, 5, 1, N'在Word中，用拼音输入法输入单个汉字时，字母键（）。', N'必须是大写§必须是小写§可以大写与小写§可以大写与小写混合使用', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (165, 1, 1, 5, 1, N'在Word中，文档编辑窗口中，将选定的一段文字拖动到另一位置，则完成对该段文字的（）。', N'移动操作§复制操作§删除操作§非法操作', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (166, 1, 1, 5, 1, N'下列哪种视图不是Word中的视图模式（）。', N'页面视图§大纲视图§特殊视图§普通视图', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (167, 1, 1, 5, 1, N'在Word中，若要将某个段落的格式复制到另一段，可采用（）。', N'字符样式§拖动§格式刷§剪切', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (168, 1, 1, 5, 1, N'在Word2003中，编辑修改以前有用文本时，不覆盖原文件并且保留这一次的修改，可以采用（）。', N'用“文件”菜单中的“保存”命令§用“文件”菜单中的“另存为”命令§用“文件”菜单中的“关闭”命令§用“文件”菜单中的“退出”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (169, 1, 1, 5, 1, N'在Word2003中，可以同时打开多个窗口，但是（）。', N'只能打开一个文档窗口才可以编辑§多个文档之间不可以切换编辑§可同时编辑多个§不是活动的窗口也可以编辑', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (170, 1, 1, 5, 1, N'下列关于Word文档窗口的说法中，正确的是（）。', N'只能打开一个文档窗口§可以同时打开多个文档窗口，被打开的窗口都是活动窗口§可以同时打开多个文档窗口，但其中只有一个是活动窗口§可以同时打开多个文档窗口，但在屏幕上只能见到一个文档窗口', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (171, 1, 1, 5, 1, N'在Word中，要使文档的标题位于页面居中位置，应使标题（）。', N'两端对齐§居中对齐§分散对其§右对齐', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (172, 1, 1, 5, 1, N'在Word中，若要将选中的文本内容加粗，可以单击（）。', N'B§U§I§A', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (173, 1, 1, 5, 1, N'在幻灯片视图中，不能执行的操作有（）。', N'删除当前幻灯片上的文字§删除当前幻灯片上的图形§改变幻灯片上文字的大小§删除该幻灯片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (174, 1, 1, 5, 1, N'关于Excel中排序，说法正确的是（）。', N'只能按行排序§只能按列排序§既能按行排序，也能按列排序§以上说法都不正确', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (175, 1, 1, 5, 1, N'下面 有关Word的描述中，错误的是（）。', N'Word的默认文档类型为DOC§可以将Word文档保存为TXT类型§可以将Word文档保存为JPG类型§可以将Word文档保存为HTML类型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (176, 1, 1, 5, 1, N'文图混排是Word的主要特色之一，以下属于文图混排的是（）。', N'水印型方式§嵌入型方式§图形与文字并排方式§指纹型方式', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (177, 1, 1, 5, 1, N'下面是正确的ip地址的是（）。', N'10.118.128.28§10，118，128，28§10 118 128 28§10.118.128.', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (178, 1, 1, 5, 1, N'在Word2003中，设定纸张大小应选择（）。', N'自测+考试§“打印预览”命令§文件菜单中的“页面设置”命令§“页面”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (179, 1, 1, 5, 1, N'PowerPoint演示文档的扩展名是（）。', N'.ppt§.pwt§.xsl§.doc', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (180, 1, 1, 5, 1, N'Word的段落对齐方式中，能使段落中每一行（包括未输满的行）都能保持首尾对齐的是（）。', N'左对齐§两端对齐§居中对齐§分散对齐', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (181, 1, 1, 5, 1, N'Excel中，单元格地址是由（）来表示的。', N'行标和行号§行号§列标§任意确定', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (182, 1, 1, 5, 1, N'在Excel的单元格中，如果要将一个数字38485以字符方式输入，其输入方式为（）。', N'’38485§’38485‘§38485’§38485', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (183, 1, 1, 5, 1, N'在PowerPoint中放映幻灯片时，默认的方式是按照（）来放映的。', N'自己定义§页面链接§编号顺序§动作按钮', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (184, 1, 1, 5, 1, N'Excel中，行号是以（）排列的。', N'英文字母序列§阿拉伯数字§汉语拼音§任意字符', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (185, 1, 1, 5, 1, N'PowerPoint中如果想在同一个窗口中看到所有的幻灯片，可以利用（）方式。', N'大纲视图§普通视图§幻灯片视图§幻灯片浏览视图', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (186, 1, 1, 5, 1, N'在PowerPoint中保存演示文稿的快捷键是（）。', N'Ctrl+O§Ctrl+S§Ctrl+N§Ctrl+P', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (187, 1, 1, 5, 1, N'Excel中当单元格中出现多个字符‘#’时，说明该单元格（）。', N'数据输出错误§数值格式设置错误§文字数据长度超过单元格宽度§数值数据长度超过单元格宽度', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (188, 1, 1, 5, 1, N'在Excel中，如果设置单元格中的数据格式，则应使用（）。', N'“编辑”菜单§“格式”菜单中的“单元格”命令§“数据”菜单§“插入”菜单中的“单元格”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (189, 1, 1, 5, 1, N'在Excel中，选取一行单元格的方法是（）。', N'单击该行行号§单击该行的任一单元格§在名称框输入该行行号§单击该行的任一单元格，并选“编辑”菜单的“行”命令', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (190, 1, 1, 5, 1, N'如果想在Word2003主窗口中显示常用工具按钮，应当使用的菜单是（）。', N'“工具”菜单§“视图”菜单§“格式”菜单§“窗口”菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (191, 1, 1, 5, 1, N'在Excel中活动单元格是指（）的单元格。', N'正在处理§每一个都是活动§能被移动§能进行公式计算', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (192, 1, 1, 5, 1, N'在工作表中插入图表最主要的作用是（）。', N'更精确地表示数据§使工作表显得更美观§更直观地表示数据§减少文件占用的磁盘空间', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (193, 1, 1, 5, 1, N'在Word中，如果要求打印文档的每一页上都有页码，应当（）。', N'由用户执行“插入”菜单中的页码命令§由用户执行“文件”菜单中的“页码”命令§由用户在每一页的文字中自行插入§已经由Word根据纸张大小进行分页时自动加上', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (194, 1, 1, 5, 1, N'在Word中，使用（）菜单中的“插入表格”命令可以在文档中建立一张空表。', N'编辑§插入§表格§格式', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (195, 1, 1, 5, 1, N'在幻灯片播放时，如果要结束放映，可以按下键盘上的（）键。', N'ESC§Enter§Space§Ctrl', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (196, 1, 1, 5, 1, N'在一个演示文稿中选择了一张幻灯片，按下“DEL”键，则（）。', N'这张幻灯片被删除，且不能恢复§这张幻灯片被删除，但能恢复§这张幻灯片被删除，但可以利用“回收站”恢复§这张幻灯片被移到回收站内', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (197, 1, 1, 5, 1, N'在WORD中，快速启动查找窗口可用快捷键（）', N'ctrl+F1§ctrl+Alt§Alt+F§ctrl+F', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (198, 1, 1, 5, 1, N'下列ip地址中书写正确的是（)', N'168.192.0.1§325.255.231.0§192.168.1§255.255.255.0', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (199, 1, 1, 5, 1, N'无论目前浏览的网页在何处，只要按住（）按钮就可以回到打开ie是显示的第一个网页是。', N'后退§前进§停止§主页', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (200, 1, 1, 5, 1, N'在电子邮件中用户（）。', N'可以同时传送声音文本和其它多媒体信息§只可以传送文本信息§在邮件上不能附加任何文件§不可以传送声音文件夹', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (201, 1, 1, 5, 1, N'打开网页时，页面总是弹出窗口，如果想阻止该窗口弹出，应（）。', N'无法阻止§将该站点从受信任站点删除§启用ie中的“弹出窗口阻止程序”§安装第三方软件阻止', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (202, 1, 1, 5, 1, N'网络中的tcp/ip属性中的dns配置的作用是（）。', N'让使用者能用ip地址访问internet§让使用者能用域名访问internet§让使用者能用modem访问internet§让使用者能用网卡访问internet', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (203, 1, 1, 5, 1, N'以下属于非即时的网上通信方式的是（）。', N'电子邮件§移动飞信§淘宝旺旺§腾讯qq', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (204, 1, 1, 5, 1, N'地址栏中输入的http：//www.sohu。Com中，www。Sohu。Com是一个（ ）。', N'文件§域名§邮箱§国家', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
GO
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (205, 1, 1, 5, 1, N'用（）可以将摄影作品。绘画作品输入到计算机中，进而对这些图片进行加工处理。', N'扫描仪§投影仪§彩色喷墨打印机§绘图仪', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (206, 1, 1, 5, 1, N'下列操作，（ ）是正确的断开计算机与网络连接的方法', N'拔掉显示器与主机电源§拔掉拨号网络适配器上的电话线§重新启动机计算机§双击桌面右下角任务栏中表示网络连接状态的图标，单击断开连接', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (207, 1, 1, 5, 1, N'要想查看近期访问的站点，可以点击（ ）按钮', N'主页§搜索§收藏§历史', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (208, 1, 1, 5, 1, N'如果无法显示当前网页，可以尝试（ ）操作。', N'点击后退按钮§点击停止按钮§点击刷新按钮§点击搜索按钮', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (209, 1, 1, 5, 1, N'配置tcp/ip参数的操作主要包括三个方面：（ ）、指定网关和域名服务器地址。', N'指定本地主机的ip地址及子网掩码§指定本地机的主机名§指定代理服务器§指定服务器的ip地址', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (210, 1, 1, 5, 1, N'计算机网络最突出的优点是（ ）。', N'运算速度快§联网的计算机能够相互贡献资源§计算精度高§内存容量大', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (211, 1, 1, 5, 1, N'当出现网络故障时，一般首先应检查（ ）。', N'系统病毒§路由配置§物理连通性§主机故障', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (212, 1, 1, 5, 1, N'microsoft的ie是一种（ ）。', N'网上的搜索软件§电子邮件发送程序§网上传播协议§浏览器', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (213, 1, 1, 5, 1, N'互联网络上的每一台主机都有自己的ip地址，ip地址是一个（ ）的二进制地址。', N'8位§16位§32位§128位', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (214, 1, 1, 5, 1, N'设置浏览器主页时，首先要左键单击菜单栏上的工具按钮，然后左键单击（ )', N'邮件和新闻§管理加载项§internet选项§同步', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (215, 1, 1, 5, 1, N'下载是指通过网络进行复制并最终将其保存到（ )的网络活动。', N'服务器§其它计算机§本地计算机§网络', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (216, 1, 1, 5, 1, N'用命令方式查看主机ip地址时，在DOS窗口下敲入（ ）命令即可调看ip地址。', N'cmd§dir§ipconfig§cd', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (217, 1, 1, 5, 1, N'以下属于系统软件的是（）', N'WORD§EXCEL§WINDOS§POWERPOINT', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (218, 1, 1, 5, 1, N'计算机中用来表示内存储器容量大小的基本单位是（）', N'位（BIT) §字节（BYTE)§字（WORD)§双字（DOUBLE WORD)', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (219, 1, 1, 5, 1, N'在WINDOS操作系统中，当系统提示硬磁盘空间不足时，一般情况下可最先考虑删除（）目录下的文件来释放空间', N'MY DOCUMENTS§TEMP§PROGRAM FILES§FONTS', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 24, 21, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (220, 1, 1, 5, 1, N'在WINDOS中，设置屏幕特征可通过（）', N'控制面板§附件§任务栏§DOS命令', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (221, 1, 1, 5, 1, N'在WINDOS中，为保护文件不被修改，可将它的属性设置为（）', N'只读§存档§隐藏§系统', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (222, 1, 1, 5, 1, N'下来属于计算机输入设备的是（）', N'键盘§显示器§打印机§音响', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (223, 1, 1, 5, 1, N'在WINDOS系统中不能改变一个窗口的大小的是（）', N'动它的标题栏§动它的右下角§动它的左下角§动它的任何地方', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (224, 1, 1, 5, 1, N'在WINDOS的中文输入方式下，反复按（）键可在各种输入方式之间切换', N'CTRL+ALT§CTRL+SHIFT§CTRL+B§CTRL+V', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (225, 1, 1, 5, 1, N'计算机操作系统的功能是（）', N'完成计算机硬件与软件之间的转换§控制管理计算机系统的资源和程序的执行§实现计算机用户之间的相互交流§把源程序代码转换为目标代码', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (226, 1, 1, 5, 1, N'不可能作为计算机输出设备的是（）', N'绘图仪§扫描仪§显示器§喷墨打印机', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (227, 1, 1, 5, 1, N'同时选中一组相邻的文件的方法是（）', N'一次单击这组相邻文件的文件名§2第一个文件名，在按住SHIFT§先单击第一个文件名，在按住SHIFT键的同时再单击最后一个文件名§先单击第一个文件名，再按住CTRL键的同时再单击最后一个文件名', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (228, 1, 1, 5, 1, N'下列外部设备中，属于输出设备的是（）', N'扫描仪§键盘§打印机§光笔', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (229, 1, 1, 5, 1, N'在WINDOS默认环境中，下列（）方法不能使用“搜索”命令', N'用“开始”菜单中的“搜索”命令§在“资源管理器”窗口按“搜索”按钮§用鼠标右键单机“开始”按钮，然后在弹出的菜单中选“搜索”命令§用鼠标右键单机“我的电脑”图标，然后在弹出的菜单中选“搜索”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (230, 1, 1, 5, 1, N'粘贴文件内容的快捷键是（）', N'CTRL+A§CTRL+C§CTRL+V§CTRL+F', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (231, 1, 1, 5, 1, N'复制选定内容的快捷键是（）', N'CTRL+A§CTRL+B§CTRL+C§CTRL+D', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (232, 1, 1, 5, 1, N'在WORD2003的编辑状态中，对已经输入的文档进行分栏操作，需要使用的菜单是（）', N'编辑§试图§格式§工具', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (233, 1, 1, 5, 1, N'下列不属于“一机两用”行为的是（）', N'公安业务用计算机与公安信息网和互联网同时连接§公安业务用计算机断开公安信息网后，再连接互联网或其他网络§公安业务用计算机不安装无线上网设备，并与互联网及其他网络物理隔离§个人用计算机既连接公安信息网，又通过无线方式连接互联网', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (234, 1, 1, 5, 1, N'在Excel单元格引用中，A1:B2包含（）', N'2个单元格§3个单元格§4个单元格§12个单元格', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (235, 1, 1, 5, 1, N'要复制字符格式而不复制字符，可以用（）按钮', N'格式选定§格式刷§格式工具框§复制', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (236, 1, 1, 5, 1, N'Word2003中，利用（）功能在文档里查找指定单词或短语', N'搜索§局部§查找§替换', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 7, 7, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (237, 1, 1, 5, 1, N'在Word2003中，保存文档的命令可以在（）菜单里找到。', N'保存§编辑§文件§实用程序', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (238, 1, 1, 5, 1, N'word2003中，文字加下划线可以在（）选项卡中实现', N'字体§字符间距§文字效果§中文版式', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (239, 1, 1, 5, 1, N'Word2003字符不包括（）', N'汉字§数字§特殊符号§图片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (240, 1, 1, 5, 1, N'如果要在“插入”和“改写”状态之间切换，可以按键盘上的（）键', N'Isert§Home§End§Esc', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (241, 1, 1, 5, 1, N'要删除目前光标所在的位置的内容可以按键盘上的（）键', N'Backspace§Delete§Esc§Insert', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (242, 1, 1, 5, 1, N'将Word文档中的一部分内容复制到别处，首先要进行的操作是（）', N'粘贴§复制§选中欲复制的内容§剪切', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (243, 1, 1, 5, 1, N'在Word中，文档默认扩展名是（）', N'TXT§DOC§WRI§DOT', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (244, 1, 1, 5, 1, N'在Word中，一个文件编辑排版完成，要想知道其打印效果，可以选择Word（）功能。', N'打印预览§模拟打印§提前打印§屏幕打印', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (245, 1, 1, 5, 1, N'下列方式中，可以显示出页眉和页脚的是（）', N'普通视图§页面视图§大纲视图§全屏视图', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (246, 1, 1, 5, 1, N'在Word2003的编辑状态，要想为当前文档中的文字设定字符间距，应当使用（）', N'插入菜单中的命令§编辑菜单中的命令§工具菜单中的命令§格式菜单中的命令', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (247, 1, 1, 5, 1, N'在Word2003的编辑状态，要想为当前文档中的文字设定行间距，应当使用（）', N'字体命令§段落命令§分栏命令§样式命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (248, 1, 1, 5, 1, N'在Word中，Ctrl+V的功能是（）', N'将剪切板中的内容复制到光标处§将剪切板中的内容粘贴到光标处§将剪切板中的内容剪切到光标处§将剪切板中的内容全选到光标处', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (249, 1, 1, 5, 1, N'在Word2003中，执行图片“插入”操作，应该选择菜单栏中的（）', N'文件§视图§插入§格式', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (250, 1, 1, 5, 1, N'公式sum(c2:c6)的作用是（）', N'求C2到C6这五个单元格中的数字§求C2到C6这两个单元格中的数字之和§求C2到C6这五个单元格中德数字之平均数§求C2和C6这两个单元格中的数字的平均值', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (251, 1, 1, 5, 1, N'在word的编辑状态，使插入点快速移动到文档末尾的操作是按（）键', N'End§Alt+End§Shift+End§Ctrl+End', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (252, 1, 1, 5, 1, N'Excel中的函数AVERAGE的功能是（）', N'求所选的范围内所有的单元格中数字的平均值§求所选范围内单元格中数据的个数§求所选范围内所有的单元格中的数字的和§返回函数中的最大值', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 22, 22, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (253, 1, 1, 5, 1, N'给某人发送电子邮件时，该人没有上网，则该电子邮件将（）', N'被退回，并不在发送§暂存在邮件服务器上§被退回，在从新发送§该邮件被丢失', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (254, 1, 1, 5, 1, N'Internet Explorer是浏览器，它的作用是（）', N'浏览网页§处理文字§关闭主机§删除程序', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (255, 1, 1, 5, 1, N'IE浏览器中收藏的主要功能是（）', N'存储经常访问的站点地址§跟踪每次在Internet中所访问过的站点并存储§显示当前文档或网页URL地址§显示web页或文件夹的内容', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (256, 1, 1, 5, 1, N'互联网上常见的搜索引擎地址是（）', N'www.qq.com§www.126.com§www.baidu.com§www.hotmail.com', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (257, 1, 1, 5, 1, N'以下软件中，常用的邮件处理软件是（）', N'Excel§eMule§Outlook§Internet Explorer', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (258, 1, 1, 5, 1, N'以下是正确的电子邮件地址的格式是（）', N'mail.hotemail.com§www.hotmail.com§user@hotemail.com§suer.hotmail.com', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (259, 1, 1, 5, 1, N'在Internet中能够提供任意两台计算机之间传输文件的协议是（）', N'WWW§Ftp§telnet§smtp', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (260, 1, 1, 5, 1, N'以下不属于“全国失踪人员信息系统”中检索项的是（）。', N'户籍地§DNA§足长§血型', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (261, 1, 1, 5, 1, N'办公常用的计算机属于', N'小巨型机§小型计算机§微型计算机§中型计算机', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (262, 1, 1, 5, 1, N'命令菜单中，灰色命令表示（）。', N'选择该命令将弹出对话框§该命令正在起作用§该命令以及使用过§该命令当前不能使用', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (263, 1, 1, 5, 1, N'网卡的主要功能不包括（）。', N'把计算机连接到通信介质上§进行电信号匹配§实现数据传输§网络互联', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (264, 1, 1, 5, 1, N'严厉禁止“一机两用”的根本目的是', N'避免造成信息泄密和病毒感染，保证网络安全§避免民警工作时间上互联网§提高民警的自律能力§避免非警务人员进入公安网', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (265, 1, 1, 5, 1, N'在WORD2003的文档中药插入页眉，应该执行的菜单选项是（）。', N'文件→页面设置§插入→页眉页脚§格式→页眉和页脚§“视图→页眉和页脚”', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (266, 1, 1, 5, 1, N'在WORD2003中，段间距是指', N'段前距离§段后距离§与上一段落或与后一段落之间的距离§段落中的行间距之和', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (267, 1, 1, 5, 1, N'在POWERPOINT2003中，增加新幻灯片可在（）菜单中选中“新幻灯片”。', N'插入§编辑§格式§文件', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (268, 1, 1, 5, 1, N'WORD2003中，表格最快的排版方式可以利用菜单（）来实现', N'格式/字符§表格/自动套用§格式/段落§插入/表格', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (269, 1, 1, 5, 1, N'用英文录入文件时，大小写切换键是（）。', N'TAB§CAPSLOCK§CTRL§SHIFT', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (270, 1, 1, 5, 1, N'WORD2003中，“文件”菜单中“关闭”命令的意思是（）。', N'关闭WORD窗口连同其中的文档窗口，并退到WINDOWS中§关闭文档窗口中，并退出到WINDOWS中§关闭WORD窗口连同其中中文档串钩，退到DOS状态下§关闭文档窗口但仍在WORD内', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (271, 1, 1, 5, 1, N'默认情况下，在WORD中输入的错误的英文单词，会（）。', N'系统响铃，提示出错§在单词下有黑色波浪线§在单词下有红色波浪线§WORD自动更正', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (272, 1, 1, 5, 1, N'WORD2003中，“文件”下拉菜单底部所显示的文件名是（）。', N'正在使用的文件名§正在打印的文件名§扩展名为“.DOC”的全部文件§最近被WORD处理的文件名', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (273, 1, 1, 5, 1, N'下列快捷键中中哪个选择整篇文档（）。', N'ALT+A§CTRL+A§SHIFT+A§CTRL+AL+A', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (274, 1, 1, 5, 1, N'在EXCEL中，单元格中输入公式，要以（）开头。', N'大于号§数字§等号§字母', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (275, 1, 1, 5, 1, N'在INTERNET EXPLORER浏览器中，要保存一个网址，可以使用（）功能。', N'历史§搜索§收藏§转移', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (276, 1, 1, 5, 1, N'在IE浏览器页面上端地址栏内输入FTP地址的正确格式是（）。', N'HTTP://10.18.8.30§FTP://10.18.8.30§10.18.8.30§FTP:\\10.18.8.30', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (277, 1, 1, 5, 1, N'压缩文件夹加密码操作正确的是（）。', N'右键单击压缩文件夹；加密§右键单击要压缩文件夹；选择“添加到压缩文件”；在选择“高级”选项卡；设置密码§右键单击要压缩文件夹选择“打开”；设置密码§打开压缩文件夹；设置密码', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (278, 1, 1, 5, 1, N'WINDOWS中彻底删除文件的操作（）。', N'选定文件后，同时按下Shift与Del键§选定文件后同时按下CTRL与DEL键§选定文件后，按下DEL键§选定文件后，同时按下ALT与DEL键', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (279, 1, 1, 5, 1, N'在“我的电脑”或“资源管理器”窗口中，使用（）可以按名称、类型、大小、日期排列窗口中的内容。', N'“文件”菜单§“查看”菜单§“编辑”菜单§“工具”菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 7, 7, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (280, 1, 1, 5, 1, N'WINDOW桌面上的快捷方式图标表示（）。', N'操作系统§应用程序§数据文件§快捷菜单', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (281, 1, 1, 5, 1, N'计算机病毒是（）。', N'计算机系统自生的§一种人为编制的计算机程序§主机发生故障时产生的§可传染疾病给人体的那种病毒', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (282, 1, 1, 5, 1, N'在资源管理器窗口中，（）的功能不能实现', N'文件及文件夹的建立与删除§查找文件及文件夹§磁盘的格式化§修改文档的建立日期与时间', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (283, 1, 1, 5, 1, N'计算机电源关闭后，所有的数据保存在（）。', N'CPU§内存§主板§硬盘', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (284, 1, 1, 5, 1, N'剪切操作是将被剪切的对象（）。', N'删除§放入“回收站”§临时存放在“剪贴板”上§临时放在桌面上', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (285, 1, 1, 5, 1, N'以下有关操作系统的叙述中说话错误的是（）。', N'操作系统管理着系统中的各种资源§操作系统应用的快捷方式图标§操作系统是资源的管理者和仲裁者§操作系统是计算机系统中的一个应用软件', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (286, 1, 1, 5, 1, N'在WINDOWS XP操作系统中，可以通过以下哪个方式启动程序（）。', N'桌面快捷方式图标§开始菜单§快速启动栏§以上都是', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (287, 1, 1, 5, 1, N'在IE浏览器中，若需要设置主页，可以通过以下（）菜单完成。', N'文件§编辑§收藏§工具', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (288, 1, 1, 5, 1, N'在Word中，Ctrl+C的功能是（）。', N'剪切§复制§全选§粘贴', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (289, 1, 1, 5, 1, N'Excel2003中，若在工作表中插入一列，则一般插在当前列的（）。', N'左侧§上方§右侧§下方', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (290, 1, 1, 5, 1, N'Excel2003中，若选定多个不连续的行所用的键是（）。', N'Shift+所选行§Ctrl+所选行§Alt+所选行§Shift+Ctrl+所选行', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (291, 1, 1, 5, 1, N'在Excel中，没有进行“边框”设置的表格，打印出来后，看到的效果是（）。', N'有网格线§无网格线§时而有网格线，时而无网格线§表格的一部分有网格线，一部分无网格线', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 38, 33, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (292, 1, 1, 5, 1, N'在PowerPoint2003中，若一个演示文稿中有三张幻灯片，播放时要跳过第二张放映，可（）。', N'隐藏第二张幻灯片§取消第二张幻灯片的动画效果§取消第一张幻灯片的动画效果§只能删除第二张幻灯片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (293, 1, 1, 5, 1, N'在使用Word编辑文档时，插入点的形状是（）。', N'手型§箭头型§闪烁的竖条型§沙漏型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (294, 1, 1, 5, 1, N'在Word制表时，选择“表格”菜单中的（）命令可以调整行高和列宽。', N'表格属性§单元格§自动套用格式§插入表格', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (295, 1, 1, 5, 1, N'在Word中，要想使所编辑的文件保存后不被他人查看，可在安全性的“选项”中设置（）。', N'修改权限口令§建议只读方式打开§打开权限口令§快速保存', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (296, 1, 1, 5, 1, N'在Word环境下，如果你在编辑文本是执行了错误操作，（）功能可以帮助你回复换来的状态。', N'复制§粘贴§撤销§清除', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (297, 1, 1, 5, 1, N'Excel不能用于（）。', N'处理表格§创建图表§统计分析§制作演示文稿', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (298, 1, 1, 5, 1, N'Excel中，在当前工作表的前面插入一新工作表，可以使用菜单中的（）命令。', N'编辑§插入§工具§文件', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (299, 1, 1, 5, 1, N'Worde2003中的（）视图方式使得显示效果与打印预览基本相同。', N'普通§阅读§大纲§页面', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (300, 1, 1, 5, 1, N'在幻灯片“动作设置”对话框中设置的超级链接，起链接对象不可以是（）。', N'下一站幻灯片§上一张幻灯片§其他演示文稿§幻灯片中的某一对象', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (301, 1, 1, 5, 1, N'在Worde的编辑状态，执行编辑菜单中的“全选”命令后（）。', N'整个文档被选择§插入点所在的段落被选择§插入点所在的行被选择§插入点至文档的首部被选择', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (302, 1, 1, 5, 1, N'中文Windows中，按键（），可在个中汉字输入方式之间切换。', N'Ctrl+Space§Shift+Space§Alt+Space§Ctrl+Shinft', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (303, 1, 1, 5, 1, N'在Word中，段落“缩进”后打印出来的文本，起文本相对于打印纸边界的距离为（）。', N'页边距§缩进距离§悬挂缩进距离§页边距+缩进距离', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (304, 1, 1, 5, 1, N'在Word文档窗口中，若选定的文字包含有几种字体的汉字，则格式工具栏的字体框中显示（）。', N'空白§第一个案子的字体§宋体§选定的文字中使用最多的文字字体', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
GO
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (305, 1, 1, 5, 1, N'在“幻灯片浏览视图”模式下，不允许进行的操作是（）。', N'幻灯片移动和复制§幻灯片切换§幻灯片删除§设置动画效果', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (306, 1, 1, 5, 1, N'Powerpoint2000运行的操作系统环境是（）。', N'UNIX§DOS§Macintosh§Windows', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (307, 1, 1, 5, 1, N'在Excel中，选取单元格时，鼠标指针为（）。', N'竖条光标§空心十字光标§箭头光标§不确定', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (308, 1, 1, 5, 1, N'在PowerPoint文本框中可以插入（）。', N'只有文字§只有图片§只有声音§文字和图片', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 6, 6, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (309, 1, 1, 5, 1, N'在Excel中，不连续单元格的选取，可借助于（）键完成。', N'Ctrl键§Shift键§Alt键§Tab键', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (310, 1, 1, 5, 1, N'在Word中，单击“常用”工具栏上的“打印”按钮，则会（）。', N'打印选定内容§打印当前页§打印全部文档§出现“打印”对话框', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (311, 1, 1, 5, 2, N'在Word中，用拼音输入法输入单个汉字时，字母键（）。', N'必须是大写§必须是小写§可以大写与小写§可以大写与小写混合使用', N'B,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 36, 36, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (312, 1, 1, 5, 1, N'在Word中，文档编辑窗口中，将选定的一段文字拖动到另一位置，则完成对该段文字的（）。', N'移动操作§复制操作§删除操作§非法操作', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (313, 1, 1, 5, 1, N'下列哪种视图不是Word中的视图模式（）。', N'页面视图§大纲视图§特殊视图§普通视图', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (314, 1, 1, 5, 1, N'在Word中，若要将某个段落的格式复制到另一段，可采用（）。', N'字符样式§拖动§格式刷§剪切', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 1, 1, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (315, 1, 1, 5, 1, N'在Word2003中，编辑修改以前有用文本时，不覆盖原文件并且保留这一次的修改，可以采用（）。', N'用“文件”菜单中的“保存”命令§用“文件”菜单中的“另存为”命令§用“文件”菜单中的“关闭”命令§用“文件”菜单中的“退出”命令', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (316, 1, 1, 5, 1, N'在Word2003中，可以同时打开多个窗口，但是（）。', N'只能打开一个文档窗口才可以编辑§多个文档之间不可以切换编辑§可同时编辑多个§不是活动的窗口也可以编辑', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (317, 1, 1, 5, 1, N'下列关于Word文档窗口的说法中，正确的是（）。', N'只能打开一个文档窗口§可以同时打开多个文档窗口，被打开的窗口都是活动窗口§可以同时打开多个文档窗口，但其中只有一个是活动窗口§可以同时打开多个文档窗口，但在屏幕上只能见到一个文档窗口', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (318, 1, 1, 5, 1, N'在Word中，要使文档的标题位于页面居中位置，应使标题（）。', N'两端对齐§居中对齐§分散对其§右对齐', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (319, 1, 1, 5, 1, N'在Word中，若要将选中的文本内容加粗，可以单击（）。', N'B§U§I§A', N'A', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (320, 1, 1, 5, 1, N'在幻灯片视图中，不能执行的操作有（）。', N'删除当前幻灯片上的文字§删除当前幻灯片上的图形§改变幻灯片上文字的大小§删除该幻灯片', N'D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 4, 4, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (321, 1, 1, 5, 1, N'关于Excel中排序，说法正确的是（）。', N'只能按行排序§只能按列排序§既能按行排序，也能按列排序§以上说法都不正确', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 8, 8, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (322, 1, 1, 5, 1, N'下面 有关Word的描述中，错误的是（）。', N'Word的默认文档类型为DOC§可以将Word文档保存为TXT类型§可以将Word文档保存为JPG类型§可以将Word文档保存为HTML类型', N'C', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (323, 1, 1, 5, 1, N'文图混排是Word的主要特色之一，以下属于文图混排的是（）。', N'水印型方式§嵌入型方式§图形与文字并排方式§指纹型方式', N'B', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (324, 1, 1, 5, 3, N'集群系统是很多用户自动分享数量相对较少的无线信道，并动态地使用这些信道的移动通信系统。', N'', N'Y', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (325, 1, 1, 5, 3, N'所谓无线通信，它不需架设线路而利用无线电波在空间传递消息。', N'', N'Y', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (326, 1, 1, 5, 2, N'移动通信系统由（ ）部分组成', N'天线与馈线、天线馈线共用器§收信发信机§制冷设备§无线通信交换控制设备', N'A,B,D', 0, 0, N'', 4, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 49, 49, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (327, 1, 1, 5, 3, N'对讲机电池充电时间越长越好。', N'', N'N', 0, 0, N'', 2, N'', 4, CAST(0x0000A3ED0130E96C AS DateTime), 0, 0, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (328, 1, 1, 5, 1, N'工作表中，“SUM(A4：D16)”表示求“A4 D16”单元格的', N'平均值 §和 §最大值 §最小值
', N'B', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), 4, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (329, 1, 1, 5, 1, N'在Excel工作表中，单元格的编号方法是', N'数字+字母§字母+数字§行号+列标§列标+行号', N'D', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), 3, 3, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (330, 1, 1, 5, 1, N'要将Word文档中一部分选定的文字移动到指定的位置，对它进行的操作是', N'单击"编辑"菜单下的"复制"命令，在指定的位置再点“粘贴”命令。§单击"编辑"菜单下的"清除"命令，在指定的位置再点“复制”命令。§单击"编辑"菜单下的"剪切"命令，在指定的位置再点“粘贴”命令。§单击"编辑"菜单下的"粘贴"命令，在指定的位置再点“复制”命令。

', N'C', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (331, 1, 1, 5, 1, N'关于Excel中排序，说法正确的是', N'只能按行排序§只能按列排序§既能按行排序，也能按列排序 §以上说法都不正确', N'C', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (332, 1, 1, 5, 1, N'Excel中当单元格中出现多个字符“#”时，说明该单元格', N'数据输出错误§数值格式设置错误§文字数据长度超过单元格宽度§数值数据长度超过单元格宽度', N'D', 0, 0, N'', 4, N'', 0, CAST(0x0000A3ED0130E96C AS DateTime), 5, 5, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (334, 1, 1, 6, 6, N'方配软件以开发“方便配置“的软件做为自己的终极目标，这是方配软件执着的源动力所在。目前大部分的软件到用户这里都需要安装一些相关的组件，特别是Web软件，就需要安装网站服务器以及数据库等，这就造成了很多用户如果不会安装就无法使用，只能求救相关的技术人员或付费。方配开发所有的软件都是为了方便用户安装配置、一步到位，并且简单实用、扩展方便、快速开发而且轻量级，用户无需为了运行软件而到处去寻找安装这样那样的组件', N'', N'', 0, 0, N'', 0, N'', 2, CAST(0x0000A408003180A8 AS DateTime), 2, 2, 1, NULL)
INSERT [dbo].[FP_Exam_ExamQuestion] ([id], [uid], [channelid], [sortid], [type], [title], [content], [answer], [upperflg], [orderflg], [answerkey], [ascount], [explain], [difficulty], [postdatetime], [exams], [wrongs], [status], [isclear]) VALUES (335, 1, 1, 4, 4, N'数据类型包括：(#answer)、(#answer)、(#answer)。', N'', N'布尔,数值,字符', 0, 0, N'', 3, N'<p>
	<span></span>?
</p>', 2, CAST(0x0000A4290169E03C AS DateTime), 9, 7, 1, 1)
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (1, 1, 1, 2, 1, N'模拟考试', 60, 0, 1, 0, 100, 60, 20, 1.7, 21.7, 129, 0, CAST(0x0000A42A015355EC AS DateTime), CAST(0x0000A42A0153F54C AS DateTime), CAST(0x0000A42A015355EC AS DateTime), 0, 20, 16, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (2, 1, 1, 2, 1, N'模拟考试', 60, 0, 1, 0, 100, 60, 0, 0, 0, 1322, 0, CAST(0x0000A4D8010A84E8 AS DateTime), CAST(0x0000A4D9001C4EE0 AS DateTime), CAST(0x0000A4D8010A84E8 AS DateTime), 0, 21, 20, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (3, 1, 1, 7, 3, N'信息化正式考试', 60, 0, 1, 0, 100, 60, 0, 0, 0, 483, 0, CAST(0x0000A4D801343FB8 AS DateTime), CAST(0x0000A4D9001C3C20 AS DateTime), CAST(0x0000A4D801343FB8 AS DateTime), 0, 40, 40, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (4, 1, 1, 2, 1, N'模拟考试', 60, 0, 1, 0, 100, 60, 0, 0, 0, 3601, 0, CAST(0x0000A4D9001CA598 AS DateTime), CAST(0x0000A4D90031EED0 AS DateTime), CAST(0x0000A4D9001CA598 AS DateTime), 0, 101, 100, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (5, 1, 1, 2, 1, N'模拟考试', 60, 0, 1, 0, 100, 60, 0, 0, 0, 3601, 0, CAST(0x0000A4D90032238C AS DateTime), CAST(0x0000A4D90049A070 AS DateTime), CAST(0x0000A4D90032238C AS DateTime), 0, 101, 100, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (6, 1, 1, 7, 3, N'信息化正式考试', 60, 0, 1, 0, 100, 60, 4, 0, 4, 11, 0, CAST(0x0000A4D9003EA2C4 AS DateTime), CAST(0x0000A4DA00AC9608 AS DateTime), CAST(0x0000A4D9003EA2C4 AS DateTime), 0, 40, 38, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (7, 1, 1, 2, 1, N'模拟考试', 60, 0, 1, 0, 100, 60, 1, 0, 1, 309, 0, CAST(0x0000A4D9009E4DC8 AS DateTime), CAST(0x0000A4DA00AC64D0 AS DateTime), CAST(0x0000A4D9009E4DC8 AS DateTime), 0, 101, 99, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 1, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResult] ([id], [uid], [channelid], [sortid], [examid], [examname], [examtime], [examtype], [showanswer], [allowdelete], [total], [passmark], [score1], [score2], [score], [utime], [islimit], [starttime], [endtime], [examdatetime], [credits], [questions], [wrongs], [unanswer], [exp], [getcredits], [exnote], [status], [paper], [ip], [mac]) VALUES (8, 1, 1, 2, 1, N'模拟考试', 60, 0, 1, 0, 100, 60, 0, 0, 0, 35, 0, CAST(0x0000AA1F008ADF2C AS DateTime), CAST(0x0000AA1F008B1514 AS DateTime), CAST(0x0000AA1F008ADF2C AS DateTime), 0, 0, 0, 0, 0, 0, N'您的成绩不及格，加油哦', 1, 2, N'127.0.0.1', N'00-00-00-00-00-00')
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (1, 1, 1, N'一、选择题', 1, 5, 15, 10, 7, N'332,223,96,291,296,100,26,74,167,192', N'0,1,2,3|3,0,1,2|2,1,0|0,1,2,3|3,0,1,2|1,2,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0', N'B§C§A§D§B§C§D§C§A§C', N'0|0|0|0|0|5|5|0|5|0', N'0|0|0|0|0|1|1|0|1|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (2, 1, 2, N'二、多选题', 1, 5, 5, 9, 8, N'5,311,88,80,326,79,81,78,46', N'0,1,2,3|3,0,1,2|3,2,4,1,0|0,2,1,3,5,4|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2', N'B,C§A,B§D,E§B,C§A,B§B,C§A,B§B,C§B,C', N'0|0|0|0|0|0|0|0|5', N'0|0|0|0|0|0|0|0|1', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (3, 1, 4, N'三、填空题', 3, 5, 1.7, 1, 1, N'335', N'*', N'布尔,,', N'1.7', N'0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (4, 2, 1, N'一、选择题', 1, 5, 0, 10, 10, N'20,68,264,161,96,289,233,112,11,291', N'0,3,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,0,1|1,3,2,0|0,2,1,3|3,1,0,2|2,0,3,1|1,3,2,0', N'B§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (5, 2, 2, N'二、多选题', 1, 5, 0, 9, 9, N'311,326,5,46,79,78,81,88,80', N'1,0,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,3,2,4,0|0,2,1,3,5,4', N'§§§§§§§§', N'0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (6, 2, 4, N'三、填空题', 3, 5, 0, 2, 1, N'335,0', N'*', N',,', N'0', N'0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (7, 3, 1, N'第一题、单选题', 1, 2, 0, 30, 30, N'304,76,184,143,18,174,175,201,19,303,51,287,256,35,320,67,247,109,232,66,216,34,288,2,257,231,159,110,200,272', N'0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3', N'B§§§§§§§§§C§B§§§§§§§§§§§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (8, 3, 2, N'第二题、多选题', 2, 4, 0, 10, 10, N'326,79,94,80,46,88,81,311,78,5', N'0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3,4,5|0,1,2,3|0,1,2,3,4|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3', N'§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (9, 4, 1, N'一、选择题', 1, 1, 0, 90, 90, N'195,320,255,298,106,257,208,278,6,120,45,23,308,145,289,205,296,68,240,158,246,290,63,122,238,190,288,241,266,178,256,228,112,206,14,146,35,279,58,31,97,166,168,216,218,227,268,217,321,258,169,28,307,51,156,72,239,196,297,207,147,244,188,197,295,247,177,102,121,18,189,96,40,167,157,111,179,277,229,109,280,306,245,267,319,291,110,53,75,9', N'3,2,0,1|1,2,3,0|0,1,2,3|3,0,1,2|1,2,0|0,2,1,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,0|0,2,3,1|1,2,3,0|0,1,2,3|3,0,1,2|2,1,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,0,1|1,2,3,0|0,1,2,3|3,0,1,2|1,2,0|0,3,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,1,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0', N'§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§B§§§§§§§§§§§§§§§§§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (10, 4, 2, N'二、多选题', 1, 1, 0, 9, 9, N'81,78,88,326,46,79,311,5,80', N'3,0,1,2|2,3,0,1|2,1,3,4,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|5,4,0,1,3,2', N'§§§§§§§§', N'0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (11, 4, 4, N'三、填空题', 3, 1, 0, 2, 1, N'0,335', N'*', N',,', N'0', N'0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (12, 5, 1, N'一、选择题', 1, 1, 0, 90, 90, N'164,287,185,275,152,194,39,154,119,142,12,163,52,61,237,303,225,162,213,74,235,226,7,175,29,153,331,203,187,240,165,329,215,315,265,292,117,141,293,96,304,66,186,105,236,22,285,273,284,305,286,241,243,330,294,143,291,34,263,57,253,93,264,316,118,276,201,332,116,176,274,252,224,214,26,192,49,242,71,43,4,234,254,191,193,202,204,174,100,17', N'0,1,3,2|2,3,0,1|1,0,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,2,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|1,2,0|0,2,1,3|3,1,0,2|2,0,3,1|1,2,0|0,2,1,3|3,1,0,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2|3,0,1,2', N'§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (13, 5, 2, N'二、多选题', 1, 1, 0, 9, 9, N'326,46,311,79,80,81,94,5,88', N'2,3,0,1|1,2,3,0|0,1,2,3|3,1,2,0|0,2,1,3,5,4|3,0,1,2|2,3,0,1|1,2,3,0|1,0,2,4,3', N'§§§§§§§§', N'0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (14, 5, 4, N'三、填空题', 3, 1, 0, 2, 1, N'335,0', N'*', N',,', N'0', N'0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (15, 6, 1, N'第一题、单选题', 1, 2, 4, 30, 28, N'321,208,304,52,10,11,216,217,289,26,207,279,280,159,160,35,144,67,175,116,68,320,248,264,288,99,233,192,263,232', N'0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3', N'§§§§§§§§§§§§§§§§§§§§§§§B§B§B§§§§', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|2|2|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|1|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (16, 6, 2, N'第二题、多选题', 2, 4, 0, 10, 10, N'326,80,311,88,81,5,94,78,46,79', N'0,1,2,3|0,1,2,3,4,5|0,1,2,3|0,1,2,3,4|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3|0,1,2,3', N'§§§§§§§§§', N'0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (17, 7, 1, N'一、选择题', 1, 1, 1, 90, 89, N'288,287,231,309,291,4,188,120,259,235,321,64,27,238,258,310,320,169,103,281,159,19,268,41,279,170,323,236,221,171,247,271,219,298,248,10,187,32,237,54,322,76,196,308,111,300,197,149,280,199,112,249,24,96,47,180,69,209,2,220,270,113,182,229,232,186,282,158,208,269,119,98,148,15,198,36,59,157,147,260,286,312,118,160,210,50,71,230,299,181', N'1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|2,0,1|1,0,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,3,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,1,0,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|1,2,0|0,3,1,2|2,1,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0|0,1,2,3|3,0,1,2|2,3,0,1|1,2,3,0', N'§§§§§§§§§§§§§§§§§§A§A§B§§§B§§§§§§§A§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§A§§A§', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|1|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (18, 7, 2, N'二、多选题', 1, 1, 0, 9, 9, N'81,311,46,326,80,79,94,78,5', N'1,3,0,2|2,3,0,1|1,2,3,0|0,1,2,3|4,0,5,1,3,2|1,3,2,0|0,1,2,3|3,0,1,2|2,3,0,1', N'B§§§§§§§§', N'0|0|0|0|0|0|0|0|0', N'0|0|0|0|0|0|0|0|0', NULL)
INSERT [dbo].[FP_Exam_ExamResultTopic] ([id], [resultid], [type], [title], [display], [perscore], [score], [questions], [wrongs], [questionlist], [optionlist], [answerlist], [scorelist], [correctlist], [paper]) VALUES (19, 7, 4, N'三、填空题', 3, 1, 0, 2, 1, N'0,335', N'*', N',,', N'0', N'0', NULL)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (1, 1, 1, N'一、选择题', 1, 90, 2, N'291,96', 1, N'5,4', N'68,20', 88, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (2, 1, 2, N'二、多选题', 1, 9, 1, N'326', 1, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (7, 2, 1, N'第一题、单选题', 1, 10, 1, N'332', 5, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (8, 2, 2, N'第二题、多选题', 1, 10, 0, N'', 5, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (10, 2, 1, N'第一题、单选题', 1, 10, 0, N'', 5, N'', N'', 0, 2)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (11, 2, 2, N'第二题、多选题', 1, 10, 0, N'', 5, N'', N'', 0, 2)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (12, 2, 6, N'第三题、打字题', 1, 1, 0, N'', 1, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (13, 2, 6, N'第三题、打字题', 1, 1, 0, N'', 1, N'', N'', 0, 2)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (14, 1, 4, N'三、填空题', 3, 1, 0, N'0', 1, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (15, 3, 1, N'第一题、单选题', 1, 30, 0, N'', 2, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExamTopic] ([id], [examid], [type], [title], [display], [questions], [curquestions], [questionlist], [perscore], [randomsort], [randomcount], [randoms], [paper]) VALUES (16, 3, 2, N'第二题、多选题', 2, 10, 0, N'', 4, N'', N'', 0, 1)
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (1, 1, 0, 60, 0, 0, N'您的成绩不及格，加油哦')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (2, 1, 60, 70, 1, 0, N'您的成绩免强及格，仍需努力哦')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (3, 1, 70, 80, 2, 0, N'您的成绩中等水平，努力更上一台价')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (4, 1, 80, 90, 3, 0, N'您的成绩中上水平，努力保持')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (5, 1, 90, 100, 4, 0, N'您的成绩不错，不要骄傲')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (6, 2, 0, 60, 0, 0, N'您的成绩不及格，加油哦')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (7, 2, 60, 70, 1, 0, N'您的成绩免强及格，仍需努力哦')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (8, 2, 70, 80, 2, 0, N'您的成绩中等水平，努力更上一台价')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (9, 2, 80, 90, 3, 0, N'您的成绩中上水平，努力保持')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (10, 2, 90, 100, 4, 0, N'您的成绩不错，不要骄傲')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (11, 3, 0, 60, 0, 0, N'您的成绩不及格，加油哦')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (12, 3, 60, 70, 1, 0, N'您的成绩免强及格，仍需努力哦')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (13, 3, 70, 80, 2, 0, N'您的成绩中等水平，努力更上一台价')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (14, 3, 80, 90, 3, 0, N'您的成绩中上水平，努力保持')
INSERT [dbo].[FP_Exam_ExpInfo] ([id], [examid], [scorelower], [scoreupper], [exp], [credits], [comment]) VALUES (15, 3, 90, 100, 4, 0, N'您的成绩不错，不要骄傲')
INSERT [dbo].[FP_WMS_AppInfo] ([id], [name], [installpath], [setpath], [author], [version], [frontpage], [target], [notes], [files], [guid], [sortapps]) VALUES (2, N'方配在线考试系统', N'exam', N'exam', N'方配', N'3.9', N'admin/examconfig.aspx', N'_self', N'', N'', N'25ba2f85-e14c-4596-afa0-3de016eedf27', N'题目管理,exam_question,admin/questionmanage.aspx,|考试管理,exam_paper,admin/exammanage.aspx,')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (1, N'jpg', 2048, N'image')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (3, N'gif', 1024, N'image')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (4, N'zip', 4096, N'file')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (6, N'png', 2048, N'image')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (7, N'rar', 4096, N'file')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (8, N'doc', 4096, N'file')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (9, N'xls', 4096, N'file')
INSERT [dbo].[FP_WMS_AttachType] ([id], [extension], [maxsize], [type]) VALUES (10, N'flv', 102400, N'media')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup]) VALUES (1, N'考试题库', 1, N'exam_question')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup]) VALUES (2, N'模拟考试', 2, N'exam_paper1')
INSERT [dbo].[FP_WMS_ChannelInfo] ([id], [name], [display], [markup]) VALUES (3, N'正式考试', 3, N'exam_paper2')
INSERT [dbo].[FP_WMS_Department] ([id], [parentid], [parentlist], [name], [usercount], [description], [display], [subcounts], [posts]) VALUES (1, 0, N'0,1', N'行政部', 0, N'', 1, 0, 0)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [name], [icon], [lefturl], [righturl], [description], [hidden], [system]) VALUES (1, 1, N'系统设置', N'/admin/images/icon32/sys.gif', N'global/sysconfigmanage.aspx', N'mainframe', N'', 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [name], [icon], [lefturl], [righturl], [description], [hidden], [system]) VALUES (2, 1, N'站点管理', N'/admin/images/icon32/sites.gif', N'global/sitemanage.aspx', N'mainframe', N'', 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [name], [icon], [lefturl], [righturl], [description], [hidden], [system]) VALUES (3, 1, N'角色管理', N'/admin/images/icon32/role.gif', N'user/rolemanage.aspx', N'mainframe', N'', 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [name], [icon], [lefturl], [righturl], [description], [hidden], [system]) VALUES (4, 1, N'用户管理', N'/admin/images/icon32/users.gif', N'user/usermanage.aspx', N'mainframe', N'', 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [name], [icon], [lefturl], [righturl], [description], [hidden], [system]) VALUES (5, 1, N'栏目管理', N'/admin/images/icon32/sort.gif', N'sort/sortmanage.aspx', N'mainframe', N'', 0, 1)
INSERT [dbo].[FP_WMS_DesktopInfo] ([id], [uid], [name], [icon], [lefturl], [righturl], [description], [hidden], [system]) VALUES (6, 0, N'考试设置', N'/exam/admin/images/exam.png', N'', N'/exam/admin/examconfig.aspx', N'考试系统设置', 0, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (1, 0, N'系统管理', N'', N'', 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (2, 1, N'系统常规设置', N'', N'', 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (3, 2, N'系统基础配置', N'', N'global/sysconfigmanage.aspx', 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (5, 2, N'系统文件管理', N'', N'global/sysfilesmanage.aspx', 3, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (6, 2, N'系统缓存管理', N'', N'global/cachemanage.aspx', 4, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (7, 2, N'系统日志管理', N'', N'global/syslogmanage.aspx', 5, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (8, 13, N'邮箱认证配置', N'', N'user/emailconfigmanage.aspx', 7, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (9, 2, N'系统菜单管理', N'', N'global/sysmenumanage.aspx', 7, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (10, 40, N'上传图片配置', N'', N'global/watermarkset.aspx', 10, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (11, 40, N'上传附件类型', N'', N'global/attachtypemanage.aspx', 11, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (12, 40, N'上传附件管理', N'', N'global/attachmanage.aspx', 12, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (13, 1, N'系统用户设置', N'', N'', 3, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (14, 13, N'用户角色管理', N'', N'user/rolemanage.aspx', 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (15, 13, N'操作权限管理', N'', N'user/permissionmanage.aspx', 2, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (16, 13, N'用户部门管理', N'', N'user/departmentmanage.aspx', 3, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (17, 13, N'用户级别管理', N'', N'user/usergrademanage.aspx', 4, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (18, 13, N'用户注册配置', N'', N'user/regconfigmanage.aspx', 5, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (19, 13, N'等待验证用户', N'', N'user/userauditing.aspx', 8, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (20, 13, N'系统用户管理', N'', N'user/usermanage.aspx', 9, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (21, 1, N'系统栏目设置', N'', N'', 2, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (22, 2, N'系统站点管理', N'', N'global/sitemanage.aspx', 2, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (23, 21, N'站点栏目管理', N'', N'sort/sortmanage.aspx', 3, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (25, 1, N'系统数据库设置', N'', N'', 5, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (26, 25, N'在线运行SQL命令', N'', N'dbset/runsql.aspx', 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (27, 25, N'数据库备份还原', N'', N'dbset/dbbackup.aspx', 2, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (28, 25, N'数据库收缩优化', N'', N'dbset/dbshrink.aspx', 3, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (29, 0, N'考试题库', N'sorttree.aspx?channelid=1&posts=1', N'/exam/admin/questionmanage.aspx?sortid=1', 2, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (30, 2, N'系统桌面管理', N'', N'global/desktopmanage.aspx', 8, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (31, 21, N'栏目功能管理', N'', N'sort/sortappmanage.aspx', 2, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (32, 21, N'信息分类管理', N'', N'sort/typemanage.aspx', 4, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (34, 21, N'栏目频道管理', N'', N'sort/channelmanage.aspx', 1, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (36, 2, N'系统插件管理', N'', N'global/pluginmanage.aspx', 9, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (39, 25, N'重置库表标识列', N'', N'dbset/dbreset.aspx', 4, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (40, 1, N'上传文件设置', N'', N'', 4, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (41, 2, N'系统应用管理', N'', N'global/appmanage.aspx', 3, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (42, 2, N'系统计划任务', N'', N'global/taskmanage.aspx', 11, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (43, 13, N'短信认证配置', N'', N'user/smsconfigmanage.aspx', 6, 1)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (44, 0, N'模拟考试', N'sorttree.aspx?channelid=2', N'/exam/admin/exammanage.aspx?sortid=2', 3, 0)
INSERT [dbo].[FP_WMS_MenuInfo] ([id], [parentid], [name], [lefturl], [righturl], [display], [system]) VALUES (45, 0, N'正式考试', N'sorttree.aspx?channelid=3', N'/exam/admin/exammanage.aspx?sortid=7', 4, 0)
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [content]) VALUES (1, 1, N'新用户激活邮件', N'email_register', N'亲爱的【用户名】, 您好！<br />
<br />
感谢您注册方配网站管理系统的用户，您登录的邮箱帐号为 【邮箱帐号】<br />
请在三天内点击或将该链接复制到浏览器地址栏中访问，确认您的邮件地址并激活账号。<br />
【激活链接】<br />
(如果链接无法点击，请将它拷贝到浏览器的地址栏中)<br />
感谢您对我们的支持！<br />
<br />
-----------------------------------------------------------------------<br />
此为系统邮件，请勿回复。<br />
方配软件技术有限公司<br />
如有任何疑问，可访问 <a href="http://www.fangpage.com" target="_blank">http://www.fangpage.com</a> <br />
<p>
	<br />
</p>')
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [content]) VALUES (2, 2, N'手机认证短信', N'sms_cert', N'您的验证码是：【验证码】。请不要把验证码泄露给其他人。如非本人操作，可不用理会！')
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [content]) VALUES (3, 1, N'新用户激活成功！', N'email_registed', N'尊敬的【用户名】，您好！<br />
恭喜您成功注册账号 <span>【邮箱帐号】</span>！<br />
<p>
	为了让您正常愉快的享受我们的服务，请妥善保管您好的账号和密码，以免遭到泄漏被他人盗用。
</p>
<p>
	<br />
</p>
<p>
	<span>-----------------------------------------------------------------------</span><br />
<span>此为系统邮件，请勿回复。</span><br />
<span>方配软件技术有限公司</span><br />
<span>如有任何疑问，可访问 </span><a href="http://www.fangpage.com/" target="_blank">http://www.fangpage.com</a><span> </span> 
</p>')
INSERT [dbo].[FP_WMS_MsgTempInfo] ([id], [type], [name], [markup], [content]) VALUES (5, 1, N'重置密码邮件', N'email_resetpassword', N'亲爱的fangpage，你好：<br />
<br />
很高兴您使用方配WMS系统。<br />
<br />
请在30分钟内点击以下链接重置您的密码：<br />
【激活链接】<br />
(如果链接无法点击，请将它拷贝到浏览器的地址栏中)<br />
感谢您对我们的支持！<br />
<br />
-----------------------------------------------------------------------<br />
此为系统邮件，请勿回复。<br />
方配软件技术有限公司<br />
如有任何疑问，可访问 http://www.fangpage.com <br />
<br />')
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (1, N'栏目管理', N'admin/sort/sortmanage.aspx
admin/sort/sortadd.aspx', 1, 1, 0, 0, 1)
INSERT [dbo].[FP_WMS_Permission] ([id], [name], [flagpage], [isadd], [isupdate], [isdelete], [isaudit], [status]) VALUES (2, N'用户查看', N'admin/user/usermanage.aspx', 0, 0, 0, 0, 1)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload]) VALUES (1, N'系统管理员', N'', N'', N'1,5,4', N'1,2,3,22,41,5,6,7,9,30,36,42,21,34,31,23,32,13,14,15,16,17,18,43,8,19,20,40,10,11,12,25,26,27,28,39,29,44,45', N'1,2,3,4,5,6', N'', 0, 0, 0)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload]) VALUES (2, N'站点游客', N'', N'', N'', N'', N'', N'', 0, 0, 0)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload]) VALUES (3, N'等待验证', N'', NULL, NULL, NULL, NULL, N'', 0, NULL, NULL)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload]) VALUES (4, N'禁止访问', N'', NULL, NULL, NULL, NULL, N'', 0, NULL, NULL)
INSERT [dbo].[FP_WMS_RoleInfo] ([id], [name], [description], [desktopurl], [sorts], [menus], [desktop], [permission], [isadmin], [isupload], [isdownload]) VALUES (5, N'注册用户', N'', N'', N'', N'', N'', N'', 0, 1, 1)
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [appid], [name], [markup], [indexpage], [viewpage], [installpath]) VALUES (3, 2, N'题目管理', N'exam_question', N'admin/questionmanage.aspx', N'', N'exam')
INSERT [dbo].[FP_WMS_SortAppInfo] ([id], [appid], [name], [markup], [indexpage], [viewpage], [installpath]) VALUES (4, 2, N'考试管理', N'exam_paper', N'admin/exammanage.aspx', N'', N'exam')
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [description], [icon], [img], [subcounts], [types], [otherurl], [hidden], [posts]) VALUES (1, 1, 3, 1, 0, N'0,1', N'信息化考试题库', N'', N'', N'', N'', 3, N'', N'', 0, 330)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [description], [icon], [img], [subcounts], [types], [otherurl], [hidden], [posts]) VALUES (2, 2, 4, 1, 0, N'0,2', N'模拟考试', N'paper', N'', N'', N'', 0, N'', N'', 0, 0)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [description], [icon], [img], [subcounts], [types], [otherurl], [hidden], [posts]) VALUES (4, 1, 3, 1, 1, N'0,1,4', N'计算机网络基础', N'', N'', N'', N'', 0, N'', N'', 0, 105)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [description], [icon], [img], [subcounts], [types], [otherurl], [hidden], [posts]) VALUES (5, 1, 3, 2, 1, N'0,1,5', N'办公自动化', N'', N'', N'', N'', 0, N'', N'', 0, 224)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [description], [icon], [img], [subcounts], [types], [otherurl], [hidden], [posts]) VALUES (6, 1, 3, 2, 1, N'0,1,6', N'打字题', N'', N'', N'', N'', 0, N'', N'', 0, 1)
INSERT [dbo].[FP_WMS_SortInfo] ([id], [channelid], [appid], [display], [parentid], [parentlist], [name], [markup], [description], [icon], [img], [subcounts], [types], [otherurl], [hidden], [posts]) VALUES (7, 3, 4, 1, 0, N'0,7', N'信息化考试', N'', N'', N'', N'', 0, N'', N'', 0, 0)
INSERT [dbo].[FP_WMS_UserGrade] ([id], [name], [stars], [explower], [expupper], [description]) VALUES (1, N'文盲', 0, 0, 100, N'')
INSERT [dbo].[FP_WMS_UserGrade] ([id], [name], [stars], [explower], [expupper], [description]) VALUES (2, N'书童', 1, 100, 300, N'')
INSERT [dbo].[FP_WMS_UserGrade] ([id], [name], [stars], [explower], [expupper], [description]) VALUES (3, N'导师', 3, 300, 600, N'')
INSERT [dbo].[FP_WMS_UserGrade] ([id], [name], [stars], [explower], [expupper], [description]) VALUES (4, N'砖家', 4, 600, 1000, N'')
INSERT [dbo].[FP_WMS_UserGrade] ([id], [name], [stars], [explower], [expupper], [description]) VALUES (5, N'叫兽', 5, 1000, 100000, N'')
INSERT [dbo].[FP_WMS_UserInfo] ([id], [roleid], [departid], [gradeid], [type], [username], [password], [password2], [email], [isemail], [mobile], [ismobile], [realname], [isreal], [nickname], [avatar], [sex], [exp], [credits], [regip], [joindatetime], [onlinestate], [lastip], [lastvisit], [secques], [authstr], [authtime], [authflag], [vipdate], [bday], [bloodtype], [height], [weight], [married], [education], [school], [job], [position], [politics], [company], [nation], [phone], [qq], [blog], [province], [city], [address], [zipcode], [note], [idcard], [isidcard], [idcardface], [idcardback], [idcardper], [idcarvalidity], [content]) VALUES (1, 1, 0, 1, NULL, N'admin', N'e10adc3949ba59abbe56e057f20f883e', N'', N'12677206@qq.com', 1, N'13481092810', 1, N'方配', 0, N'方配', N'', -1, 0, 0, N'', CAST(0x0000A31900000000 AS DateTime), 1, N'0.0.0.0', CAST(0x0000AA1F00BF6418 AS DateTime), N'', N'', CAST(0x0000A31900000000 AS DateTime), 0, N'', N',,', N'', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', CAST(0x0000A3E1012F3C84 AS DateTime), N'')
INSERT [dbo].[FP_WMS_UserInfo] ([id], [roleid], [departid], [gradeid], [type], [username], [password], [password2], [email], [isemail], [mobile], [ismobile], [realname], [isreal], [nickname], [avatar], [sex], [exp], [credits], [regip], [joindatetime], [onlinestate], [lastip], [lastvisit], [secques], [authstr], [authtime], [authflag], [vipdate], [bday], [bloodtype], [height], [weight], [married], [education], [school], [job], [position], [politics], [company], [nation], [phone], [qq], [blog], [province], [city], [address], [zipcode], [note], [idcard], [isidcard], [idcardface], [idcardback], [idcardper], [idcarvalidity], [content]) VALUES (2, 5, 1, 1, NULL, N'test', N'e10adc3949ba59abbe56e057f20f883e', N'', N'', 0, N'', 0, N'测试', 0, N'测试', N'', -1, 0, 0, N'127.0.0.1', CAST(0x0000A3E80176E05C AS DateTime), 0, N'127.0.0.1', CAST(0x0000A43300B1E310 AS DateTime), N'', N'', CAST(0x0000A3E80176E05C AS DateTime), 0, N'', N',,', N'', N'', N'', 0, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', 0, N'', N'', N'', CAST(0x0000A3E80176E05C AS DateTime), N'')
USE [master]
GO
ALTER DATABASE [FP_Exam] SET  READ_WRITE 
GO
