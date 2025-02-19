USE [SEDC]
GO
/****** Object:  Table [dbo].[BusinessEntity]    Script Date: 5/23/2024 6:22:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessEntity](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Region] [nvarchar](1000) NULL,
	[Zipcode] [nvarchar](10) NULL,
	[Size] [nvarchar](10) NULL,
 CONSTRAINT [PK_BusinessEntity] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[BusinessEntity] ON 

INSERT [dbo].[BusinessEntity] ([Id], [Name], [Region], [Zipcode], [Size]) VALUES (1, N'Vitalia Skopje', N'Skopski', N'1000', N'Large')
INSERT [dbo].[BusinessEntity] ([Id], [Name], [Region], [Zipcode], [Size]) VALUES (2, N'Vitalia Bitola', N'Bitolski', N'2000', N'Large')
INSERT [dbo].[BusinessEntity] ([Id], [Name], [Region], [Zipcode], [Size]) VALUES (3, N'Vitalia Strumica', N'Strumicki', N'987', N'Medium')
INSERT [dbo].[BusinessEntity] ([Id], [Name], [Region], [Zipcode], [Size]) VALUES (4, N'Vitalia Kumanovo', N'Kumanovski', N'500', N'Medium')
INSERT [dbo].[BusinessEntity] ([Id], [Name], [Region], [Zipcode], [Size]) VALUES (5, N'Vitalia Tetovo', N'Polog', N'700', N'Small')
INSERT [dbo].[BusinessEntity] ([Id], [Name], [Region], [Zipcode], [Size]) VALUES (6, N'Vitalia Stip', N'Stipski', N'300', N'Small')
INSERT [dbo].[BusinessEntity] ([Id], [Name], [Region], [Zipcode], [Size]) VALUES (7, N'Vitalia Ohrid', N'Ohridski', N'100', N'Small')
SET IDENTITY_INSERT [dbo].[BusinessEntity] OFF
GO
