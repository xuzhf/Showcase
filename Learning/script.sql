USE [QjToba]
GO
/****** Object:  Table [dbo].[information]    Script Date: 08/26/2016 14:56:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[information](
	[user_id] [int] NULL,
	[parent_id] [int] NULL,
	[user_name] [nvarchar](50) NULL,
	[age] [int] NULL,
	[email] [nvarchar](50) NULL,
	[url] [nvarchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[information] ([user_id], [parent_id], [user_name], [age], [email], [url]) VALUES (4, 0, N'dd', 44, N'dsagf', N'fgfdshf')
INSERT [dbo].[information] ([user_id], [parent_id], [user_name], [age], [email], [url]) VALUES (192, 4, N'金色', 43, N'jinse@qq.com', N'http://jinse.com')
INSERT [dbo].[information] ([user_id], [parent_id], [user_name], [age], [email], [url]) VALUES (295, 192, N's', 4, N'1f', N'rr')
INSERT [dbo].[information] ([user_id], [parent_id], [user_name], [age], [email], [url]) VALUES (293, 192, N's', 66, N'sdgf', N'fhgh')
INSERT [dbo].[information] ([user_id], [parent_id], [user_name], [age], [email], [url]) VALUES (291, 4, N'ff', 55, N'dsfg', N'fh')
