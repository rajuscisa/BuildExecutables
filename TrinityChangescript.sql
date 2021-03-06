USE TrinityDB
/****** Object:  Table [dbo].[tbl_venuetype_master]    Script Date: 25-02-2018 19:26:16 ******/
DROP TABLE [dbo].[tbl_venuetype_master]
GO
/****** Object:  Table [dbo].[tbl_strategyversionlog]    Script Date: 25-02-2018 19:26:16 ******/
DROP TABLE [dbo].[tbl_strategyversionlog]
GO
/****** Object:  Table [dbo].[tbl_strategytype_master]    Script Date: 25-02-2018 19:26:16 ******/
DROP TABLE [dbo].[tbl_strategytype_master]
GO
/****** Object:  Table [dbo].[tbl_strategyapproval]    Script Date: 25-02-2018 19:26:16 ******/
DROP TABLE [dbo].[tbl_strategyapproval]
GO
/****** Object:  Table [dbo].[tbl_strategy]    Script Date: 25-02-2018 19:26:16 ******/
DROP TABLE [dbo].[tbl_strategy]
GO
/****** Object:  Table [dbo].[tbl_capacity_master]    Script Date: 25-02-2018 19:26:16 ******/
DROP TABLE [dbo].[tbl_capacity_master]
GO
/****** Object:  Table [dbo].[tbl_capacity_master]    Script Date: 25-02-2018 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_capacity_master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Capacity] [varchar](250) NULL,
	[Capacitycode] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__tbl_capa__3214EC0702579EAF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_strategy]    Script Date: 25-02-2018 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_strategy](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefNumber] [varchar](50) NULL,
	[FTAApplicationCodeId] [int] NULL,
	[FTAStrategyCodeId] [int] NULL,
	[DiscretionaryCodeId] [int] NULL,
	[BusinessSuffixId] [int] NULL,
	[FTAShortCodeId] [varchar](50) NULL,
	[ParentId] [int] NULL,
	[ChildId] [int] NULL,
	[BusinessLineId] [int] NULL,
	[RegionId] [int] NULL,
	[CountryId] [varchar](1000) NULL,
	[FTAApplicationNameId] [int] NULL,
	[CountryIdList] [varchar](100) NULL,
	[CountryNameList] [varchar](500) NULL,
	[FTAApplicationOwnerId] [varchar](50) NULL,
	[FTAThirdPartyapp] [varchar](50) NULL,
	[FTAStrategyNameId] [int] NULL,
	[FTAStrategyOwnerId] [varchar](50) NULL,
	[PriorityScoreId] [int] NULL,
	[ApplicationCategoryId] [int] NULL,
	[Priority] [int] NULL,
	[StrategyTypeId] [int] NULL,
	[PriorityScore] [int] NULL,
	[VenueTypeId] [int] NULL,
	[CapacityId] [int] NULL,
	[GoLiveDate] [date] NULL,
	[ThirdPartyAppId] [int] NULL,
	[BusinessId] [int] NULL,
	[FTAApplicationMappingId] [int] NULL,
	[FTAStrategyMappingId] [int] NULL,
	[BusinessMappingId] [int] NULL,
	[DeComissionedDate] [date] NULL,
	[DecomissionedEvidenceDocument] [varchar](100) NULL,
	[SystemFlow] [varchar](100) NULL,
	[NoOfApprover] [int] NULL,
	[Description] [varchar](max) NULL,
	[Version] [int] NOT NULL,
	[SeniorManagementFunction] [varchar](1500) NULL,
	[LTALongCode] [varchar](1500) NULL,
	[SignOff] [varchar](10) NULL,
	[SignOffDate] [datetime2](0) NULL,
	[SignoffBy] [varchar](100) NULL,
	[IsActive] [varchar](1) NULL,
	[CreatedDate] [datetime2](0) NULL,
	[CreatedBy] [varchar](100) NULL,
	[LastModifiedDate] [datetime2](0) NULL,
	[LastModifiedBy] [varchar](100) NULL,
	[Res1] [varchar](250) NULL,
	[Res2] [varchar](250) NULL,
	[Res3] [varchar](250) NULL,
	[Res4] [varchar](250) NULL,
	[Res5] [varchar](250) NULL,
	[Res6] [varchar](250) NULL,
	[Res7] [varchar](250) NULL,
	[Res8] [varchar](250) NULL,
	[Res9] [varchar](250) NULL,
	[Res10] [varchar](250) NULL,
 CONSTRAINT [PK__tbl_stra__3214EC070C9A4464] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_strategyapproval]    Script Date: 25-02-2018 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_strategyapproval](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RefNumber] [varchar](50) NULL,
	[Version] [varchar](50) NULL,
	[Approver] [varchar](50) NULL,
	[Comments] [varchar](50) NULL,
	[ApprovedDate] [datetime2](0) NULL,
	[CreatedDate] [datetime2](0) NULL,
	[Status] [varchar](50) NULL,
	[Uploadedby] [varchar](500) NULL,
	[IsActive] [varchar](50) NULL,
	[IsTransfered] [varchar](50) NULL,
	[IsDelegateAccepted] [varchar](45) NULL,
	[IsViewed] [varchar](50) NULL,
	[IsModified] [varchar](50) NULL,
	[Type] [varchar](45) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_strategytype_master]    Script Date: 25-02-2018 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_strategytype_master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StrategyType] [varchar](250) NULL,
	[StrategyTypecode] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__tbl_stra__3214EC07B26A1E90] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_strategyversionlog]    Script Date: 25-02-2018 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_strategyversionlog](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RefNumber] [varchar](50) NULL,
	[Version] [varchar](50) NULL,
	[ChangeDesc] [varchar](2000) NULL,
	[FTAShortCode] [varchar](50) NULL,
	[CreatedDate] [datetime2](0) NULL,
	[CreatedBy] [varchar](500) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tbl_venuetype_master]    Script Date: 25-02-2018 19:26:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbl_venuetype_master](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[VenueType] [varchar](250) NULL,
	[VenueTypecode] [varchar](50) NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK__tbl_venu__3214EC07587EC50F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
