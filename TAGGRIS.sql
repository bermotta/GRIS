USE [GRIS]
GO
/****** Object:  Table [dbo].[dados_pessoal_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
DROP TABLE [dbo].[dados_pessoal_GRIS]
GO
/****** Object:  Table [dbo].[dados_pessoais_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
DROP TABLE [dbo].[dados_pessoais_GRIS]
GO
/****** Object:  Table [dbo].[dados_finais_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
DROP TABLE [dbo].[dados_finais_GRIS]
GO
/****** Object:  Table [dbo].[dados_curso_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
DROP TABLE [dbo].[dados_curso_GRIS]
GO
/****** Object:  Table [dbo].[dados_curso_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dados_curso_GRIS](
	[Id_dados] [int] IDENTITY(1,1) NOT NULL,
	[Curso] [varchar](max) NOT NULL,
	[Campus] [varchar](max) NULL,
	[Id_pessoal] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dados_finais_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dados_finais_GRIS](
	[Id_finais] [int] IDENTITY(1,1) NOT NULL,
	[email] [varchar](max) NOT NULL,
	[area] [varchar](max) NOT NULL,
	[Id_pessoal] [int] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dados_pessoais_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dados_pessoais_GRIS](
	[Id_pessoal] [int] IDENTITY(1,1) NOT NULL,
	[DRE] [int] NOT NULL,
	[Nome] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[dados_pessoal_GRIS]    Script Date: 19/02/2020 15:30:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[dados_pessoal_GRIS](
	[Id_pessoal] [int] IDENTITY(1,1) NOT NULL,
	[DRE] [int] NOT NULL,
	[Nome] [varchar](max) NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[dados_curso_GRIS] ON 
GO
INSERT [dbo].[dados_curso_GRIS] ([Id_dados], [Curso], [Campus], [Id_pessoal]) VALUES (1, N'CIENCIAS DA COMPUTACAO', N'FUNDAO', 1)
GO
INSERT [dbo].[dados_curso_GRIS] ([Id_dados], [Curso], [Campus], [Id_pessoal]) VALUES (2, N'CIENCIAS DA COMPUTACAO', N'FUNDAO', 2)
GO
INSERT [dbo].[dados_curso_GRIS] ([Id_dados], [Curso], [Campus], [Id_pessoal]) VALUES (3, N'CIENCIAS DA COMPUTACAO', N'FUNDAO', 2)
GO
SET IDENTITY_INSERT [dbo].[dados_curso_GRIS] OFF
GO
SET IDENTITY_INSERT [dbo].[dados_finais_GRIS] ON 
GO
INSERT [dbo].[dados_finais_GRIS] ([Id_finais], [email], [area], [Id_pessoal]) VALUES (1, N'BERNARDO.SCMOTTA@GMAIL.COM', N' CTF', 2)
GO
SET IDENTITY_INSERT [dbo].[dados_finais_GRIS] OFF
GO
SET IDENTITY_INSERT [dbo].[dados_pessoais_GRIS] ON 
GO
INSERT [dbo].[dados_pessoais_GRIS] ([Id_pessoal], [DRE], [Nome]) VALUES (1, 123123123, N'Bernardo de Souza Correia Motta')
GO
INSERT [dbo].[dados_pessoais_GRIS] ([Id_pessoal], [DRE], [Nome]) VALUES (2, 123123123, N'Bernardo de Souza Correia Motta')
GO
INSERT [dbo].[dados_pessoais_GRIS] ([Id_pessoal], [DRE], [Nome]) VALUES (3, 123123123, N'Bernardo de Souza Correia Motta')
GO
SET IDENTITY_INSERT [dbo].[dados_pessoais_GRIS] OFF
GO
SET IDENTITY_INSERT [dbo].[dados_pessoal_GRIS] ON 
GO
INSERT [dbo].[dados_pessoal_GRIS] ([Id_pessoal], [DRE], [Nome]) VALUES (1, 123123123, N'Bernardo de Souza Correia Motta')
GO
SET IDENTITY_INSERT [dbo].[dados_pessoal_GRIS] OFF
GO
SELECT *FROM [dados_pessoal_GRIS] A
LEFT OUTER JOIN [dados_curso_GRIS] B
ON A.Id_pessoal = B.Id_pessoal
LEFT OUTER JOIN [dados_finais_GRIS] C
ON C.Id_pessoal = A.Id_pessoal
