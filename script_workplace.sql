USE [workplace]
GO
/****** Object:  Table [dbo].[country]    Script Date: 20/04/2022 21:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[country](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[country_description] [nvarchar](50) NULL,
 CONSTRAINT [PK_country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[department]    Script Date: 20/04/2022 21:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[department_name] [nvarchar](50) NULL,
 CONSTRAINT [PK_department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[employee]    Script Date: 20/04/2022 21:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[employee](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[firstname] [nvarchar](50) NULL,
	[lastname] [nvarchar](50) NULL,
	[country_id] [int] NULL,
	[gender] [int] NULL,
	[department_id] [int] NULL,
	[univeristy_id] [int] NULL,
 CONSTRAINT [PK_employee] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[university]    Script Date: 20/04/2022 21:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[university](
	[id] [int] NULL,
	[univeristy_name] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[View_Employee]    Script Date: 20/04/2022 21:57:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_Employee]
AS
SELECT      dbo.country.id AS Expr1, dbo.country.country_description AS Expr2, dbo.department.id, dbo.department.department_name, dbo.employee.firstname, dbo.employee.id AS Expr3, dbo.employee.country_id, dbo.employee.gender, dbo.employee.department_id, dbo.employee.univeristy_id, dbo.employee.lastname
FROM        dbo.country INNER JOIN
                dbo.department ON dbo.country.id = dbo.department.id INNER JOIN
                dbo.employee ON dbo.country.id = dbo.employee.id
GO
SET IDENTITY_INSERT [dbo].[country] ON 

INSERT [dbo].[country] ([id], [country_description]) VALUES (1, N'Vietnam')
INSERT [dbo].[country] ([id], [country_description]) VALUES (2, N'U.S.')
INSERT [dbo].[country] ([id], [country_description]) VALUES (3, N'UK')
INSERT [dbo].[country] ([id], [country_description]) VALUES (4, N'Laos')
SET IDENTITY_INSERT [dbo].[country] OFF
GO
SET IDENTITY_INSERT [dbo].[department] ON 

INSERT [dbo].[department] ([id], [department_name]) VALUES (1, N'Sales')
INSERT [dbo].[department] ([id], [department_name]) VALUES (2, N'Accounting')
INSERT [dbo].[department] ([id], [department_name]) VALUES (3, N'Purchasing')
INSERT [dbo].[department] ([id], [department_name]) VALUES (4, N'Administration')
SET IDENTITY_INSERT [dbo].[department] OFF
GO
SET IDENTITY_INSERT [dbo].[employee] ON 

INSERT [dbo].[employee] ([id], [firstname], [lastname], [country_id], [gender], [department_id], [univeristy_id]) VALUES (1, N'Vy', N'Do Nhu', 1, 1, 1, 2)
INSERT [dbo].[employee] ([id], [firstname], [lastname], [country_id], [gender], [department_id], [univeristy_id]) VALUES (2, N'James', N'Braham', 2, 1, 2, 2)
INSERT [dbo].[employee] ([id], [firstname], [lastname], [country_id], [gender], [department_id], [univeristy_id]) VALUES (3, N'Tom', N'Brashon', 2, 1, 2, 2)
SET IDENTITY_INSERT [dbo].[employee] OFF
GO
INSERT [dbo].[university] ([id], [univeristy_name]) VALUES (NULL, N'Stanford')
INSERT [dbo].[university] ([id], [univeristy_name]) VALUES (NULL, N'Harvard University')
INSERT [dbo].[university] ([id], [univeristy_name]) VALUES (NULL, N'MIT')
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "country"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 123
               Right = 292
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "department"
            Begin Extent = 
               Top = 6
               Left = 330
               Bottom = 123
               Right = 573
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "employee"
            Begin Extent = 
               Top = 6
               Left = 611
               Bottom = 171
               Right = 825
            End
            DisplayFlags = 280
            TopColumn = 3
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Employee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_Employee'
GO
