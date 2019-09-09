USE [ratemskill]
GO
/****** Object:  Table [dbo].[tbtec]    Script Date: 07/12/2017 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbtec](
	[teccod] [int] IDENTITY(1,1) NOT NULL,
	[tecnam] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[teccod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbtec] ON
INSERT [dbo].[tbtec] ([teccod], [tecnam]) VALUES (1, N'Asp.Net')
INSERT [dbo].[tbtec] ([teccod], [tecnam]) VALUES (2, N'PHP')
INSERT [dbo].[tbtec] ([teccod], [tecnam]) VALUES (3, N'Java')
INSERT [dbo].[tbtec] ([teccod], [tecnam]) VALUES (4, N'SQL Server')
SET IDENTITY_INSERT [dbo].[tbtec] OFF
/****** Object:  Table [dbo].[tbreg]    Script Date: 07/12/2017 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbreg](
	[regcod] [int] IDENTITY(1,1) NOT NULL,
	[regeml] [varchar](50) NULL,
	[regpwd] [varchar](50) NULL,
	[regdat] [datetime] NULL,
	[regsts] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[regcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [AK_Table_aa] UNIQUE NONCLUSTERED 
(
	[regeml] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbreg] ON
INSERT [dbo].[tbreg] ([regcod], [regeml], [regpwd], [regdat], [regsts]) VALUES (1, N'abc@gmail.com', N'xyz123', CAST(0x0000A7A8009BFD7A AS DateTime), N'U')
INSERT [dbo].[tbreg] ([regcod], [regeml], [regpwd], [regdat], [regsts]) VALUES (2, N'admin@rateskills.com', N'admin', CAST(0x0000A12500000000 AS DateTime), N'A')
INSERT [dbo].[tbreg] ([regcod], [regeml], [regpwd], [regdat], [regsts]) VALUES (4, N'abc', N'aa', CAST(0x0000A7AD0134B3BD AS DateTime), N'U')
INSERT [dbo].[tbreg] ([regcod], [regeml], [regpwd], [regdat], [regsts]) VALUES (6, N'', N'', CAST(0x0000A7AE00B08212 AS DateTime), N'U')
SET IDENTITY_INSERT [dbo].[tbreg] OFF
/****** Object:  Table [dbo].[tbqst]    Script Date: 07/12/2017 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbqst](
	[qstcod] [int] IDENTITY(1,1) NOT NULL,
	[qstteccod] [int] NULL,
	[qstdsc] [nvarchar](2000) NULL,
	[qstlvl] [char](1) NULL,
	[qstdat] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[qstcod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbqst] ON
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (1, 1, N'What Is Asp', N'B', CAST(0x0000A7AD01175DE8 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (2, 1, N'What is C# ', N'B', CAST(0x0000A7AD01195ADC AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (3, 2, N'What is PHP?


', N'B', CAST(0x0000A7AD011AD3B0 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (4, 2, N'Why use PHP?', N'B', CAST(0x0000A7AD011C3732 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (5, 3, N'What is Jvm', N'B', CAST(0x0000A7AD011EA3F2 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (6, 3, N'What is applet', N'B', CAST(0x0000A7AD01215EE7 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (7, 4, N'What Is Sql', N'B', CAST(0x0000A7AD0122EA1A AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (8, 1, N'What is MVC?', N'B', CAST(0x0000A7AD012478AD AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (9, 1, N'What is class', N'B', CAST(0x0000A7AD012FC873 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (10, 1, N'how many types of data access techniques?', N'B', CAST(0x0000A7AE00ABA6C8 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (11, 2, N'what is joomla?', N'B', CAST(0x0000A7AE00AC905B AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (12, 2, N'what is zend?', N'B', CAST(0x0000A7AE00AD8524 AS DateTime))
INSERT [dbo].[tbqst] ([qstcod], [qstteccod], [qstdsc], [qstlvl], [qstdat]) VALUES (13, 2, N'What is MVC?', N'B', CAST(0x0000A7AE00AE498F AS DateTime))
SET IDENTITY_INSERT [dbo].[tbqst] OFF
/****** Object:  Table [dbo].[tbans]    Script Date: 07/12/2017 18:07:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbans](
	[anscod] [int] IDENTITY(1,1) NOT NULL,
	[ansqstcod] [int] NULL,
	[ansdsc] [nvarchar](2000) NULL,
	[anssts] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[anscod] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbans] ON
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (1, 1, N'Active Server Page (ASP) ', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (2, 1, N'Continue Reading About Active Server Page ', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (3, 1, N'∙The ASP Resource Index is a comprehensive starting point.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (4, 1, N'

application service provider (ASP) ', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (5, 2, N'(pronounced "C-sharp") is an object-oriented programming language from Microsoft that aims to combine the computing power of C++ ', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (6, 2, N'Visual Basic .NET (VB.NET) is a multi-paradigm, high level programming language, implemented on the .NET Framework. Microsoft launched VB.NET in 2002 as the successor to its original Visual Basic language.


', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (7, 2, N'Visual Basic .NET (VB.NET) is a multi-paradigm', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (8, 2, N'F# is a strongly typed, multi-paradigm programming language that encompasses functional, imperative', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (9, 3, N'
PHP is a server-side scripting language designed for web development but also used as a general-purpose programming language.', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (10, 3, N'You should go to the PHP Bug Database and make sure the bug isn''t a known bug. If you don''t see it in the database', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (11, 3, N'The PHP development team announces the immediate availability of PHP 7.1.7. This is a security release with several bug fixes included', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (12, 3, N'There are no user contributed notes for this page.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (13, 4, N'PHP – Hypertext Preprocessor (earlier, it was Personal Home Page )
Read more: http://fullformdirectory.in/php.html#ixzz4mWU6zD3Q
', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (14, 4, N'PHP is a general-purpose scripting language that is especially suited to server-sideweb development, in which case PHP generally runs on a web server. Any PHP code in a requested file is executed by the PHP runtime', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (15, 4, N'There can be hundreds of reasons for such phenomenal interest among the programmer community. Here are just ten of them, not in any particular order.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (16, 4, N'The brainchild of James Gosling, Java (1995) survived the vicissitudes of time and technology and still reigns supreme in the realm of programming languages', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (17, 5, N'instance of a JVM is an implementation running in a process that executes a computer program compiled into Java bytecode.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (18, 5, N'Java virtual machine', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (19, 5, N'Java Runtime Environment (JRE)', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (20, 5, N'The Oracle Corporation, which owns the Java trademark', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (21, 6, N'If you are building an embedded or consumer device and would like to include Java, please contact Oracle for more information on including Java in your device.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (22, 6, N'The Java Runtime Environment (JRE) is what you get when you download Java software. The JRE consists of the Java Virtual Machine (JVM), Java platform core classes, and supporting Java platform libraries', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (23, 6, N'An applet is a small Internet-based program written in Java, a programming language for the Web, which can be downloaded by any computer. The applet is also able to run in HTML. The applet is usually embedded in an HTML page on a Web site and can be executed from within a browser.', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (24, 6, N'The Java Plug-in software is a component of the Java Runtime Environment (JRE). ', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (25, 7, N'SQL, a quirky name for a maligned technology, but one that remains important to this day. ', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (26, 7, N'SQL (Structured Query Language) is a standardized programming language used for managing relational databases and performing various operations on the data in them. ', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (27, 7, N'SQL commands are divided into several different types, among them data manipulation language (DML) and data definition language (DDL) statements, transaction controls and security measures', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (28, 7, N'More than a dozen SQL-on-Hadoop tools have become available through Hadoop distribution providers and other vendors', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (29, 8, N'Model–view–controller (MVC) is a software architectural pattern for implementing user interfaces on computers. It divides a given software application into three interconnected parts', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (30, 8, N'Much of the CodeIgniter configuration is done by convention, for instance putting models in a "models" folder', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (31, 8, N'CodeIgniter is a PHP framework to develop web based application. It supports MVC architecture.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (32, 8, N'Learning to program using MVC can be a complete paradigm shift for some, but is well worth the struggle', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (33, 9, N'it is a object', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (34, 9, N'class is a group of collection of object', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (35, 9, N'class is a data member', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (36, 9, N'class is a data member and member function', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (37, 10, N'five', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (38, 10, N'four', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (39, 10, N'three', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (40, 10, N'one', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (42, 11, N'Joomla is an open source platform on which Web sites and applications can be created. It is a content management system (CMS) which connects your site to a MySQLi, MySQL, or PostgreSQL database in order to make content management and delivery easier on both the site manager and visitor', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (43, 11, N'management and delivery easier on both the site manager and visitor', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (44, 11, N'the name of a methodology or design pattern for successfully and efficiently relating the user interface to underlying data models.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (45, 11, N' It divides a given application into three ...', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (46, 12, N'It can be used to develop web applications and services using PHP 5.6+, and provides 100% object-oriented code using a broad spectrum of language features. Zend Framework uses Composer as a package dependency manager; PHPUnit to test all packages; and Travis CI as a Continuous Integration service.', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (47, 12, N'It can be used to develop web applications and services using PHP 5.6+, and provides 100% object-oriented code using a broad spectrum of language features. Zend Framework uses Composer as a package dependency manager', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (48, 12, N'PHPUnit to test all packages; and Travis CI as a Continuous Integration service.', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (49, 12, N' Framework project official website. ... Engineered with performance tuning in mind', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (50, 13, N'Model View Controller.....', N'T')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (51, 13, N'Model Visiting controller....', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (52, 13, N'Modem View Controller.....', N'F')
INSERT [dbo].[tbans] ([anscod], [ansqstcod], [ansdsc], [anssts]) VALUES (53, 13, N'Model View Contiune......', N'F')
SET IDENTITY_INSERT [dbo].[tbans] OFF
/****** Object:  StoredProcedure [dbo].[updtec]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updtec]
	@teccod int,
	@tecnam varchar(100)
AS
	update tbtec set tecnam=@tecnam where teccod=@teccod
GO
/****** Object:  StoredProcedure [dbo].[updreg]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updreg]
  @regcod int,
  @regeml varchar(50),
  @regpwd varchar(50),
  @regdat datetime,
  @regsts char(1)
	AS
	update tbreg set regeml=@regeml,regpwd=@regpwd,regdat=@regdat,regsts=@regsts where regcod=@regcod
GO
/****** Object:  StoredProcedure [dbo].[updqst]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updqst]
    @qstcod int,
	@qstteccod int,
	@qstdsc nvarchar(2000),
	@qstlvl char(1),
	@qstdat datetime
AS
update tbqst set qstteccod=@qstteccod,qstdsc=@qstdsc,qstlvl=@qstlvl,qstdat=@qstdat where qstcod=@qstcod
GO
/****** Object:  StoredProcedure [dbo].[updans]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updans]
 @anscod int,
 @ansqstcod int,
 @ansdsc nvarchar(2000),
 @anssts char(1)
AS
update tbans set ansqstcod=@ansqstcod,ansdsc=@ansdsc,anssts=@anssts where anscod=@anscod
GO
/****** Object:  StoredProcedure [dbo].[logincheck]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[logincheck]
	@eml varchar(50),
	@pwd varchar(50),
	@cod int output,
	@rol char(1) output
AS
declare @actpwd varchar(50);
select @actpwd=regpwd from tbreg where regeml=@eml;
if @actpwd is null 
begin
	set @cod=-1;
	set @rol='N';
end
else
begin
  if @actpwd=@pwd
  begin
    select @cod=regcod,@rol=regsts from tbreg where regeml=@eml;
  end
  else
  begin
    set @cod=-2;
	set @rol='N';
  end
end
GO
/****** Object:  StoredProcedure [dbo].[instec]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[instec]
	@tecnam varchar(100)
	
AS
insert tbtec values(@tecnam)
GO
/****** Object:  StoredProcedure [dbo].[insreg]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insreg]
  @regeml varchar(50),
  @regpwd varchar(50),
  @regdat datetime,
  @regsts char(1)
	AS
	insert tbreg values(@regeml,@regpwd,@regdat,@regsts)
GO
/****** Object:  StoredProcedure [dbo].[insqst]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insqst]
	@qstteccod int,
	@qstdsc nvarchar(2000),
	@qstlvl char(1),
	@qstdat datetime
AS
insert tbqst values(@qstteccod,@qstdsc,@qstlvl,@qstdat)
GO
/****** Object:  StoredProcedure [dbo].[insans]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insans]
 @ansqstcod int,
 @ansdsc nvarchar(2000),
 @anssts char(1)
AS
insert tbans values(@ansqstcod,@ansdsc,@anssts)
GO
/****** Object:  StoredProcedure [dbo].[fndtec]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndtec]
	@teccod int
	
AS
	select * from tbtec where teccod=@teccod
GO
/****** Object:  StoredProcedure [dbo].[fndreg]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndreg]
	@regcod int
AS
	select * from tbreg where regcod=@regcod
GO
/****** Object:  StoredProcedure [dbo].[fndqst]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndqst]
	@qstcod int
	AS
	select * from tbqst where qstcod=@qstcod
GO
/****** Object:  StoredProcedure [dbo].[fndans]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[fndans]
	@anscod int
	AS
  select * from tbans where anscod=@anscod
GO
/****** Object:  StoredProcedure [dbo].[dsptec]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dsptec]
	AS
	select * from tbtec
GO
/****** Object:  StoredProcedure [dbo].[dspreg]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspreg]
	AS
select * from tbreg
GO
/****** Object:  StoredProcedure [dbo].[dspqstbyteclvl]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspqstbyteclvl]
	@teccod int,
	@lvl char(1)
AS
select * from tbqst where qstteccod=@teccod and qstlvl=@lvl
order by qstdat desc;
GO
/****** Object:  StoredProcedure [dbo].[dspqst]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspqst]
(
	@teccod int
)	
AS
select * from tbqst where qstteccod=@teccod order by qstdat desc
GO
/****** Object:  StoredProcedure [dbo].[dspans]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[dspans]
(
	@qstcod int
)
AS
select * from tbans where ansqstcod=@qstcod
GO
/****** Object:  StoredProcedure [dbo].[deltec]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[deltec]
	@teccod int
	AS
  delete from tbtec where teccod=@teccod
GO
/****** Object:  StoredProcedure [dbo].[delreg]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delreg]
	@regcod int
	AS
	delete from tbreg where regcod=@regcod
GO
/****** Object:  StoredProcedure [dbo].[delqst]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delqst]
	@qstcod int
	
AS
	delete from tbqst where qstcod=@qstcod
GO
/****** Object:  StoredProcedure [dbo].[delans]    Script Date: 07/12/2017 18:07:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[delans]
	@anscod int
	AS
	delete from tbans where anscod=@anscod
GO
