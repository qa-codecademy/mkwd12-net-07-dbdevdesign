USE [SEDC]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 5/23/2024 6:22:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](50) NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [decimal](18, 2) NULL,
	[Price] [decimal](18, 2) NULL,
	[Cost] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (1, N'Cru1', N'Crunchy', N'Crunchy description', CAST(71.00 AS Decimal(18, 2)), CAST(33.00 AS Decimal(18, 2)), CAST(27.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (2, N'Gra2', N'Granola', N'Granola description', CAST(143.00 AS Decimal(18, 2)), CAST(41.00 AS Decimal(18, 2)), CAST(34.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (3, N'Reg3', N'Regular/soft', N'Regular/soft description', CAST(214.00 AS Decimal(18, 2)), CAST(49.00 AS Decimal(18, 2)), CAST(41.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (4, N'Glu4', N'Gluten Free', N'Gluten Free description', CAST(286.00 AS Decimal(18, 2)), CAST(57.00 AS Decimal(18, 2)), CAST(48.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (5, N'Tak5', N'Take away', N'Take away description', CAST(357.00 AS Decimal(18, 2)), CAST(65.00 AS Decimal(18, 2)), CAST(55.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (6, N'Cor6', N'Cornflakes', N'Cornflakes description', CAST(429.00 AS Decimal(18, 2)), CAST(73.00 AS Decimal(18, 2)), CAST(62.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (7, N'Cer7', N'Cereals', N'Cereals description', CAST(500.00 AS Decimal(18, 2)), CAST(81.00 AS Decimal(18, 2)), CAST(69.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (8, N'Pro8', N'Protein Bar', N'Protein Bar description', CAST(572.00 AS Decimal(18, 2)), CAST(90.00 AS Decimal(18, 2)), CAST(77.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (9, N'Raw9', N'Raw bars', N'Raw bars description', CAST(644.00 AS Decimal(18, 2)), CAST(98.00 AS Decimal(18, 2)), CAST(84.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (10, N'No 10', N'No Sugar Added', N'No Sugar Added description', CAST(715.00 AS Decimal(18, 2)), CAST(106.00 AS Decimal(18, 2)), CAST(91.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (11, N'Mul11', N'Multigrain', N'Multigrain description', CAST(787.00 AS Decimal(18, 2)), CAST(114.00 AS Decimal(18, 2)), CAST(98.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (12, N'Kid12', N'Kids Bar', N'Kids Bar description', CAST(858.00 AS Decimal(18, 2)), CAST(122.00 AS Decimal(18, 2)), CAST(105.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (13, N'Fru13', N'Fruit, Nuts & Seeds', N'Fruit, Nuts & Seeds description', CAST(930.00 AS Decimal(18, 2)), CAST(130.00 AS Decimal(18, 2)), CAST(112.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (14, N'Pro14', N'Protein balls', N'Protein balls description', CAST(1001.00 AS Decimal(18, 2)), CAST(138.00 AS Decimal(18, 2)), CAST(119.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (15, N'Ric15', N'Rice Cakes', N'Rice Cakes description', CAST(1073.00 AS Decimal(18, 2)), CAST(147.00 AS Decimal(18, 2)), CAST(127.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (16, N'Min16', N'Mini cereal bites', N'Mini cereal bites description', CAST(1145.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)), CAST(134.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (17, N'Dri17', N'Dried Fruits', N'Dried Fruits description', CAST(1216.00 AS Decimal(18, 2)), CAST(163.00 AS Decimal(18, 2)), CAST(141.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (18, N'Cra18', N'Crackers', N'Crackers description', CAST(1288.00 AS Decimal(18, 2)), CAST(171.00 AS Decimal(18, 2)), CAST(148.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (19, N'Coo19', N'Cookies', N'Cookies description', CAST(1360.00 AS Decimal(18, 2)), CAST(179.00 AS Decimal(18, 2)), CAST(155.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (20, N'Unr20', N'Unrefined sugars', N'Unrefined sugars description', CAST(1431.00 AS Decimal(18, 2)), CAST(187.00 AS Decimal(18, 2)), CAST(162.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (21, N'Nat21', N'Natural Sweeteners', N'Natural Sweeteners description', CAST(1503.00 AS Decimal(18, 2)), CAST(196.00 AS Decimal(18, 2)), CAST(170.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (22, N'Dia22', N'Diabetic', N'Diabetic description', CAST(1574.00 AS Decimal(18, 2)), CAST(204.00 AS Decimal(18, 2)), CAST(177.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (23, N'Pla23', N'Plant-based drinks', N'Plant-based drinks description', CAST(1646.00 AS Decimal(18, 2)), CAST(212.00 AS Decimal(18, 2)), CAST(184.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (24, N'Smo24', N'Smoothie drinks', N'Smoothie drinks description', CAST(1718.00 AS Decimal(18, 2)), CAST(220.00 AS Decimal(18, 2)), CAST(191.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (25, N'Nat25', N'Natural Juices', N'Natural Juices description', CAST(1789.00 AS Decimal(18, 2)), CAST(228.00 AS Decimal(18, 2)), CAST(198.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (26, N'Gre26', N'Green Teas', N'Green Teas description', CAST(1861.00 AS Decimal(18, 2)), CAST(236.00 AS Decimal(18, 2)), CAST(205.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (27, N'Fun27', N'Functional Teas', N'Functional Teas description', CAST(1933.00 AS Decimal(18, 2)), CAST(244.00 AS Decimal(18, 2)), CAST(212.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (28, N'Fru28', N'Fruit Teas', N'Fruit Teas description', CAST(2004.00 AS Decimal(18, 2)), CAST(253.00 AS Decimal(18, 2)), CAST(220.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (29, N'See29', N'Seeds', N'Seeds description', CAST(2076.00 AS Decimal(18, 2)), CAST(261.00 AS Decimal(18, 2)), CAST(227.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (30, N'Oil30', N'Oils & Vinegars', N'Oils & Vinegars description', CAST(2147.00 AS Decimal(18, 2)), CAST(269.00 AS Decimal(18, 2)), CAST(234.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (31, N'Glu31', N'Gluten Free Pasta', N'Gluten Free Pasta description', CAST(2219.00 AS Decimal(18, 2)), CAST(277.00 AS Decimal(18, 2)), CAST(241.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (32, N'Flo32', N'Flours', N'Flours description', CAST(2291.00 AS Decimal(18, 2)), CAST(285.00 AS Decimal(18, 2)), CAST(248.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (33, N'Sup33', N'Superfoods', N'Superfoods description', CAST(2362.00 AS Decimal(18, 2)), CAST(293.00 AS Decimal(18, 2)), CAST(255.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (34, N'Spo34', N'Sport Supplements', N'Sport Supplements description', CAST(2434.00 AS Decimal(18, 2)), CAST(301.00 AS Decimal(18, 2)), CAST(262.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (35, N'Hon35', N'Honey Syrup', N'Honey Syrup description', CAST(2506.00 AS Decimal(18, 2)), CAST(310.00 AS Decimal(18, 2)), CAST(270.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (36, N'Swe36', N'Sweet Spreads', N'Sweet Spreads description', CAST(2577.00 AS Decimal(18, 2)), CAST(318.00 AS Decimal(18, 2)), CAST(277.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (37, N'Spi37', N'Spices', N'Spices description', CAST(2649.00 AS Decimal(18, 2)), CAST(326.00 AS Decimal(18, 2)), CAST(284.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (38, N'Sou38', N'Soups', N'Soups description', CAST(2721.00 AS Decimal(18, 2)), CAST(334.00 AS Decimal(18, 2)), CAST(291.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (39, N'Sal39', N'Salty Spreads', N'Salty Spreads description', CAST(2793.00 AS Decimal(18, 2)), CAST(342.00 AS Decimal(18, 2)), CAST(298.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (40, N'Soy40', N'Soy Pates', N'Soy Pates description', CAST(2864.00 AS Decimal(18, 2)), CAST(350.00 AS Decimal(18, 2)), CAST(305.00 AS Decimal(18, 2)))
INSERT [dbo].[Product] ([Id], [Code], [Name], [Description], [Weight], [Price], [Cost]) VALUES (41, N'Soy41', N'Soy milks', N'Soy milks description', CAST(2936.00 AS Decimal(18, 2)), CAST(359.00 AS Decimal(18, 2)), CAST(313.00 AS Decimal(18, 2)))
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_Product_Name]    Script Date: 5/23/2024 6:22:03 PM ******/
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [UQ_Product_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DFT_Product_Price]  DEFAULT ((1)) FOR [Price]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [CHK_Product_Price] CHECK  (([Price]<=[Cost]*(2)))
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [CHK_Product_Price]
GO
