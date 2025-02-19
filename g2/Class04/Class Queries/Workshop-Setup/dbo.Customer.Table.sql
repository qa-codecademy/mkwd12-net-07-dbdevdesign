USE [SEDC]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5/23/2024 6:22:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[AccountNumber] [nvarchar](100) NULL,
	[City] [nvarchar](100) NULL,
	[RegionName] [nvarchar](100) NULL,
	[CustomerSize] [nvarchar](10) NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (1, N'Vero Bitola', N'166475', N'Bitola', N'Bitolski', N'Medium', N'070713629', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (2, N'Tinex Bitola', N'166507', N'Bitola', N'Bitolski', N'Large', N'070713685', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (3, N'Ramstor Bitola', N'166538', N'Bitola', N'Bitolski', N'Small', N'070713741', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (4, N'Kam Bitola', N'166570', N'Bitola', N'Bitolski', N'Medium', N'070713796', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (5, N'Zito Bitola', N'166601', N'Bitola', N'Bitolski', N'Large', N'070713852', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (6, N'Zegin Bitola', N'166633', N'Bitola', N'Bitolski', N'Small', N'070713908', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (7, N'Eurofarm Bitola', N'166664', N'Bitola', N'Bitolski', N'Medium', N'070713964', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (8, N'Makpetrol Bitola', N'166695', N'Bitola', N'Bitolski', N'Large', N'070714020', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (9, N'Lukoil Bitola', N'166727', N'Bitola', N'Bitolski', N'Small', N'070714076', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (10, N'Tobacco Bitola', N'166758', N'Bitola', N'Bitolski', N'Medium', N'070714132', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (11, N'Vero Gevgelija', N'166790', N'Gevgelija', N'Stipski', N'Large', N'070714188', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (12, N'Tinex Gevgelija', N'166821', N'Gevgelija', N'Stipski', N'Small', N'070714244', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (13, N'Ramstor Gevgelija', N'166853', N'Gevgelija', N'Stipski', N'Medium', N'070714300', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (14, N'Kam Gevgelija', N'166884', N'Gevgelija', N'Stipski', N'Large', N'070714355', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (15, N'Zito Gevgelija', N'166915', N'Gevgelija', N'Stipski', N'Small', N'070714411', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (16, N'Zegin Gevgelija', N'166947', N'Gevgelija', N'Stipski', N'Medium', N'070714467', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (17, N'Eurofarm Gevgelija', N'166978', N'Gevgelija', N'Stipski', N'Large', N'070714523', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (18, N'Makpetrol Gevgelija', N'167010', N'Gevgelija', N'Stipski', N'Small', N'070714579', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (19, N'Lukoil Gevgelija', N'167041', N'Gevgelija', N'Stipski', N'Medium', N'070714635', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (20, N'Tobacco Gevgelija', N'167073', N'Gevgelija', N'Stipski', N'Large', N'070714691', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (21, N'Vero Kocani', N'167104', N'Kocani', N'Stipski', N'Small', N'070714747', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (22, N'Tinex Kocani', N'167135', N'Kocani', N'Stipski', N'Medium', N'070714803', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (23, N'Ramstor Kocani', N'167167', N'Kocani', N'Stipski', N'Large', N'070714859', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (24, N'Kam Kocani', N'167198', N'Kocani', N'Stipski', N'Small', N'070714914', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (25, N'Zito Kocani', N'167230', N'Kocani', N'Stipski', N'Medium', N'070714970', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (26, N'Zegin Kocani', N'167261', N'Kocani', N'Stipski', N'Large', N'070715026', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (27, N'Eurofarm Kocani', N'167292', N'Kocani', N'Stipski', N'Small', N'070715082', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (28, N'Makpetrol Kocani', N'167324', N'Kocani', N'Stipski', N'Medium', N'070715138', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (29, N'Lukoil Kocani', N'167355', N'Kocani', N'Stipski', N'Large', N'070715194', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (30, N'Tobacco Kocani', N'167387', N'Kocani', N'Stipski', N'Small', N'070715250', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (31, N'Vero Kumanovo', N'167418', N'Kumanovo', N'Kumanovski', N'Medium', N'070715306', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (32, N'Tinex Kumanovo', N'167450', N'Kumanovo', N'Kumanovski', N'Large', N'070715362', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (33, N'Ramstor Kumanovo', N'167481', N'Kumanovo', N'Kumanovski', N'Small', N'070715418', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (34, N'Kam Kumanovo', N'167512', N'Kumanovo', N'Kumanovski', N'Medium', N'070715473', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (35, N'Zito Kumanovo', N'167544', N'Kumanovo', N'Kumanovski', N'Large', N'070715529', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (36, N'Zegin Kumanovo', N'167575', N'Kumanovo', N'Kumanovski', N'Small', N'070715585', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (37, N'Eurofarm Kumanovo', N'167607', N'Kumanovo', N'Kumanovski', N'Medium', N'070715641', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (38, N'Makpetrol Kumanovo', N'167638', N'Kumanovo', N'Kumanovski', N'Large', N'070715697', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (39, N'Lukoil Kumanovo', N'167670', N'Kumanovo', N'Kumanovski', N'Small', N'070715753', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (40, N'Tobacco Kumanovo', N'167701', N'Kumanovo', N'Kumanovski', N'Medium', N'070715809', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (41, N'Vero Ohrid', N'167732', N'Ohrid', N'Ohridski', N'Large', N'070715865', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (42, N'Tinex Ohrid', N'167764', N'Ohrid', N'Ohridski', N'Small', N'070715921', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (43, N'Ramstor Ohrid', N'167795', N'Ohrid', N'Ohridski', N'Medium', N'070715977', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (44, N'Kam Ohrid', N'167827', N'Ohrid', N'Ohridski', N'Large', N'070716032', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (45, N'Zito Ohrid', N'167858', N'Ohrid', N'Ohridski', N'Small', N'070716088', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (46, N'Zegin Ohrid', N'167890', N'Ohrid', N'Ohridski', N'Medium', N'070716144', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (47, N'Eurofarm Ohrid', N'167921', N'Ohrid', N'Ohridski', N'Large', N'070716200', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (48, N'Makpetrol Ohrid', N'167952', N'Ohrid', N'Ohridski', N'Small', N'070716256', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (49, N'Lukoil Ohrid', N'167984', N'Ohrid', N'Ohridski', N'Medium', N'070716312', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (50, N'Tobacco Ohrid', N'168015', N'Ohrid', N'Ohridski', N'Large', N'070716368', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (51, N'Vero Radovis', N'168047', N'Radovis', N'Stipski', N'Small', N'070716424', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (52, N'Tinex Radovis', N'168078', N'Radovis', N'Stipski', N'Medium', N'070716480', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (53, N'Ramstor Radovis', N'168110', N'Radovis', N'Stipski', N'Large', N'070716536', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (54, N'Kam Radovis', N'168141', N'Radovis', N'Stipski', N'Small', N'070716591', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (55, N'Zito Radovis', N'168172', N'Radovis', N'Stipski', N'Medium', N'070716647', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (56, N'Zegin Radovis', N'168204', N'Radovis', N'Stipski', N'Large', N'070716703', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (57, N'Eurofarm Radovis', N'168235', N'Radovis', N'Stipski', N'Small', N'070716759', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (58, N'Makpetrol Radovis', N'168267', N'Radovis', N'Stipski', N'Medium', N'070716815', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (59, N'Lukoil Radovis', N'168298', N'Radovis', N'Stipski', N'Large', N'070716871', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (60, N'Tobacco Radovis', N'168329', N'Radovis', N'Stipski', N'Small', N'070716927', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (61, N'Vero Skopje', N'168361', N'Skopje', N'Skopski', N'Medium', N'070716983', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (62, N'Tinex Skopje', N'168392', N'Skopje', N'Skopski', N'Large', N'070717039', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (63, N'Ramstor Skopje', N'168424', N'Skopje', N'Skopski', N'Small', N'070717094', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (64, N'Kam Skopje', N'168455', N'Skopje', N'Skopski', N'Medium', N'070717150', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (65, N'Zito Skopje', N'168487', N'Skopje', N'Skopski', N'Large', N'070717206', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (66, N'Zegin Skopje', N'168518', N'Skopje', N'Skopski', N'Small', N'070717262', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (67, N'Eurofarm Skopje', N'168549', N'Skopje', N'Skopski', N'Medium', N'070717318', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (68, N'Makpetrol Skopje', N'168581', N'Skopje', N'Skopski', N'Large', N'070717374', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (69, N'Lukoil Skopje', N'168612', N'Skopje', N'Skopski', N'Small', N'070717430', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (70, N'Tobacco Skopje', N'168644', N'Skopje', N'Skopski', N'Medium', N'070717486', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (71, N'Vero Stip', N'168675', N'Stip', N'Stipski', N'Large', N'070717542', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (72, N'Tinex Stip', N'168707', N'Stip', N'Stipski', N'Small', N'070717598', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (73, N'Ramstor Stip', N'168738', N'Stip', N'Stipski', N'Medium', N'070717653', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (74, N'Kam Stip', N'168769', N'Stip', N'Stipski', N'Large', N'070717709', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (75, N'Zito Stip', N'168801', N'Stip', N'Stipski', N'Small', N'070717765', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (76, N'Zegin Stip', N'168832', N'Stip', N'Stipski', N'Medium', N'070717821', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (77, N'Eurofarm Stip', N'168864', N'Stip', N'Stipski', N'Large', N'070717877', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (78, N'Makpetrol Stip', N'168895', N'Stip', N'Stipski', N'Small', N'070717933', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (79, N'Lukoil Stip', N'168927', N'Stip', N'Stipski', N'Medium', N'070717989', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (80, N'Tobacco Stip', N'168958', N'Stip', N'Stipski', N'Large', N'070718045', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (81, N'Vero Strumica', N'168989', N'Strumica', N'Stipski', N'Small', N'070718101', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (82, N'Tinex Strumica', N'169021', N'Strumica', N'Stipski', N'Medium', N'070718157', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (83, N'Ramstor Strumica', N'169052', N'Strumica', N'Stipski', N'Large', N'070718212', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (84, N'Kam Strumica', N'169084', N'Strumica', N'Stipski', N'Small', N'070718268', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (85, N'Zito Strumica', N'169115', N'Strumica', N'Stipski', N'Medium', N'070718324', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (86, N'Zegin Strumica', N'169146', N'Strumica', N'Stipski', N'Large', N'070718380', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (87, N'Eurofarm Strumica', N'169178', N'Strumica', N'Stipski', N'Small', N'070718436', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (88, N'Makpetrol Strumica', N'169209', N'Strumica', N'Stipski', N'Medium', N'070718492', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (89, N'Lukoil Strumica', N'169241', N'Strumica', N'Stipski', N'Large', N'070718548', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (90, N'Tobacco Strumica', N'169272', N'Strumica', N'Stipski', N'Small', N'070718604', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (91, N'Vero Tetovo', N'169304', N'Tetovo', N'Polog', N'Medium', N'070718660', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (92, N'Tinex Tetovo', N'169335', N'Tetovo', N'Polog', N'Large', N'070718716', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (93, N'Ramstor Tetovo', N'169366', N'Tetovo', N'Polog', N'Small', N'070718771', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (94, N'Kam Tetovo', N'169398', N'Tetovo', N'Polog', N'Medium', N'070718827', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (95, N'Zito Tetovo', N'169429', N'Tetovo', N'Polog', N'Large', N'070718883', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (96, N'Zegin Tetovo', N'169461', N'Tetovo', N'Polog', N'Small', N'070718939', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (97, N'Eurofarm Tetovo', N'169492', N'Tetovo', N'Polog', N'Medium', N'070718995', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (98, N'Makpetrol Tetovo', N'169524', N'Tetovo', N'Polog', N'Large', N'070719051', 1)
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (99, N'Lukoil Tetovo', N'169555', N'Tetovo', N'Polog', N'Small', N'070719107', 1)
GO
INSERT [dbo].[Customer] ([Id], [Name], [AccountNumber], [City], [RegionName], [CustomerSize], [PhoneNumber], [IsActive]) VALUES (100, N'Tobacco Tetovo', N'169586', N'Tetovo', N'Polog', N'Medium', N'070719163', 1)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
