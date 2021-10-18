USE [codegen]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 2021/10/18 16:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[menu_name] [nvarchar](50) NULL,
	[module_id] [int] NULL,
	[menu_code] [varchar](50) NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[module]    Script Date: 2021/10/18 16:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[module](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[module_name] [varchar](50) NULL,
 CONSTRAINT [PK_module] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[nature]    Script Date: 2021/10/18 16:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nature](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nature_name] [nvarchar](50) NULL,
	[nature_code] [nvarchar](50) NULL,
	[service_id] [int] NULL,
	[arg_type] [int] NULL,
	[field_type] [int] NULL,
	[data_dic_code] [nvarchar](50) NULL,
	[display] [int] NULL,
	[sort] [int] NULL,
	[can_edit] [int] NULL,
	[required] [int] NULL,
 CONSTRAINT [PK_nature] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service]    Script Date: 2021/10/18 16:45:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[service_name] [nvarchar](50) NULL,
	[type] [int] NULL,
	[service_code] [varchar](50) NULL,
	[menu_id] [int] NULL,
	[action_mapping] [varchar](50) NULL,
	[can_edit] [int] NULL,
 CONSTRAINT [PK_service] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[nature] ADD  CONSTRAINT [DF_nature_field_type]  DEFAULT ((0)) FOR [field_type]
GO
ALTER TABLE [dbo].[nature] ADD  CONSTRAINT [DF_nature_display]  DEFAULT ((1)) FOR [display]
GO
ALTER TABLE [dbo].[nature] ADD  CONSTRAINT [DF_nature_can_edit]  DEFAULT ((0)) FOR [can_edit]
GO
ALTER TABLE [dbo].[nature] ADD  CONSTRAINT [DF_nature_required]  DEFAULT ((0)) FOR [required]
GO
ALTER TABLE [dbo].[service] ADD  CONSTRAINT [DF_service_type]  DEFAULT ((0)) FOR [type]
GO
ALTER TABLE [dbo].[service] ADD  CONSTRAINT [DF_service_can_edit]  DEFAULT ((0)) FOR [can_edit]
GO

