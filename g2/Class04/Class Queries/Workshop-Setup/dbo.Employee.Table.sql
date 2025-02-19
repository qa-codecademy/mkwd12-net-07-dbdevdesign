USE [SEDC]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 5/23/2024 6:22:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](100) NOT NULL,
	[LastName] [nvarchar](100) NOT NULL,
	[DateOfBirth] [date] NULL,
	[Gender] [nchar](1) NULL,
	[HireDate] [date] NULL,
	[NationalIdNumber] [nvarchar](20) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (1, N'Aleksandar', N'Stojanovski', CAST(N'1980-02-01' AS Date), N'M', CAST(N'1990-03-01' AS Date), N'7137597')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (2, N'Ana', N'Stojanovski', CAST(N'1980-03-01' AS Date), N'F', CAST(N'1990-05-01' AS Date), N'7139462')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (3, N'Borce', N'Stojanovski', CAST(N'1980-04-01' AS Date), N'M', CAST(N'1990-07-01' AS Date), N'7141326')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (4, N'Biljana', N'Stojanovski', CAST(N'1980-05-01' AS Date), N'F', CAST(N'1990-09-01' AS Date), N'7143190')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (5, N'Viktor', N'Stojanovski', CAST(N'1980-06-01' AS Date), N'M', CAST(N'1990-11-01' AS Date), N'7145055')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (6, N'Valentina', N'Stojanovski', CAST(N'1980-07-01' AS Date), N'F', CAST(N'1991-01-01' AS Date), N'7146919')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (7, N'Goran', N'Stojanovski', CAST(N'1980-08-01' AS Date), N'M', CAST(N'1991-03-01' AS Date), N'7148783')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (8, N'Gordana', N'Stojanovski', CAST(N'1980-09-01' AS Date), N'F', CAST(N'1991-05-01' AS Date), N'7150647')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (9, N'Maja', N'Stojanovski', CAST(N'1980-10-01' AS Date), N'F', CAST(N'1991-07-01' AS Date), N'7152512')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (10, N'Marko', N'Stojanovski', CAST(N'1980-11-01' AS Date), N'M', CAST(N'1991-09-01' AS Date), N'7154376')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (11, N'Aleksandar', N'Nikolovski', CAST(N'1980-12-01' AS Date), N'M', CAST(N'1991-11-01' AS Date), N'7156240')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (12, N'Ana', N'Nikolovski', CAST(N'1981-01-01' AS Date), N'F', CAST(N'1992-01-01' AS Date), N'7158105')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (13, N'Borce', N'Nikolovski', CAST(N'1981-02-01' AS Date), N'M', CAST(N'1992-03-01' AS Date), N'7159969')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (14, N'Biljana', N'Nikolovski', CAST(N'1981-03-01' AS Date), N'F', CAST(N'1992-05-01' AS Date), N'7161833')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (15, N'Viktor', N'Nikolovski', CAST(N'1981-04-01' AS Date), N'M', CAST(N'1992-07-01' AS Date), N'7163698')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (16, N'Valentina', N'Nikolovski', CAST(N'1981-05-01' AS Date), N'F', CAST(N'1992-09-01' AS Date), N'7165562')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (17, N'Goran', N'Nikolovski', CAST(N'1981-06-01' AS Date), N'M', CAST(N'1992-11-01' AS Date), N'7167426')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (18, N'Gordana', N'Nikolovski', CAST(N'1981-07-01' AS Date), N'F', CAST(N'1993-01-01' AS Date), N'7169290')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (19, N'Maja', N'Nikolovski', CAST(N'1981-08-01' AS Date), N'F', CAST(N'1993-03-01' AS Date), N'7171155')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (20, N'Marko', N'Nikolovski', CAST(N'1981-09-01' AS Date), N'M', CAST(N'1993-05-01' AS Date), N'7173019')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (21, N'Aleksandar', N'Zdravevski', CAST(N'1981-10-01' AS Date), N'M', CAST(N'1993-07-01' AS Date), N'7174883')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (22, N'Ana', N'Zdravevski', CAST(N'1981-11-01' AS Date), N'F', CAST(N'1993-09-01' AS Date), N'7176748')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (23, N'Borce', N'Zdravevski', CAST(N'1981-12-01' AS Date), N'M', CAST(N'1993-11-01' AS Date), N'7178612')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (24, N'Biljana', N'Zdravevski', CAST(N'1982-01-01' AS Date), N'F', CAST(N'1994-01-01' AS Date), N'7180476')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (25, N'Viktor', N'Zdravevski', CAST(N'1982-02-01' AS Date), N'M', CAST(N'1994-03-01' AS Date), N'7182341')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (26, N'Valentina', N'Zdravevski', CAST(N'1982-03-01' AS Date), N'F', CAST(N'1994-05-01' AS Date), N'7184205')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (27, N'Goran', N'Zdravevski', CAST(N'1982-04-01' AS Date), N'M', CAST(N'1994-07-01' AS Date), N'7186069')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (28, N'Gordana', N'Zdravevski', CAST(N'1982-05-01' AS Date), N'F', CAST(N'1994-09-01' AS Date), N'7187933')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (29, N'Maja', N'Zdravevski', CAST(N'1982-06-01' AS Date), N'F', CAST(N'1994-11-01' AS Date), N'7189798')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (30, N'Marko', N'Zdravevski', CAST(N'1982-07-01' AS Date), N'M', CAST(N'1995-01-01' AS Date), N'7191662')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (31, N'Aleksandar', N'Ivanovski', CAST(N'1982-08-01' AS Date), N'M', CAST(N'1995-03-01' AS Date), N'7193526')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (32, N'Ana', N'Ivanovski', CAST(N'1982-09-01' AS Date), N'F', CAST(N'1995-05-01' AS Date), N'7195391')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (33, N'Borce', N'Ivanovski', CAST(N'1982-10-01' AS Date), N'M', CAST(N'1995-07-01' AS Date), N'7197255')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (34, N'Biljana', N'Ivanovski', CAST(N'1982-11-01' AS Date), N'F', CAST(N'1995-09-01' AS Date), N'7199119')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (35, N'Viktor', N'Ivanovski', CAST(N'1982-12-01' AS Date), N'M', CAST(N'1995-11-01' AS Date), N'7200984')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (36, N'Valentina', N'Ivanovski', CAST(N'1983-01-01' AS Date), N'F', CAST(N'1996-01-01' AS Date), N'7202848')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (37, N'Goran', N'Ivanovski', CAST(N'1983-02-01' AS Date), N'M', CAST(N'1996-03-01' AS Date), N'7204712')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (38, N'Gordana', N'Ivanovski', CAST(N'1983-03-01' AS Date), N'F', CAST(N'1996-05-01' AS Date), N'7206576')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (39, N'Maja', N'Ivanovski', CAST(N'1983-04-01' AS Date), N'F', CAST(N'1996-07-01' AS Date), N'7208441')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (40, N'Marko', N'Ivanovski', CAST(N'1983-05-01' AS Date), N'M', CAST(N'1996-09-01' AS Date), N'7210305')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (41, N'Aleksandar', N'Popovski', CAST(N'1983-06-01' AS Date), N'M', CAST(N'1996-11-01' AS Date), N'7212169')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (42, N'Ana', N'Popovski', CAST(N'1983-07-01' AS Date), N'F', CAST(N'1997-01-01' AS Date), N'7214034')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (43, N'Borce', N'Popovski', CAST(N'1983-08-01' AS Date), N'M', CAST(N'1997-03-01' AS Date), N'7215898')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (44, N'Biljana', N'Popovski', CAST(N'1983-09-01' AS Date), N'F', CAST(N'1997-05-01' AS Date), N'7217762')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (45, N'Viktor', N'Popovski', CAST(N'1983-10-01' AS Date), N'M', CAST(N'1997-07-01' AS Date), N'7219626')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (46, N'Valentina', N'Popovski', CAST(N'1983-11-01' AS Date), N'F', CAST(N'1997-09-01' AS Date), N'7221491')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (47, N'Goran', N'Popovski', CAST(N'1983-12-01' AS Date), N'M', CAST(N'1997-11-01' AS Date), N'7223355')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (48, N'Gordana', N'Popovski', CAST(N'1984-01-01' AS Date), N'F', CAST(N'1998-01-01' AS Date), N'7225219')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (49, N'Maja', N'Popovski', CAST(N'1984-02-01' AS Date), N'F', CAST(N'1998-03-01' AS Date), N'7227084')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (50, N'Marko', N'Popovski', CAST(N'1984-03-01' AS Date), N'M', CAST(N'1998-05-01' AS Date), N'7228948')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (51, N'Aleksandar', N'Mitrevski', CAST(N'1984-04-01' AS Date), N'M', CAST(N'1998-07-01' AS Date), N'7230812')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (52, N'Ana', N'Mitrevski', CAST(N'1984-05-01' AS Date), N'F', CAST(N'1998-09-01' AS Date), N'7232677')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (53, N'Borce', N'Mitrevski', CAST(N'1984-06-01' AS Date), N'M', CAST(N'1998-11-01' AS Date), N'7234541')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (54, N'Biljana', N'Mitrevski', CAST(N'1984-07-01' AS Date), N'F', CAST(N'1999-01-01' AS Date), N'7236405')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (55, N'Viktor', N'Mitrevski', CAST(N'1984-08-01' AS Date), N'M', CAST(N'1999-03-01' AS Date), N'7238269')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (56, N'Valentina', N'Mitrevski', CAST(N'1984-09-01' AS Date), N'F', CAST(N'1999-05-01' AS Date), N'7240134')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (57, N'Goran', N'Mitrevski', CAST(N'1984-10-01' AS Date), N'M', CAST(N'1999-07-01' AS Date), N'7241998')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (58, N'Gordana', N'Mitrevski', CAST(N'1984-11-01' AS Date), N'F', CAST(N'1999-09-01' AS Date), N'7243862')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (59, N'Maja', N'Mitrevski', CAST(N'1984-12-01' AS Date), N'F', CAST(N'1999-11-01' AS Date), N'7245727')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (60, N'Marko', N'Mitrevski', CAST(N'1985-01-01' AS Date), N'M', CAST(N'2000-01-01' AS Date), N'7247591')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (61, N'Aleksandar', N'Stoilov', CAST(N'1985-02-01' AS Date), N'M', CAST(N'2000-03-01' AS Date), N'7249455')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (62, N'Ana', N'Stoilov', CAST(N'1985-03-01' AS Date), N'F', CAST(N'2000-05-01' AS Date), N'7251320')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (63, N'Borce', N'Stoilov', CAST(N'1985-04-01' AS Date), N'M', CAST(N'2000-07-01' AS Date), N'7253184')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (64, N'Biljana', N'Stoilov', CAST(N'1985-05-01' AS Date), N'F', CAST(N'2000-09-01' AS Date), N'7255048')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (65, N'Viktor', N'Stoilov', CAST(N'1985-06-01' AS Date), N'M', CAST(N'2000-11-01' AS Date), N'7256912')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (66, N'Valentina', N'Stoilov', CAST(N'1985-07-01' AS Date), N'F', CAST(N'2001-01-01' AS Date), N'7258777')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (67, N'Goran', N'Stoilov', CAST(N'1985-08-01' AS Date), N'M', CAST(N'2001-03-01' AS Date), N'7260641')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (68, N'Gordana', N'Stoilov', CAST(N'1985-09-01' AS Date), N'F', CAST(N'2001-05-01' AS Date), N'7262505')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (69, N'Maja', N'Stoilov', CAST(N'1985-10-01' AS Date), N'F', CAST(N'2001-07-01' AS Date), N'7264370')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (70, N'Marko', N'Stoilov', CAST(N'1985-11-01' AS Date), N'M', CAST(N'2001-09-01' AS Date), N'7266234')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (71, N'Aleksandar', N'Pandev', CAST(N'1985-12-01' AS Date), N'M', CAST(N'2001-11-01' AS Date), N'7268098')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (72, N'Ana', N'Pandev', CAST(N'1986-01-01' AS Date), N'F', CAST(N'2002-01-01' AS Date), N'7269962')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (73, N'Borce', N'Pandev', CAST(N'1986-02-01' AS Date), N'M', CAST(N'2002-03-01' AS Date), N'7271827')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (74, N'Biljana', N'Pandev', CAST(N'1986-03-01' AS Date), N'F', CAST(N'2002-05-01' AS Date), N'7273691')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (75, N'Viktor', N'Pandev', CAST(N'1986-04-01' AS Date), N'M', CAST(N'2002-07-01' AS Date), N'7275555')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (76, N'Valentina', N'Pandev', CAST(N'1986-05-01' AS Date), N'F', CAST(N'2002-09-01' AS Date), N'7277420')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (77, N'Goran', N'Pandev', CAST(N'1986-06-01' AS Date), N'M', CAST(N'2002-11-01' AS Date), N'7279284')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (78, N'Gordana', N'Pandev', CAST(N'1986-07-01' AS Date), N'F', CAST(N'2003-01-01' AS Date), N'7281148')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (79, N'Maja', N'Pandev', CAST(N'1986-08-01' AS Date), N'F', CAST(N'2003-03-01' AS Date), N'7283013')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (80, N'Marko', N'Pandev', CAST(N'1986-09-01' AS Date), N'M', CAST(N'2003-05-01' AS Date), N'7284877')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (81, N'Aleksandar', N'Todorov', CAST(N'1986-10-01' AS Date), N'M', CAST(N'2003-07-01' AS Date), N'7286741')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (82, N'Ana', N'Todorov', CAST(N'1986-11-01' AS Date), N'F', CAST(N'2003-09-01' AS Date), N'7288605')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (83, N'Borce', N'Todorov', CAST(N'1986-12-01' AS Date), N'M', CAST(N'2003-11-01' AS Date), N'7290470')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (84, N'Biljana', N'Todorov', CAST(N'1987-01-01' AS Date), N'F', CAST(N'2004-01-01' AS Date), N'7292334')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (85, N'Viktor', N'Todorov', CAST(N'1987-02-01' AS Date), N'M', CAST(N'2004-03-01' AS Date), N'7294198')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (86, N'Valentina', N'Todorov', CAST(N'1987-03-01' AS Date), N'F', CAST(N'2004-05-01' AS Date), N'7296063')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (87, N'Goran', N'Todorov', CAST(N'1987-04-01' AS Date), N'M', CAST(N'2004-07-01' AS Date), N'7297927')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (88, N'Gordana', N'Todorov', CAST(N'1987-05-01' AS Date), N'F', CAST(N'2004-09-01' AS Date), N'7299791')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (89, N'Maja', N'Todorov', CAST(N'1987-06-01' AS Date), N'F', CAST(N'2004-11-01' AS Date), N'7301656')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (90, N'Marko', N'Todorov', CAST(N'1987-07-01' AS Date), N'M', CAST(N'2005-01-01' AS Date), N'7303520')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (91, N'Aleksandar', N'Trajanov', CAST(N'1987-08-01' AS Date), N'M', CAST(N'2005-03-01' AS Date), N'7305384')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (92, N'Ana', N'Trajanov', CAST(N'1987-09-01' AS Date), N'F', CAST(N'2005-05-01' AS Date), N'7307248')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (93, N'Borce', N'Trajanov', CAST(N'1987-10-01' AS Date), N'M', CAST(N'2005-07-01' AS Date), N'7309113')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (94, N'Biljana', N'Trajanov', CAST(N'1987-11-01' AS Date), N'F', CAST(N'2005-09-01' AS Date), N'7310977')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (95, N'Viktor', N'Trajanov', CAST(N'1987-12-01' AS Date), N'M', CAST(N'2005-11-01' AS Date), N'7312841')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (96, N'Valentina', N'Trajanov', CAST(N'1988-01-01' AS Date), N'F', CAST(N'2006-01-01' AS Date), N'7314706')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (97, N'Goran', N'Trajanov', CAST(N'1988-02-01' AS Date), N'M', CAST(N'2006-03-01' AS Date), N'7316570')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (98, N'Gordana', N'Trajanov', CAST(N'1988-03-01' AS Date), N'F', CAST(N'2006-05-01' AS Date), N'7318434')
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (99, N'Maja', N'Trajanov', CAST(N'1988-04-01' AS Date), N'F', CAST(N'2006-07-01' AS Date), N'7320299')
GO
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [DateOfBirth], [Gender], [HireDate], [NationalIdNumber]) VALUES (100, N'Marko', N'Trajanov', CAST(N'1988-05-01' AS Date), N'M', CAST(N'2006-09-01' AS Date), N'7322163')
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
