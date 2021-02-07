USE [KeralaYouthFestival]
GO
/****** Object:  Table [dbo].[College]    Script Date: 07-02-2021 12:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[College](
	[ColID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EnteredBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_College] PRIMARY KEY CLUSTERED 
(
	[ColID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CollegeResult]    Script Date: 07-02-2021 12:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CollegeResult](
	[ColgID] [bigint] IDENTITY(1,1) NOT NULL,
	[CollegeName] [varchar](200) NULL,
	[CollegePoint] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[EnteredBy] [bigint] NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_CollegeResult] PRIMARY KEY CLUSTERED 
(
	[ColgID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 07-02-2021 12:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CouID] [bigint] IDENTITY(1,1) NOT NULL,
	[DeptID] [bigint] NULL,
	[Name] [varchar](50) NULL,
	[EnteredBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CouID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 07-02-2021 12:22:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Credential](
	[CredID] [bigint] IDENTITY(1,1) NOT NULL,
	[Email] [varchar](50) NULL,
	[IsEmailVerify] [bit] NULL,
	[EmailVerificationCode] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[PasswordResetCode] [varchar](50) NULL,
	[LastLoginIP] [varchar](50) NULL,
	[LastLoginOn] [datetime] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Credential] PRIMARY KEY CLUSTERED 
(
	[CredID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EnteredBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EventWiseResult]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EventWiseResult](
	[EvntID] [bigint] IDENTITY(1,1) NOT NULL,
	[EventName] [varchar](50) NULL,
	[FStudChestNumber] [varchar](50) NULL,
	[FStudName] [varchar](50) NULL,
	[FStudCollege] [varchar](50) NULL,
	[SStudChestNumber] [varchar](50) NULL,
	[SStudName] [varchar](50) NULL,
	[SStudCollege] [varchar](50) NULL,
	[TStudChestNumber] [varchar](50) NULL,
	[TStudName] [varchar](50) NULL,
	[TStudCollege] [varchar](50) NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[EnteredBy] [bigint] NULL,
 CONSTRAINT [PK_EventWiseResult] PRIMARY KEY CLUSTERED 
(
	[EvntID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FirstPrizeTbl]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FirstPrizeTbl](
	[FIrstPrizeID] [bigint] IDENTITY(1,1) NOT NULL,
	[EventID] [bigint] NULL,
	[StudName] [varchar](50) NULL,
	[StudCollege] [varchar](200) NULL,
	[EnteredOn] [datetime] NULL,
	[EnteredBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_FirstPrizeTbl] PRIMARY KEY CLUSTERED 
(
	[FIrstPrizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GeneralSetting]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralSetting](
	[GenSetID] [bigint] IDENTITY(1,1) NOT NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_GeneralSetting] PRIMARY KEY CLUSTERED 
(
	[GenSetID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupHeadParticipation]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupHeadParticipation](
	[GrpPartID] [bigint] IDENTITY(1,1) NOT NULL,
	[TeamHeadID] [bigint] NULL,
	[GrpEvtID] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_GroupHeadPart] PRIMARY KEY CLUSTERED 
(
	[GrpPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GroupMemParticiapation]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GroupMemParticiapation](
	[GrpMemPartID] [bigint] IDENTITY(1,1) NOT NULL,
	[GrpPartID] [bigint] NULL,
	[TeamMemID] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_GroupMemParticiapation] PRIMARY KEY CLUSTERED 
(
	[GrpMemPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GrpEvent]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GrpEvent](
	[GrpEvtID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[GrpPartcCount] [int] NULL,
	[EnteredBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_GrpEvent] PRIMARY KEY CLUSTERED 
(
	[GrpEvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImageGallery]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ImageGallery](
	[ImGaID] [bigint] IDENTITY(1,1) NOT NULL,
	[ImgURL] [varchar](50) NULL,
	[ImgAlt] [varchar](50) NULL,
	[UploadedBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ImageGallery] PRIMARY KEY CLUSTERED 
(
	[ImGaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IndivijualResult]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IndivijualResult](
	[IndvID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudName] [varchar](50) NULL,
	[StudPoint] [varchar](50) NULL,
	[StudCollege] [varchar](50) NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
	[EnteredBy] [bigint] NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_IndivijualResult] PRIMARY KEY CLUSTERED 
(
	[IndvID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[NewsID] [bigint] IDENTITY(1,1) NOT NULL,
	[NewsTitle] [varchar](200) NULL,
	[NewsInfo] [varchar](max) NULL,
	[NewsLink] [varchar](200) NULL,
	[UpdatedBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[NewsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantFeMaleResult]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantFeMaleResult](
	[PartFeMaleResultID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudName] [varchar](50) NULL,
	[CollegeName] [varchar](200) NULL,
	[StudPoint] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ParticipantFeMaleResult] PRIMARY KEY CLUSTERED 
(
	[PartFeMaleResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ParticipantMaleResult]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ParticipantMaleResult](
	[PartMaleResultID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudName] [varchar](50) NULL,
	[CollegeName] [varchar](200) NULL,
	[StudPoint] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_ParticipantMaleResult] PRIMARY KEY CLUSTERED 
(
	[PartMaleResultID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PrgShedule]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PrgShedule](
	[SheduleID] [bigint] IDENTITY(1,1) NOT NULL,
	[EventName] [varchar](50) NULL,
	[EventCode] [varchar](50) NULL,
	[SheduleDate] [date] NULL,
	[StartingTime] [varchar](50) NULL,
	[EndingTime] [varchar](50) NULL,
	[Stage] [varchar](50) NULL,
	[CollegeName] [varchar](50) NULL,
	[CoOrdinatorName] [varchar](50) NULL,
	[CoOrdinatorNumber] [varchar](50) NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[EnteredBy] [bigint] NULL,
 CONSTRAINT [PK_PrgShedule] PRIMARY KEY CLUSTERED 
(
	[SheduleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Result]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Result](
	[ResID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudChestID] [bigint] NULL,
	[ItmID] [bigint] NULL,
	[EnteredBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Result] PRIMARY KEY CLUSTERED 
(
	[ResID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecondPrizeTbl]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecondPrizeTbl](
	[SecondPrizeID] [bigint] IDENTITY(1,1) NOT NULL,
	[EventID] [bigint] NULL,
	[StudName] [varchar](50) NULL,
	[StudCollege] [varchar](200) NULL,
	[EnteredOn] [datetime] NULL,
	[EnteredBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_SecondPrizeTbl] PRIMARY KEY CLUSTERED 
(
	[SecondPrizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SingleEvent]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SingleEvent](
	[SinEvtID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[EnteredBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Item] PRIMARY KEY CLUSTERED 
(
	[SinEvtID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SingleParticipation]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SingleParticipation](
	[StudPartID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudID] [bigint] NULL,
	[SinEvtID] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_StudentParticipation] PRIMARY KEY CLUSTERED 
(
	[StudPartID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StudID] [bigint] IDENTITY(1,1) NOT NULL,
	[CredID] [bigint] NULL,
	[RegID] [varchar](50) NULL,
	[FName] [varchar](50) NULL,
	[SName] [varchar](50) NULL,
	[Sex] [varchar](10) NULL,
	[ClgAdmistnNo] [varchar](10) NULL,
	[DateOfBirth] [datetime] NULL,
	[ProPic] [varchar](50) NULL,
	[ColID] [bigint] NULL,
	[DeptID] [bigint] NULL,
	[CouID] [bigint] NULL,
	[Phone] [varchar](50) NULL,
	[IsPhoneVerify] [bit] NULL,
	[PhoneVerificationCode] [varchar](50) NULL,
	[IsCollegeApproved] [bit] NULL,
	[IsEligibilityApproved] [bit] NULL,
	[IsChestNoProvided] [bit] NULL,
	[CollegeApprovedBy] [bigint] NULL,
	[EligibilityApprovedBy] [bigint] NULL,
	[ChestNoProvidedBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[StudID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StudentChestNo]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentChestNo](
	[StudChestID] [bigint] IDENTITY(1,1) NOT NULL,
	[StudPartID] [bigint] NULL,
	[ChestNo] [varchar](50) NULL,
	[EnteredBy] [bigint] NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_StudentChestNo] PRIMARY KEY CLUSTERED 
(
	[StudChestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SuperAdmin]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SuperAdmin](
	[SuAdID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_SuperAdmin] PRIMARY KEY CLUSTERED 
(
	[SuAdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThirdPrizeTbl]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThirdPrizeTbl](
	[ThirdPrizeID] [bigint] IDENTITY(1,1) NOT NULL,
	[EventID] [bigint] NULL,
	[StudName] [varchar](50) NULL,
	[StudCollege] [varchar](200) NULL,
	[EnteredOn] [datetime] NULL,
	[EnteredBy] [bigint] NULL,
	[UpdatedOn] [datetime] NULL,
	[UpdatedBy] [bigint] NULL,
 CONSTRAINT [PK_ThirdPrizeTbl] PRIMARY KEY CLUSTERED 
(
	[ThirdPrizeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Volunteer]    Script Date: 07-02-2021 12:22:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Volunteer](
	[VolID] [bigint] IDENTITY(1,1) NOT NULL,
	[CredID] [bigint] NULL,
	[RoleID] [bigint] NULL,
	[Name] [varchar](50) NULL,
	[Place] [varchar](50) NULL,
	[EnteredOn] [datetime] NULL,
	[UpdatedOn] [datetime] NULL,
 CONSTRAINT [PK_Volunteer] PRIMARY KEY CLUSTERED 
(
	[VolID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[College] ON 
GO
INSERT [dbo].[College] ([ColID], [Name], [EnteredBy], [EnteredOn], [UpdatedOn]) VALUES (1, N'CHMM College for Advanced Studies Trivandrum', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[College] OFF
GO
SET IDENTITY_INSERT [dbo].[CollegeResult] ON 
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (2, N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', 223, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (3, N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', 157, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (4, N'University College, , Thiruvananthapuram', 224, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (5, N'Sree Swathi Thirunal College of Music, , Thiruvananthapuram', 136, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (6, N'H.H.M.S.P.B. N.S.S. College for Women, Neeramankara, Thiruvananthapuram', 58, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (7, N'All Saint`s College, Chakai, Thiruvananthapuram', 48, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (8, N'Saraswathi College of Arts and Science , Vilappil, Thiruvananthapuram', 19, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (9, N'Mahatma Gandhi College , Kesavadasapuram, Thiruvananthapuram', 68, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (10, N'S N College, Kollam', 40, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (11, N'A.J College of Science and Technology, Thonnakkal, Thiruvananthapuram', 17, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (12, N'UIT, Neyyattinkara, Thiruvananthapuram', 16, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (13, N'Sree Narayana College for Women, , Kollam', 32, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (15, N'CSS Kariyavattom Campus, University of Kerala', 85, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (16, N'Mar Gregorios College of Law, Nalanchira, Thiruvananthapuram', 16, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (17, N'Sri Sathya Sai Arts and Science College,Sai Gramam, Thonnakkal, Thiruvananthapuram', 18, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (18, N'KUCTE, Kumarapuram, Thiruvananthapuram', 14, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (19, N'Bishop Moore College, Mavelikara, Alappuzha', 21, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (20, N'Kumbalathu Sankupilla Memorial Dewaswom Board College, Sasthamcottah, Kollam', 14, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (21, N'F.M.N College, , Kollam', 10, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (22, N'Govt. Arts College, , Thiruvananthapuram', 26, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (23, N'Govt. Sanskrit College, , Thiruvananthapuram', 19, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (24, N'Sree Narayana College, Chempazhanthy, Thiruvananthapuram', 8, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (25, N'National College, Ambalathara, Thiruvananthapuram', 12, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (26, N'St Michaels College, Cherthala, Alappuzha', 27, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (27, N'Institute of Fashion Technology Kerala, Vellimon, Kundara, Kollam', 11, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (28, N'N S S College, Pandalam, Pathanamthitta', 17, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (29, N'Govt. College, Nedumangad, Thiruvananthapuram', 7, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (30, N'Govt. College, Kariavattom, Thiruvananthapuram	', 11, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (31, N'T.K. Madhavan Memorial College, Nangiarkulangara, Alappuzha', 11, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (32, N'S N College, Punalur, Kollam', 4, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (33, N'UIT, Kuravankonam, Thiruvananthapuram', 6, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (34, N'C S I Institute of Legal Studies, Cheruvarakonam , Thiruvananthapuram', 10, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (35, N'Iqbal College, Peringamala, Thiruvananthapuram', 2, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (36, N'Sree Narayana College, Cherthala, Alappuzha', 12, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (37, N'Govt. College, Attingal, Thiruvananthapuram', 15, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (38, N'Govt. Law College, Thiruvananthapuram, Thiruvananthapuram', 36, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (39, N'Sree Narayana Guru College of Advanced Studies, Chempazhanthy, Thiruvananthapuram', 7, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (40, N'Govt. College, Ambalapuzha, Alappuzha', 4, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (41, N'Malayankeezu Madhavakavi Memorial Govt. Arts and Science College, Malayankeezu, Thiruvananthapuram', 10, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (42, N'Dr Palpu College of Arts & Science, Pangode, Puthussery, Kollam', 1, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (43, N'Sree Ayyappa College, Thiruvanvandoor, Pathanamthitta', 10, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (44, N'St Stephens College, Pathanapuram, Kollam', 5, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (45, N'St Josephs College For Women, , Alappuzha', 2, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (46, N'S N College, Sivagiri, Varkala, Thiruvananthapuram', 16, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (47, N'Christian College, Chengannur, Alappuzha', 12, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (48, N'KTCT College of Arts & Science, Kallambalam, Thiruvananthapuram	', 7, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (49, N'Christ Nagar College, Maranalloor, Thiruvananthapuram', 7, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (50, N'Buddha College of Teacher Education, Cheppad, Alappuzha', 6, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (51, N'Sree Narayana College, Chengannur, Pathanamthitta	', 6, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (52, N'St Xaviers College, Thumba, Thiruvananthapuram', 5, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (53, N'St Johns College, Anchal, Kollam', 5, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (54, N'UIT, Paravur, Kollam', 5, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (55, N'Govt. College of Teacher Education, Thycaud, Thiruvananthapuram', 4, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (56, N'N S S College, Cherthala, Alappuzha', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (57, N'The Kerala Law Academy Law College, Thiruvananthapuram, Thiruvananthapuram', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (58, N'N.S.S. Law College, Kottiyam, Kollam', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (59, N'Sree Narayana Guru College of Legal Studies, Kollam, Kollam', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (60, N'UIT, Kallara ,Vamanapuram, Thiruvananthapuram', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (61, N'Vigyaan College of Applied Sciences, Kattakada, Thiruvananthapuram', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (62, N'MGM College of Arts and Science, Kaniyapuram, Thiruvananthapuram', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (63, N'College of Applied Sciences, Mavelikkara, Alappuzha', 3, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (64, N'C.H.M.M College of Advanced Studies, Chavarkode, Thiruvananthapuram', 2, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (65, N'Kerala Institute of Tourism and Travel Studies, Thiruvananthapuram, Thiruvananthapuram', 2, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (66, N'NSS Arts and Science College, Perayam, Kundara, Kollam', 1, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (67, N'Kunjukrishna Nadar Memorial Govt. Arts & Science College, Kanjiramkulam, Thiruvananthapuram', 1, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (68, N'Milad –E-Sherif Memorial College, Kayamkulam, Alappuzha', 1, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (69, N'Marian College of Arts and Science, Kazhakuttom, Thiruvananthapuram', 1, NULL, NULL, 1, 1)
GO
INSERT [dbo].[CollegeResult] ([ColgID], [CollegeName], [CollegePoint], [EnteredOn], [UpdatedOn], [EnteredBy], [UpdatedBy]) VALUES (70, N'Sankar Institute of Science Technology & Management, chathannoor, Kollam', 1, NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[CollegeResult] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([CouID], [DeptID], [Name], [EnteredBy], [EnteredOn], [UpdatedOn]) VALUES (1, 1, N'Master of Computer Application', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Credential] ON 
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (1, N'abdullasirajudeen@gmail.com', 0, N'H31BVL8T41', N'password', NULL, NULL, NULL, CAST(N'2020-02-03T08:16:48.467' AS DateTime), CAST(N'2020-02-03T08:16:48.467' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (2, N'nakhilark@gmail.com', 0, N'G1J7G0UR0N', N'password', NULL, NULL, NULL, CAST(N'2020-02-03T17:53:27.050' AS DateTime), CAST(N'2020-02-03T17:53:27.050' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (3, N'ansababdulla@gmail.com', 0, N'E8TXHDTPZO', N'Ansab', NULL, NULL, NULL, CAST(N'2020-02-03T17:58:50.427' AS DateTime), CAST(N'2020-02-03T17:58:50.427' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (4, N'devadathan1001@gmail.com', 0, N'IHT78995GX', N'Manthraa', NULL, NULL, NULL, CAST(N'2020-02-03T18:09:06.177' AS DateTime), CAST(N'2020-02-03T18:09:06.177' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (5, N'abihaisham@gmail.com', 0, N'LZCYNWCYXW', N'1we45yu89', NULL, NULL, NULL, CAST(N'2020-02-03T18:09:37.757' AS DateTime), CAST(N'2020-02-03T18:09:37.757' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (6, N'ananduanil565@gmail.com', 0, N'YPQU0KMMY0', N'qwerty', NULL, NULL, NULL, CAST(N'2020-02-03T18:11:25.037' AS DateTime), CAST(N'2020-02-03T18:11:25.037' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (7, N'revanzachmm@gmail.com', 0, N'6KITFNGFPB', N'123456', NULL, NULL, NULL, CAST(N'2020-02-03T18:23:14.677' AS DateTime), CAST(N'2020-02-03T18:23:14.677' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (8, N'hackbalandsignoff@gmail.com', 0, N'86WT03O24X', N'password', NULL, NULL, NULL, CAST(N'2020-02-03T18:50:28.900' AS DateTime), CAST(N'2020-02-03T18:50:28.900' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (9, N'sumeesh0770@gmail.com', 0, N'9FTQ9BF1QK', N'password', NULL, NULL, NULL, CAST(N'2020-02-04T04:19:13.153' AS DateTime), CAST(N'2020-02-04T04:19:13.153' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (10, N'divyadharman4697@gmail.com', 0, N'37HKUSB1UD', N'12121', NULL, NULL, NULL, CAST(N'2020-02-04T06:34:59.670' AS DateTime), CAST(N'2020-02-04T06:34:59.670' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (11, N'gallery@hackbal.com', 0, N'VERPA4R4CT', N'password', NULL, NULL, NULL, CAST(N'2020-02-07T07:27:59.037' AS DateTime), CAST(N'2020-02-07T07:27:59.037' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (12, N'news@hackbal.com', 0, N'8PUG53RX12', N'password', NULL, NULL, NULL, CAST(N'2020-02-07T07:33:02.897' AS DateTime), CAST(N'2020-02-07T07:33:02.897' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (13, N'nakhil.a1996@gmail.com', 0, N'Y9TBVAJW3E', N'password', NULL, NULL, NULL, CAST(N'2020-09-21T16:50:48.307' AS DateTime), CAST(N'2020-09-21T16:50:48.307' AS DateTime))
GO
INSERT [dbo].[Credential] ([CredID], [Email], [IsEmailVerify], [EmailVerificationCode], [Password], [PasswordResetCode], [LastLoginIP], [LastLoginOn], [EnteredOn], [UpdatedOn]) VALUES (14, N'nakhil.a1996@gmail.com', 0, N'720QL8230G', N'password', NULL, NULL, NULL, CAST(N'2020-09-22T03:05:49.343' AS DateTime), CAST(N'2020-09-22T03:05:49.343' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Credential] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([DeptID], [Name], [EnteredBy], [EnteredOn], [UpdatedOn]) VALUES (1, N'Master of Computer Application', NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[EventWiseResult] ON 
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (2, N'KADHAKALI  (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (3, N'GHAZAL (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (4, N'KADHAKALI  (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (5, N'THIRUVATHIRA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (6, N'STRINGED INSTRUMENT (VEENA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (7, N'GHAZAL (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (8, N'RECITATION (TAMIL)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (9, N'BHARATHANATYAM (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (10, N'FANCY DRESS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (11, N'CARTOONING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (12, N'WIND INSTRUMENT (EASTERN)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (13, N'STRINGED INSTRUMENT (EASTERN)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (14, N'ELOCUTION (TAMIL)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (15, N'RECITATION (ENGLISH )', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (16, N'LIGHT MUSIC (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (17, N'VRINDHAVADHYAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (18, N'PERCUSSION INSTRUMENT (EASTERN)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (19, N'BHARATHANATYAM (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (20, N'LIGHT MUSIC (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (21, N'GROUP SONG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (22, N'MAPPILAPATTU (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (23, N'MAPPILAPATTU (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (24, N'HINDUSTANI CLASSICAL VOCAL (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (25, N'HINDUSTANI CLASSICAL VOCAL (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (26, N'ESSAY WRITING (TAMIL)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (27, N'SHORT STORY WRITING (TAMIL)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (28, N'POETRY WRITING (TAMIL)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (29, N'DUFMUTTU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (31, N'RECITATION (HINDI)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (32, N'CHAAKYARKOOTHU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (33, N'KUCHUPPUDI (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (35, N'RECITATION (SANSKRIT )', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (36, N'NANGYAARKOOTHU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (37, N'OTTAMTHULLAL (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (38, N'COLLAGE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (39, N'DEBATE (ENGLISH)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (40, N'ELOCUTION ENGLISH', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (41, N'ELOCUTION HINDI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (42, N'OTTAMTHULLAL (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (43, N'KADHAPRASANGAM (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (44, N'KADHAPRASANGAM (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (45, N'PAINTING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (46, N'RANGOLI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (48, N'POETRY WRITING (ARABIC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (49, N'SHORT STORY WRITING (ARABIC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (50, N'SHORT STORY WRITING (SANSKRIT)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (51, N'POETRY WRITING  (SANSKRIT)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (52, N'DEBATE (HINDI)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (53, N'AKSHARASLOKAM (ARABIC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (54, N'AKSHARASLOKAM (MALAYALAM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (55, N'AKSHARASLOKAM (SANSKRIT)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (56, N'ARABANAMUTTU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (57, N'CLAY MODELLING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (58, N'MARGAMKALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (59, N'MOHINIYATTOM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (60, N'VATTAPPATTU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (61, N'ELOCUTION (ARABIC)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (62, N'ELOCUTION (SANSKRIT)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (63, N'ESSAY WRITING (HINDI)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (64, N'KUCHUPPUDI (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (65, N'POETRY WRITING  (HINDI)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (66, N'POSTER MAKING', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (68, N'RECITATION (ARABIC )', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (69, N'SHORT STORY WRITING (HINDI)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (70, N'SPOT PHOTOGRAPHY', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (71, N'CLASSICAL MUSIC (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (72, N'ESSAY WRITING (ENGLISH)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (73, N'KERALA NADANAM (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (74, N'POETRY WRITING  (ENGLISH)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (75, N'SHORT STORY WRITING (ENGLISH)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (76, N'FOLK DANCE (F) ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (77, N'WESTERN VOCAL (SOLO)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (78, N'FOLK DANCE (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (79, N'FOLK DANCE (TRANSGENDER)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (80, N'WIND INSTRUMENT (WESTERN)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (81, N'CLASSICAL MUSIC (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (82, N'CLASSICAL MUSIC (TRANSGENDER)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (83, N'DEBATE (MALAYALAM)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (84, N'FOLK SONG', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (85, N'GAZAL (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (86, N'GAZAL (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (87, N'GROUP DANCE', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (88, N'KATHAPRASANGAM (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (89, N'KATHAPRASANGAM (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (90, N'KATHAPRASANGAM (TRANSGENDER)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (91, N'KERALA NADANAM (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (92, N'KERALA NADANAM (GROUP)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (93, N'KOLKALI', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (94, N'KUCHIPUDI (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (95, N'KUCHIPUDI (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (96, N'MAPPILAPPATTU (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (97, N'MAPPILAPPATTU (M)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (98, N'MAPPILAPPATTU (TRANSGENDER)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (99, N'MIMICRY (TRANSGENDER)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (100, N'MIMICRY (F)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (101, N'PERCUSSION INSTRUMENT (CHENDA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (102, N'PERCUSSION INSTRUMENT (TABALA)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (103, N'PERCUSSION INSTRUMENT (WESTERN )', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (104, N'STRINGED INSTRUMENT (GUITAR)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (105, N'STRINGED INSTRUMENT (WESTERN)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (106, N'VANCHIPATTU', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (107, N'VRINDAVADHYAM', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
INSERT [dbo].[EventWiseResult] ([EvntID], [EventName], [FStudChestNumber], [FStudName], [FStudCollege], [SStudChestNumber], [SStudName], [SStudCollege], [TStudChestNumber], [TStudName], [TStudCollege], [EnteredOn], [UpdatedOn], [UpdatedBy], [EnteredBy]) VALUES (108, N'WESTERN VOCAL (GROUP)', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[EventWiseResult] OFF
GO
SET IDENTITY_INSERT [dbo].[FirstPrizeTbl] ON 
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 2, N'VISHNURAM S S', N'PG MTTM 1ST YEAR,  MAR IVANIOS TRIVANDRUM', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (3, 3, N'DEVANAND SP', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC, TVM', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (4, 3, N'SARANG SUNIL', N'SARASWATHY COLLEGE OF ARTS AND SCIENCE, VILAPPIL , TVM', NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (5, 4, N'ARYA H', N'2ND YEAR MA ENGLISH, UNIVERSITY COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (6, 4, N'KRISHNA AJITH', N'2ND YEAR BA ENGLISH, MAR IVANIOS COLLEGE NALANCHIRA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (7, 5, NULL, N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (8, 5, NULL, N'MAR IVANIOS, NALANCHIRA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (9, 5, NULL, N'SN COLLEGE WOMENS, KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (10, 5, NULL, N'ALL SAINTS COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (11, 6, N'KRITHI S RAJ', N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (12, 7, N'ATHIRA MURALI', N'GOVT WOMENS VAZHUTHAKKAD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (13, 7, N'SREENANDANA', N'ALL SAINTS COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (14, 7, N'AMRUTHA R', N'SNC KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (15, 8, N'KAREESHMA K SANTHOSH', N'GOVT WOMENS VAZHUTHAKADU', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (17, 9, N'RADHUL KRISHNA', N'GOVT SANSKRIT COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (18, 9, N'NEERAJ V S', N'ST MICHAELS CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (19, 9, N'VISHNU RAM', N'MAR IVANIOS', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (20, 10, N'ARYA H', N'UNIVERSITY COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (21, 10, N'LEKSHMI R KUMAR', N'A J COLLEGE OF SCIENCE AND TECHNOLOGY', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (22, 11, N'VIVEK RADHAKRISHNAN', N'GOVT LAW COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (23, 12, N'ANANTHA KRISHNAN S R', N'MAR GREGORIOUS COLLEGE OF LAW', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (24, 13, N'NANVANEETH KRISHNAN S', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (25, 14, N'ALAN C MAINZEN', N'UNIVERSITY COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (26, 15, N'R DEVI NANDANA', N'F M N COLLEGE  KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (27, 16, N'ATHIRA MURALI', N'GOVT WOMENS TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (28, 17, NULL, N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (29, 18, N'SREE KRISHNA GANESH', N'NATIONAL COLLEGE , MANACAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (30, 19, N'VAISHNAVI SUBHASH', N'KUMBALATHU SANKUPILLA MEMORIAL DEWASWOM BOARD COLLEGE, SASTHAMCOTTAH', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (31, 19, N'MALAVIKA S GOPAN', N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (32, 19, N'KRISHNA AJITH', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (34, 20, N'SARANG SUNIL', N'SARASWATHI COLLEGE OF ARTS AND SCIENCE, VILAPPIL, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (35, 21, NULL, N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (36, 22, N'AIFUNA NUJUM N', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (37, 22, N'AFNA SHANAVAS', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (38, 23, N'AZHAR SULFIKAR', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (39, 24, N'ATHIRA MURALI', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (40, 25, N'DEVANAND S P', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (41, 26, N'VINITHA V D', N'SREE NARAYANA COLLEGE CHEMPAZHANTHY', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (42, 27, N'SHARMILA B', N'KUCTE KUMARAPURAM TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (43, 28, N'NISHANTH G', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (44, 29, NULL, N'UIT NEYYATTINKARA TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (45, 29, NULL, N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (46, 31, N'GOPIKA RAMESH', N'INSTITUTE OF FASHION TECHNOLOGY KERALA,VELLIMON,KUNDARA, KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (47, 32, N'ANANTHAKRISHNAN A R', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (48, 33, N'RADHUL KRISHNA R', N'GOVT SANSKRIT COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (49, 33, N'NEERAJ V S', N'ST MICHAELS COLLEGE CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (50, 35, N'GOURI NANDANA B R', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (53, 35, N'AROMAL B S', N'MALAYANKEEZHU MADHAVAKAVI MEMORIAL GOVT ARTS AND SCIENCE COLLEGE, MALAYANKEEZHU,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (54, 36, N'KRISHNA AJITH', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (55, 36, N'ARYA H', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (56, 37, N'VISHNU RAM S S', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (57, 38, N'SIVANATH V', N'ST STEPHENS COLLEGE PATHANAPURAM,KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (65, 39, NULL, N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (66, 39, NULL, N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (67, 39, NULL, N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (68, 40, N'NABEEL P', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (69, 40, N'ANSHIKA PAUL', N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (70, 41, N'MANEESH A', N'SREE NARAYANA COLLEGE CHENGANNOOR', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (71, 42, N'KRISHNA AJITH', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (72, 43, N'SREEDEVI S', N'T K MADHAVAN MEMORIAL COLLEGE ,NANGIARKULANGARA, ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (73, 43, N'SIVAKAMI J B', N'S N COLLEGE SIVAGIRI VARKALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (74, 44, N'DEVANAND S P', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (75, 45, N'SANDRA V S', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (76, 46, N'ANJITHA B', N'NSS COLLEGE PANDALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (77, 48, N'SUMAYYA R', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (78, 49, N'SHAMSADALI M', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (79, 50, N'BALARAM H P', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (80, 51, N'AMMU MOHAN', N'KUCTE KUMARAPURAM TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (81, 52, NULL, N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (82, 53, N'NAFIA N', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (83, 54, N'GOURINANDANA B R', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (84, 55, N'GOURINANDANA B R', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (85, 56, NULL, N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (86, 57, N'M M ALGIN', N'C S I INSTITUTE OF LEGAL STUDIES , CHERUVARAKONAM, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (87, 58, NULL, N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (88, 59, N'MALAVIKA S GOPAN', N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (89, 59, N'PARVATHY R', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (90, 60, NULL, N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (91, 60, NULL, N'S N COLLEGE SIVAGIRI VARKALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (92, 60, NULL, N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (93, 61, N'SHAMSADALI M', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (94, 62, N'ARJUN K V', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (95, 62, N'ASHA E', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (96, 63, N'ANUSHA A S', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (97, 64, N'MALAVIKA S GOPAN', N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (98, 64, N'PARVATHY R.', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (99, 65, N'RAJIKA J R', N'SREE NARAYANA COLLEGE FOR WOMEN KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (100, 66, N'DHANUSH BABU', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (101, 68, N'AFNA SHANAVAS', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (102, 69, N'ARYA KRISHNAN L L	', N'GOVT ARTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (103, 70, N'TINSON LOPEZ', N'ST  XAVIERS COLLEGE THUMBA THIRUVANANDAPURAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (104, 71, N'SANGEETH SUNIL', N'GOVT ARTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (105, 72, N'AAYISHA S', N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (106, 72, N'HASEEBA H', N'K T C T COLLEGE OF ARTS AND SCIENCE KALLAMBALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (107, 72, N'MEENU ANN THOMAS', N'ST JOHNS COLLEGE ANCHAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (108, 72, N'SRUTHI SREEKANTAN	', N'GOVT COLLEGE KARIAVATTOM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (109, 73, N'VISHNURAM S S', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (110, 73, N'NEERAJ V S', N'ST MICHAELS COLLEGE CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (111, 74, N'ANANTHU NARAYANAN I B', N'CHRIST NAGAR COLLEGE MARANALLOOR TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (112, 74, N'MEKHA RACHEL S.', N'CHRISTIAN COLLEGE CHENGANNOOR ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (113, 74, N'SREEDEVI', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (114, 74, N'ANAGHA SAJU', N'INSTITUTE OF FASHION TECHNOLOGY KERALA,VELLIMON,KUNDARA, KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (115, 75, N'AKSHAY A. S', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (116, 75, N'ARSHA SAROJ', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (117, 75, N'RESHMA VIJAYAN', N'UIT PARAVOOR', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (118, 75, N'MEGHANA NAIR P. S', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (119, 76, N'VAISHNAVI SUBHASH	', N'KUMBALATHU SANKUPILLA MEMORIAL DEWASWOM BOARD COLLEGE, SASTHAMCOTTAH', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (120, 76, N'DEVIKA R S', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (121, 76, N'ARATHI.B', N'NSS ARTS AND SCIENCE COLLEGE PERAYAM KUNDARA KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (122, 76, N'MALAVIKA S GOPAN', N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (123, 77, N'EVUGIN EMMANUEL E', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (124, 77, N'SREELEKSHMI S', N'SANATANA DHARMA COLLEGE SANATHANAPURAM ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (125, 78, N'NEERAJ V S', N'ST MICHAELS COLLEGE CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (126, 79, N'NADHIRA MEHRIN', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (127, 80, N'ANANTHAKRISHNAN S R', N'MAR GREGORIOS COLLEGE , NALANCHIRA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (128, 81, N'P ANNAPOORNA', N'Sree Swathi Thirunal College of Music, , Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (129, 81, N'THEERTHA NAIR A', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (130, 81, N'GOPIKA S', N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (131, 81, N'HARITHA S JYOTHI	', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (132, 82, N'AHLAD E P', N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (133, 83, NULL, N'The Kerala Law Academy Law College, Thiruvananthapuram, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (134, 84, NULL, N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (135, 85, N'ATHIRA MURALI', N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (136, 85, N'SREENANDANA HARI	', N'All Saint`s College, Chakai, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (137, 85, N'AMRITHA R', N'S N College, , Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (138, 86, N'DEVANAND S P', N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (139, 86, N'SARANG SUNIL', N'Saraswathi College of Arts and Science, Vilappil, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (140, 87, NULL, N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (141, 87, NULL, N'All Saint`s College, Chakai, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (142, 88, N'SREEDEVI S', N'T K Madhavan Memorial College, Nangiarkulangara', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (143, 88, N'SIVAKAMI J B', N'S N College, Sivagiri, Varkala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (144, 89, N'DEVANAND S P', N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (145, 90, N'MUHAMMED NAJEEB C', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (146, 90, N'AHLAD E P', N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (147, 91, N'ARYA H', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (148, 91, N'PARVATHY R.', N'Mahatma Gandhi College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (149, 91, N'MALAVIKA S GOPAN', N'H.H.M.S.P.B. N.S.S. College for Women, Neeramankara, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (150, 91, N'PARVATHI P L', N'S N College, Sivagiri, Varkala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (151, 92, NULL, N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (152, 93, NULL, N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (153, 94, N'MALAVIKA S GOPAN', N'H.H.M.S.P.B. N.S.S. College for Women, Neeramankara, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (154, 94, N'PARVATHY R.', N'Mahatma Gandhi College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (155, 95, N'RADHUL KRISHNAN R', N'Govt. Sanskrit College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (156, 95, N'NEERAJ V S', N'St Michaels College, Cherthala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (157, 96, N'AIFUNA NUJUM N', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (158, 96, N'AFNA SHANAVAS', N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (159, 97, N'AZHAR SULFIKAR', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (160, 98, N'MUHAMMED NAJEEB C', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (161, 99, N'MUHAMMED NAJEEB C	', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (162, 100, N'ANNADA A', N'Govt. College, Attingal', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (163, 101, N'RAHUL SURESH', N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (164, 101, N'KAVYA KRISHNAN.A.K', N'Milad-E-Sherif Memorial College, Kayamkulam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (165, 102, N'RAHUL S R NAIR', N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (166, 102, N'ASWATHY S', N'Christian College, Chengannur', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (167, 103, N'JITHU Y S', N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (168, 104, N'OMAR ZAKHARIA HISHAM', N'T K M College of Arts and Science, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (169, 105, N'AUGUSTINE SOORAJ K J	', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (170, 106, NULL, N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (171, 106, NULL, N'Sree Narayana Guru College of Legal Studies, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (172, 107, NULL, N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[FirstPrizeTbl] ([FIrstPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (173, 108, NULL, N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[FirstPrizeTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[ImageGallery] ON 
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (4, N'gallery2.jpg', N'Image Upload ', 1, CAST(N'2020-02-25T10:10:39.007' AS DateTime), CAST(N'2020-02-25T10:10:39.007' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (5, N'gallery3.jpg', NULL, 1, CAST(N'2020-02-25T10:13:54.443' AS DateTime), CAST(N'2020-02-25T10:13:54.443' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (6, N'gallery4.jpg', NULL, 1, CAST(N'2020-02-25T10:14:04.337' AS DateTime), CAST(N'2020-02-25T10:14:04.337' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (7, N'gallery5.jpg', NULL, 1, CAST(N'2020-02-25T10:14:13.087' AS DateTime), CAST(N'2020-02-25T10:14:13.087' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (8, N'gallery6.jpg', NULL, 1, CAST(N'2020-02-25T10:14:22.193' AS DateTime), CAST(N'2020-02-25T10:14:22.193' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (24, N'gallery9.jpg', NULL, 1, CAST(N'2020-03-03T02:23:27.697' AS DateTime), CAST(N'2020-03-03T02:23:27.697' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (40, N'gallery7.jpg', NULL, 1, CAST(N'2020-03-04T03:42:08.107' AS DateTime), CAST(N'2020-03-04T03:42:08.107' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (41, N'gallery1.jpg', NULL, 1, CAST(N'2020-03-04T03:42:23.247' AS DateTime), CAST(N'2020-03-04T03:42:23.247' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (42, N'gallery8.jpg', NULL, 1, CAST(N'2020-03-04T11:32:47.407' AS DateTime), CAST(N'2020-03-04T11:32:47.407' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (43, N'gallery10.jpg', NULL, 1, CAST(N'2020-03-05T05:46:48.457' AS DateTime), CAST(N'2020-03-05T05:46:48.457' AS DateTime))
GO
INSERT [dbo].[ImageGallery] ([ImGaID], [ImgURL], [ImgAlt], [UploadedBy], [EnteredOn], [UpdatedOn]) VALUES (44, N'Group_dance_at_Kerala_school_kalolsavam_2019.jpg', NULL, 1, CAST(N'2020-09-21T16:55:23.807' AS DateTime), CAST(N'2020-09-21T16:55:23.807' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[ImageGallery] OFF
GO
SET IDENTITY_INSERT [dbo].[News] ON 
GO
INSERT [dbo].[News] ([NewsID], [NewsTitle], [NewsInfo], [NewsLink], [UpdatedBy], [EnteredOn], [UpdatedOn]) VALUES (8, N'Postponded Closing Session', N'The closing session of the Kerala University Youth Festival, to be held on March 7, has been postponed due to some technical reasons.', NULL, 2, CAST(N'2020-03-07T14:52:33.370' AS DateTime), CAST(N'2020-03-07T14:52:33.370' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[News] OFF
GO
SET IDENTITY_INSERT [dbo].[ParticipantFeMaleResult] ON 
GO
INSERT [dbo].[ParticipantFeMaleResult] ([PartFeMaleResultID], [StudName], [CollegeName], [StudPoint], [EnteredOn], [UpdatedOn]) VALUES (1, N'Naila S', N'University College TVM', 136, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ParticipantFeMaleResult] OFF
GO
SET IDENTITY_INSERT [dbo].[ParticipantMaleResult] ON 
GO
INSERT [dbo].[ParticipantMaleResult] ([PartMaleResultID], [StudName], [CollegeName], [StudPoint], [EnteredOn], [UpdatedOn]) VALUES (1, N'Arun Vijay', N'CHMM college', 125, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[ParticipantMaleResult] OFF
GO
SET IDENTITY_INSERT [dbo].[PrgShedule] ON 
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (8, N'Flag Hoisting', NULL, CAST(N'2020-03-02' AS Date), N'4 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (9, N'Inauguration', NULL, CAST(N'2020-03-02' AS Date), N'5pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (10, N'Thiruvathira', NULL, CAST(N'2020-03-02' AS Date), N'7pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (11, N'Kadhakali (M)', NULL, CAST(N'2020-03-02' AS Date), N'7pm', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (12, N'Kadhakali (F)', NULL, CAST(N'2020-03-02' AS Date), N'9pm', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (13, N'Gazal (M)', NULL, CAST(N'2020-03-02' AS Date), N'7pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (14, N'Gazal (F)', NULL, CAST(N'2020-03-02' AS Date), N'9pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (15, N'Bharathanatyam (M)', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (18, N'Bharathanatyam (F)', NULL, CAST(N'2020-03-03' AS Date), N'1 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (19, N'Fancy Dress', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (20, N'Vrindhavandhyam', NULL, CAST(N'2020-03-03' AS Date), N'1 pm', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (21, N'Light Music (F)', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (22, N'Light Music (M)', NULL, CAST(N'2020-03-03' AS Date), N'1 pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (23, N'Group Song', NULL, CAST(N'2020-03-03' AS Date), N'3 pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (25, N'Veena', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'UNIVERSITY BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (26, N'Stringed Instrument (Eastern)', NULL, CAST(N'2020-03-03' AS Date), N'11 am', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'UNIVERSITY BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (27, N'Wind Instrument (Eastern)', NULL, CAST(N'2020-03-03' AS Date), N'1 pm', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'UNIVERSITY BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (28, N'Percussion Instrument (Eastern)', NULL, CAST(N'2020-03-03' AS Date), N'3 pm', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'UNIVERSITY BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (29, N'Mappilapattu (F)', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE CHEMBAZHANTHI', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (30, N'Mappilapattu (M)', NULL, CAST(N'2020-03-03' AS Date), N'11 am', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE CHEMBAZHANTHI', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (31, N'Hindustani Classical Vocal (F)', NULL, CAST(N'2020-03-03' AS Date), N'1 pm', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE CHEMBAZHANTHI', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (33, N'Hindustani Classical Vocal (M)', NULL, CAST(N'2020-03-03' AS Date), N'3 pm', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE CHEMBAZHANTHI', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (34, N'Recitation Tamil', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 06 (FATHIMA LATHEEF NAGAR)', N'UNIVERSITY BEd COLLEGE, SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (35, N'Elocution Tamil', NULL, CAST(N'2020-03-03' AS Date), N'11 am', NULL, N'STAGE 06 (FATHIMA LATHEEF NAGAR)', N'UNIVERSITY BEd COLLEGE, SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (36, N'Recitation English', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (37, N'Elocution English', NULL, CAST(N'2020-03-03' AS Date), N'10 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (38, N'Debate (ENGLISH)', NULL, CAST(N'2020-03-03' AS Date), N'11 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (39, N'Essay Writing Tamil', NULL, CAST(N'2020-03-03' AS Date), N'9 am', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (40, N'Poetry Writing Sanskrit', NULL, CAST(N'2020-03-03' AS Date), N'10 am', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (41, N'Poetry Writing Malayalam', NULL, CAST(N'2020-03-03' AS Date), N'11 am', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (42, N'Poetry Writing Hindi', NULL, CAST(N'2020-03-03' AS Date), N'11.30 am', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (43, N'Short Story writing Tamil', NULL, CAST(N'2020-03-03' AS Date), N'12 noon', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (44, N'Essay Writing Hindi', NULL, CAST(N'2020-03-03' AS Date), N'1.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (45, N'Short Story writing Sanskrit', NULL, CAST(N'2020-03-03' AS Date), N'2.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (46, N'Poetry Writing Tamil', NULL, CAST(N'2020-03-03' AS Date), N'3.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (47, N'Short Story writing Malayalam', NULL, CAST(N'2020-03-03' AS Date), N'4.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (48, N'Short Story writing Hindi', NULL, CAST(N'2020-03-03' AS Date), N'5.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (49, N'Essay Writing Malayalam', NULL, CAST(N'2020-03-03' AS Date), N'6.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (50, N'Cartooning', NULL, CAST(N'2020-03-03' AS Date), N'9.00 am', NULL, N'STAGE 09 (GOURI LANKESH NAGAR)', N'SN COLLEGE ARTS BLOCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (51, N'Collage', NULL, CAST(N'2020-03-03' AS Date), N'11.00 pm', NULL, N'STAGE 09 (GOURI LANKESH NAGAR)', N'SN COLLEGE ARTS BLOCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (52, N'Painting', NULL, CAST(N'2020-03-03' AS Date), N'12.00 pm', NULL, N'STAGE 09 (GOURI LANKESH NAGAR)', N'SN COLLEGE ARTS BLOCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (53, N'Spot Photography', NULL, CAST(N'2020-03-03' AS Date), N'1.00 pm', NULL, N'STAGE 09 (GOURI LANKESH NAGAR)', N'SN COLLEGE ARTS BLOCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (54, N'Mohiniyattom', NULL, CAST(N'2020-03-04' AS Date), N'9.00 am', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (55, N'Margamkali', NULL, CAST(N'2020-03-04' AS Date), N'12.00 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (56, N'Kuchuppudi (M)', NULL, NULL, N'9.00 am', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (57, N'Kuchuppudi (F)', NULL, CAST(N'2020-03-04' AS Date), N'12.00 pm', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (58, N'Chaakyarkoothu', NULL, CAST(N'2020-03-04' AS Date), N'9 am', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (59, N'Nangyaarkoothu', NULL, CAST(N'2020-03-04' AS Date), N'11.00 am', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (60, N'Ottamthullal (M)', NULL, CAST(N'2020-03-04' AS Date), N'1.00 pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (61, N'Ottamthullal (F)', NULL, CAST(N'2020-03-04' AS Date), N'3.00 pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (62, N'Kadhaprasangam (F)', NULL, CAST(N'2020-03-04' AS Date), N'9.00 am', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (63, N'Kadhaprasangam (M)', NULL, CAST(N'2020-03-04' AS Date), N'12.00 pm', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (64, N'Duffmuttu', NULL, CAST(N'2020-03-04' AS Date), N'9.00 am', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE    ', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (65, N'Vattapattu', NULL, CAST(N'2020-03-04' AS Date), N'12 noon', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE    ', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (66, N'Arbanamuttu', NULL, CAST(N'2020-03-04' AS Date), N'3.00 pm', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE    ', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (67, N'Recitation Hindi', NULL, CAST(N'2020-03-04' AS Date), N'9.00 am', NULL, N'STAGE 06 (FATHIMA LATHEEF NAGAR)', N'GOVT.BEd COLLEGE, SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (68, N'Elocution Hindi', NULL, CAST(N'2020-03-04' AS Date), N'11.00 am', NULL, N'STAGE 06 (FATHIMA LATHEEF NAGAR)', N'GOVT.BEd COLLEGE, SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (69, N'Debate Hindi', NULL, CAST(N'2020-03-04' AS Date), N'1.00 pm', NULL, N'STAGE 06 (FATHIMA LATHEEF NAGAR)', N'GOVT.BEd COLLEGE, SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (70, N'Recitation Sanskrit', NULL, CAST(N'2020-03-04' AS Date), N'9.00 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (71, N'Aksharashlokam Sanskrit', NULL, CAST(N'2020-03-04' AS Date), N'10.00 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (72, N'Elocution Sanskrit', NULL, CAST(N'2020-03-04' AS Date), N'11.00 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (73, N'Recitation Arabic', NULL, CAST(N'2020-03-04' AS Date), N'11.30 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (74, N'Aksharaslokam Arabic', NULL, CAST(N'2020-03-04' AS Date), N'12 noon', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (75, N'Elocution Arabic', NULL, CAST(N'2020-03-04' AS Date), N'1.00 pm', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (76, N'Aksharaslokam Malayalam', NULL, CAST(N'2020-03-04' AS Date), N'2.00 pm', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (77, N'Poetry Writing Arabic', NULL, CAST(N'2020-03-04' AS Date), N'9.00 am', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (78, N'Poetry Writing English', NULL, CAST(N'2020-03-04' AS Date), N'11.00 am', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (79, N'Short Story writing Arabic', NULL, CAST(N'2020-03-04' AS Date), N'12 noon', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (80, N'Short Story writing english', NULL, CAST(N'2020-03-04' AS Date), N'1.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (81, N'Essay Writing English', NULL, CAST(N'2020-03-04' AS Date), N'2.00 pm', NULL, N'STAGE 08 (AMBEDKAR NAGAR)', N'SN COLLEGE FOR ADVANCED STUDIES SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (82, N'Rangoli', NULL, CAST(N'2020-03-04' AS Date), N'9.00 am', NULL, N'STAGE 09 (GOURI LANKESH NAGAR)', N'SN COLLEGE ARTS BLOCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (83, N'Poster Making', NULL, CAST(N'2020-03-04' AS Date), N'11.00 am', NULL, N'STAGE 09 (GOURI LANKESH NAGAR)', N'SN COLLEGE ARTS BLOCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (84, N'Clay Modeling', NULL, CAST(N'2020-03-04' AS Date), N'1.00 pm', NULL, N'STAGE 09 (GOURI LANKESH NAGAR)', N'SN COLLEGE ARTS BLOCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (85, N'Folk Dance (F)', NULL, CAST(N'2020-03-05' AS Date), N'9.00 am', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (86, N'Folk Dance (M)', NULL, CAST(N'2020-03-05' AS Date), N'11.00 am', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (87, N'Group Dance', NULL, CAST(N'2020-03-05' AS Date), N'1.00 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (88, N'Keralanadanam (M)', NULL, CAST(N'2020-03-05' AS Date), N'9.00 am', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (89, N'Keralanadanam (F)', NULL, CAST(N'2020-03-05' AS Date), N'11.00 am', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (90, N'Keralanadanam Group', NULL, CAST(N'2020-03-05' AS Date), N'1.00 pm', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (91, N'Stringed Instrument (Western)', NULL, CAST(N'2020-03-05' AS Date), N'9.00 am', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (92, N'Wind Instrument (Western)', NULL, CAST(N'2020-03-05' AS Date), N'11.00 am', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (93, N'Percussion Instrument (Western)', NULL, CAST(N'2020-03-05' AS Date), N'1.00 pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (94, N'Guitar', NULL, CAST(N'2020-03-05' AS Date), N'2.00 pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (95, N'Classical Music(M)', NULL, CAST(N'2020-03-05' AS Date), N'9.00 am', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (96, N'Classical Music(F)', NULL, CAST(N'2020-03-05' AS Date), N'11.00 am', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (97, N'Folk Song', NULL, CAST(N'2020-03-05' AS Date), N'9.00 am', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE    ', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (98, N'Vanchipattu', NULL, CAST(N'2020-03-05' AS Date), N'11.00 am', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE    ', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (99, N'Western Vocal Solo', NULL, CAST(N'2020-03-05' AS Date), N'9.00 am', NULL, N'STAGE 06 (FATHIMA LATHEEF NAGAR)', N'GOVT.BEd COLLEGE, SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (100, N'Western Vocal Group', NULL, CAST(N'2020-03-05' AS Date), N'11.00 am', NULL, N'STAGE 06 (FATHIMA LATHEEF NAGAR)', N'GOVT.BEd COLLEGE, SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (101, N'Elocution Malayalam', NULL, CAST(N'2020-03-05' AS Date), N'9.00 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (102, N'Debate Malayalam', NULL, CAST(N'2020-03-05' AS Date), N'11.00 am', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (103, N'Recitation Malayalam', NULL, CAST(N'2020-03-05' AS Date), N'1.00 pm', NULL, N'STAGE 07 (ROHINGYAN)', N'SN COLLEGE SEMINAR HALL', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (104, N'Kolkali', NULL, CAST(N'2020-03-06' AS Date), N'9.00 am', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (105, N'Oppana', NULL, CAST(N'2020-03-06' AS Date), N'12 noon', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (106, N'Mime', NULL, CAST(N'2020-06-04' AS Date), N'9.00 am', NULL, N'STAGE 02 (ALAN KURDI)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (107, N'Skit', NULL, CAST(N'2020-03-06' AS Date), N'12.00 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (108, N'Ganamela', NULL, CAST(N'2020-03-06' AS Date), N'9.00 am', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (109, N'Chenda', NULL, CAST(N'2020-03-06' AS Date), N'11.00 am', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (110, N'Thabla', NULL, CAST(N'2020-03-06' AS Date), N'1.00 pm', NULL, N'STAGE 03 (SHAHEEN BAGH)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (111, N'Mimicry (M)', NULL, CAST(N'2020-03-06' AS Date), N'9.00 am', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (112, N'Mimicry (F)', NULL, CAST(N'2020-03-06' AS Date), N'11.00 am', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (113, N'Mono Act (M)', NULL, CAST(N'2020-03-06' AS Date), N'1.00 pm', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (114, N'Mono Act (F)', NULL, CAST(N'2020-03-06' AS Date), N'3.00 pm', NULL, N'STAGE 04 (ABHIMANYU NAGAR)', N'GOVT.BEd COLLEGE', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (115, N'Quiz Pre Final', NULL, CAST(N'2020-03-06' AS Date), N'9.00 am', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE    ', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (116, N'Quiz Final', NULL, CAST(N'2020-03-06' AS Date), N'11.00 am', NULL, N'STAGE 05 (AJAY NAGAR)', N'SN COLLEGE    ', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (117, N'Valedictory function', NULL, CAST(N'2020-03-07' AS Date), N'4.00 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (118, N'Valedictory function', NULL, CAST(N'2020-03-07' AS Date), N'4.00 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (119, N'Prize Distribution', NULL, CAST(N'2020-03-07' AS Date), N'5.00 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
INSERT [dbo].[PrgShedule] ([SheduleID], [EventName], [EventCode], [SheduleDate], [StartingTime], [EndingTime], [Stage], [CollegeName], [CoOrdinatorName], [CoOrdinatorNumber], [UpdatedOn], [UpdatedBy], [EnteredOn], [EnteredBy]) VALUES (120, N'Variety of entertainments by festival winners', NULL, CAST(N'2020-03-07' AS Date), N'6.00 pm', NULL, N'STAGE 01   (ARTICLE 14)', N' GCK', NULL, NULL, NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[PrgShedule] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 
GO
INSERT [dbo].[Role] ([RoleID], [Name], [EnteredOn], [UpdatedOn]) VALUES (1, N'Front Volunteer', NULL, NULL)
GO
INSERT [dbo].[Role] ([RoleID], [Name], [EnteredOn], [UpdatedOn]) VALUES (2, N'Stage Volunteer', NULL, NULL)
GO
INSERT [dbo].[Role] ([RoleID], [Name], [EnteredOn], [UpdatedOn]) VALUES (3, N'News Updater', NULL, NULL)
GO
INSERT [dbo].[Role] ([RoleID], [Name], [EnteredOn], [UpdatedOn]) VALUES (4, N'Gallery Updater', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[SecondPrizeTbl] ON 
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (2, 2, N'ABHINAND A', N'2ND YEAR BSC CHEMISTRY, BISHOP MOORE MAVELIKKARA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (3, 4, N'SOUPARNIKA PRADEEP', N'1ST YEAR MA ENGLISH , ALL SAINTS COLLEGE CHAKA TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (4, 3, N'SALCHIM KARAKAT', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (5, 3, N'AROMAL SHAJI', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (6, 5, NULL, N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (7, 5, NULL, N' SREE SWATHI THIRUNAL COLLEGE OF MUSIC', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (8, 5, NULL, N'SARASWATHY COLLEGE OF ARTS AND SCIENCE VILAPPIL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (9, 6, N'SREESHMA M S', N'SWATHI THIRUNNAL COLLEGE OF MUSIC', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (10, 6, N'APARNA J S', N'M G COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (11, 7, N'DIVYANJANA', N'MAR IVANIOS', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (12, 7, N'K S SAI MALAVIKA', N'WOMEN''S TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (13, 7, N'VARSHA S NAIR', N'KARYAVATTAM CAMPUS', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (14, 8, N'GEETHU KRISHNA G', N'NSS COLLEGE PANTHALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (15, 9, N'VINIL J', N'SREE SWATHI THIRUNAL COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (16, 10, N'SREEDEVI S', N'T K MADHAVAN MEMORIAL COLLEGE ALAPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (17, 11, N'SAI KRIHNA R', N'SRI SATHYA SAI ARTS AND SCIENCE COLLEGE THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (18, 12, N'MILAN S', N'SREE SWATHI THIRUNAL COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (19, 12, N'AKHIL A', N'MAR IVANIOS COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (20, 13, N'SANDRA DEV', N'SREE NARAYANA COLLEGE PUNALUR', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (21, 13, N'SANGEETH SUNIL', N'GOVT ARTS COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (22, 13, N'ADITHYAN RENJITH', N'MAR IVANIOS COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (23, 14, N'R SUJI MOL', N'CSI INSTITUTE OF LEGAL STUDIES CHERUVARAKANAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (24, 15, N'ARRAVIND L', N'SRI SATHYA SAI COLLEGE OF ARTS AND SCIENCE THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (25, 16, N'SWATHY VIJAYAN', N'BISHOP MOOR COLLEGE MAVELIKKARA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (26, 17, NULL, N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (27, 18, N'SRAVAN S R', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (28, 19, N'MEENAKSHI S NAIR', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (29, 19, N'PARVATHY R', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (30, 20, N'ADWAITH R RAJESH', N'UIT KURAVANKONAM ,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (31, 21, NULL, N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (32, 22, N'RISHANA A', N'SN COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (33, 22, N'GOWRI J S', N'GOVT COLLEGE NEDUMANGAD, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (35, 23, N'ASIF RAWTHER', N'MAR GREGORIOS COLLEGE OF LAW, NALANCHIRA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (36, 24, N'ABHINANDA M KUMAR', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (37, 25, N'AJAYKRISHNA T', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (38, 8, N'PRAVEEN M', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (39, 26, N'RAMALAKSHMI N', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (40, 27, N'SARATH S', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (41, 28, N'RAJA D', N'GOVT COLLEGE KARIAVATTOM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (42, 29, NULL, N'A J COLLEGE OF SCIENCE AND TECHNOLOGY THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (43, 29, NULL, N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (44, 31, N'PARVATHY S', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (45, 31, N'AKSHARA RAJ P S', N'SRI SATHYA SAI COLLEGE OF ARTS AND SCIENCE THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (46, 32, N'ATHUL ANAND', N'NSS LAW COLLEGE KOTTIYAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (47, 33, N'VISHNU RAM S S', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (48, 35, N'MEERA KRISHNAN R L', N'S N COLLEGE FOR WOMEN KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (49, 36, N'CHITRA SIVAKAMI', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (50, 37, N'NEERAJ V S', N'ST MICHAELS COLLEGE CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (51, 38, N'ARYA M G', N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (53, 39, NULL, N'BISHOP MOOR COLLEGE MAVELIKKARA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (54, 39, NULL, N'SRI SATHYA SAI COLLEGE OF ARTS AND SCIENCE THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (60, 39, NULL, N'SREE AYYAPPA COLLEGE  THIRUVANVANDOOR PATHANAMTHITTA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (61, 40, N'JIYYAD MOHAMMED SHAHUL HAMEED', N'GOVT ARTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (62, 40, N'AKHIL D VARGHESE', N'BISHOP MOOR COLLEGE MAVELIKKARA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (63, 40, N'ANUSRUTHI S S', N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (65, 41, N'ANUBHAV.P.S', N'SREE NARAYANA GURU OLLEGE OF ADVANCED STUDIES CHEMPAZHANTHY', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (66, 42, N'APARNA K P', N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (67, 42, N'APSRNA HARI', N'SREE NARAYANA GURU COLLEGE OF LEGAL STUDIES KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (68, 43, N'ANNADA A', N'GOVT COLLEGE ATTINGAL TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (69, 43, N'SANIKA SUNIL', N'SREE NARAYANA COLLEGE CHEMPAZHANTHY', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (70, 44, N'ARJUN S NAIR', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (71, 45, N'DHANUSH BABU', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (72, 46, N'CHANDANA K', N'THE KERALA LAW ACADEMY LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (73, 46, N'ARYA M G', N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (74, 48, N'SHAMSADALI M', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (75, 49, N'SHAMIL A T', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (76, 50, N'KRISHNAPRIYA S', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (77, 50, N'NEETHU KRISHNAN J. R', N'S N COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (78, 50, N'ANJANA S', N'GOVT SANSKRIT COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (79, 51, N'GAYATHRI L', N'GOVT COLLEGE OF TEACHER EDUCATION THYCAUD TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (80, 52, NULL, N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (81, 53, N'FOUZIA N', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (82, 54, N'INDU T R', N'BUDDA COLLEGE OF TEACHER EDUCATION CHEPPAD ALAPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (83, 55, N'LEKSHMI S PRASAD', N'KUMBALATHU SANKUPILLA MEMORIAL DEWASWOM BOARD COLLEGE, SASTHAMCOTTAH', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (84, 55, N'INDU T R', N'BUDDA COLLEGE OF TEACHER EDUCATION CHEPPAD ALAPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (85, 56, NULL, N'NATIONAL COLLEGE , MANACAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (86, 57, N'MEENAKSHI S', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (87, 58, NULL, N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (88, 58, NULL, N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (89, 59, N'DEVIKA R S', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (90, 60, NULL, N'UIT NEYYATTINKARA TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (91, 60, NULL, N'GOVT ARTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (92, 61, N'AJU SHAHID A', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (93, 62, N'GOVIND S POTTY', N'KUCTE KUMARAPURAM TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (94, 63, N'VEENA R', N'NSS COLLEGE PANDALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (95, 63, N'SHIJIN SHAJI', N'CHRISTIAN COLLEGE CHENGANNOOR ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (96, 63, N'LEKSHMI M', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (97, 64, N'JUMANA HASEENA S', N'COLLEGE OF APPLIED SCIENCES MAVELIKKARA ALAPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (98, 65, N'SHARIKA M S', N'GOVT COLLEGE ATTINGAL TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (99, 65, N'PARVATHY .G', N'MGM COLLEGE FOR ARTS AND SCIENCE KANIYAPURAM , TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (100, 66, N'LUBABATH UMMAR', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (101, 68, N'ASHMI SHARAFUDEEN', N'SREE NARAYANA COLLEGE FOR WOMEN KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (102, 69, N'SUNAINA NAIR S S', N'SREE AYYAPPA COLLEGE  THIRUVANVANDOOR PATHANAMTHITTA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (103, 69, N'RAJIKA J R', N'SREE NARAYANA COLLEGE FOR WOMEN KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (104, 70, N'MEGHUL DAS', N'T K MADHAVAN MEMORIAL COLLEGE ,NANGIARKULANGARA, ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (105, 71, N'AROMAL BS', N'MALAYANKEEZHU MADHAVAKAVI MEMORIAL GOVT ARTS AND SCIENCE COLLEGE, MALAYANKEEZHU,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (106, 71, N'SRAVAN S R', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (107, 72, N'NISHANTH P', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (108, 73, N'ADITHYAN THRIDEEP KUMAR', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (109, 73, N'KARTHIK R.', N'S N COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (110, 74, N'ASWIN AJITHKUMAR', N'SREE NARAYANA GURU OLLEGE OF ADVANCED STUDIES CHEMPAZHANTHY', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (111, 74, N'MADEENA P S', N'UIT KALLARA VAMANAPURAM TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (112, 74, N'MEGHA S J KUMAR', N'NSS COLLEGE PANDALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (113, 75, N'JYOTHIKA P', N'SREE NARAYANA COLLEGE FOR WOMEN KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (114, 75, N'KRIPA GLADYS MENA', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (115, 75, N'ANN MARIA ABRAHAM', N'NSS COLLEGE CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (116, 75, N'ALEX BABU', N'GOVT COLLEGE AMBALAPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (117, 76, N'ARUNIMA R S', N'GOVT COLLEGE ATTINGAL TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (118, 76, N'SONA SUNIL', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (119, 77, N'AFNA SHANAVAS', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (120, 78, N'RADHUL KRISHNA R', N'GOVT SANSKRIT COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (121, 79, N'MANUSHA AAHLAD', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (122, 80, N'VISAL E BABU', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (123, 81, N'KANMONY S', N'Sree Swathi Thirunal College of Music, , Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (124, 81, N'POOJA N.J', N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (125, 81, N'ANJANA J.V.KRISHNA', N'Christian College, Chengannur, Alappuzha', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (126, 81, N'SREENANDANA HARI', N'All Saint`s College, Chakai, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (127, 81, N'SWATHI VIJIYAN', N'Bishop Moore College, Mavelikara, Alappuzha', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (128, 83, NULL, N'S N College, , Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (129, 84, NULL, N'Sree Narayana Guru College of Legal Studies, Kollam, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (130, 84, NULL, N'Mahatma Gandhi College , Kesavadasapuram, Thiruvananthapuram	', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (131, 84, NULL, N'University College, , Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (132, 85, N'DIVYANJANA', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (133, 85, N'K S SAI MALAVIKA', N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (134, 3, N'VARSHA S NAIR', N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (135, 86, N'SALCHIM KARAKAT', N'Mahatma Gandhi College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (136, 86, N'AROMAL SHAJI', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (137, 87, NULL, N'H.H.M.S.P.B. N.S.S. College for Women, Neeramankara, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (138, 87, NULL, N'Sree Narayana Guru College of Legal Studies, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (139, 87, NULL, N'Christ College, Vizhinjam, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (140, 87, NULL, N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (141, 88, N'ANNADA A', N'Govt. College, Attingal', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (142, 88, N'SANIKA SUNIL', N'Sree Narayana College, Chempazhanthy, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (143, 89, N'ARJUN S NAIR', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (144, 91, N'SURABHI S', N'Sree Narayana College for Women, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (145, 91, N'DEVIKA R S', N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (146, 91, N'GANGA S KUMAR	', N'Sree Narayana College, Cherthala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (147, 91, N'AMRITHA M S', N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (148, 91, N'ARATHI.B', N'NSS Arts and Science College, Perayam, Kundara, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (149, 92, NULL, N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (150, 93, NULL, N'C.H.M.M College of Advanced Studies, Chavarkode, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (151, 93, NULL, N'KTCT College of Arts & Science, Kallambalam, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (152, 94, N'JUMANA HASEENA S', N'College of Applied Sciences, Mavelikkara', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (153, 95, N'VISHNURAM S S', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (154, 96, N'RISHANA A.', N'S N College, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (155, 96, N'GOWRI J S', N'Govt. College, Nedumangad, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (156, 97, N'ASIF RAWTHER', N'Mar Gregorios College of Law, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (157, 99, N'AHLAD E P', N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (158, 100, N'BHAGYALEKSHMI D', N'Sree Narayana Guru College of Advanced Studies, Sivagiri, Varkala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (159, 100, N'SRUTHI SUNDAR P G', N'Dr Palpu College of Arts & Science, Puthussery, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (160, 101, N'ANANDU S', N'N.S.S. Law College, Kottiyam, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (161, 102, N'ANANDA SAI U', N'St Stephens College, Pathanapuram, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (162, 103, N'ASWATHY S', N'Christian College, Chengannur', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (163, 104, N'K. A. AZHAD', N'S N College, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (164, 105, N'ALTHAF RAHMAN.A', N'Milad-E-Sherif Memorial College, Kayamkulam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (165, 106, NULL, N'Sree Ayyappa College, Eramallikara', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (166, 106, NULL, N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (167, 107, NULL, N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[SecondPrizeTbl] ([SecondPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (168, 108, NULL, N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[SecondPrizeTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Student] ON 
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (1, 1, N'C001D001S001', N'Abdulla', N'Sirajudeen', N'Male', N'2874', CAST(N'1995-01-01T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'9539391527', 0, N'EI5NCL8637', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T08:16:48.497' AS DateTime), CAST(N'2020-02-03T08:16:48.497' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (2, 2, N'C001D001S002', N'Nakhil', N'A', N'Male', N'7857', CAST(N'1995-01-01T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'9539391527', 0, N'1585JJB9YI', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T17:53:27.457' AS DateTime), CAST(N'2020-02-03T17:53:27.457' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (3, 3, N'C001D001S003', N'Ansab', N'A', N'Male', N'122', CAST(N'1995-12-09T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'8891206664', 0, N'UCSPT9JV8D', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T17:58:50.440' AS DateTime), CAST(N'2020-02-03T17:58:50.440' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (4, 4, N'C001D001S004', N'Devadathan', N'Dev', N'Male', N'Vb', CAST(N'1996-12-10T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'9656188047', 0, N'V3P7TQQ1VI', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T18:09:06.567' AS DateTime), CAST(N'2020-02-03T18:09:06.567' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (5, 5, N'C001D001S005', N'Haisham', N'N', N'Male', N'1121', CAST(N'1997-09-06T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'9020673009', 0, N'SIWKSRBCXJ', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T18:09:37.770' AS DateTime), CAST(N'2020-02-03T18:09:37.770' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (6, 6, N'C001D001S006', N'Anandu', N'A', N'Male', N'123', CAST(N'1996-04-03T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'1234567891', 0, N'MRBJSSE5TL', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T18:11:25.037' AS DateTime), CAST(N'2020-02-03T18:11:25.037' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (7, 7, N'C001D001S007', N'Qwerty', N'Q', N'Female', N'456', CAST(N'1996-04-03T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'1234567899', 0, N'OOEMT5JR8D', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T18:23:14.677' AS DateTime), CAST(N'2020-02-03T18:23:14.677' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (8, 8, N'C001D001S008', N'Abdulla', N'Sirajudeen', N'Male', N'7852', CAST(N'1995-01-01T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'9539391527', 0, N'1WUBKZSJ01', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-03T18:50:29.307' AS DateTime), CAST(N'2020-02-03T18:50:29.307' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (9, 9, N'C001D001S009', N'Sumeesh ', N'S', N'Male', N'2253', CAST(N'1997-10-13T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'8129845019', 0, N'QSM7I6SKN8', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-04T04:19:13.607' AS DateTime), CAST(N'2020-02-04T04:19:13.607' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (10, 10, N'C001D001S0010', N'Divya', N'Raj', N'Female', N'555', CAST(N'1997-04-06T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'9048308574', 0, N'Z1ORBOX2JT', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-02-04T06:34:59.873' AS DateTime), CAST(N'2020-02-04T06:34:59.873' AS DateTime))
GO
INSERT [dbo].[Student] ([StudID], [CredID], [RegID], [FName], [SName], [Sex], [ClgAdmistnNo], [DateOfBirth], [ProPic], [ColID], [DeptID], [CouID], [Phone], [IsPhoneVerify], [PhoneVerificationCode], [IsCollegeApproved], [IsEligibilityApproved], [IsChestNoProvided], [CollegeApprovedBy], [EligibilityApprovedBy], [ChestNoProvidedBy], [EnteredOn], [UpdatedOn]) VALUES (11, 13, N'C001D001S0011', N'Nakhil', N'A', N'Male', N'78976532', CAST(N'1996-11-11T00:00:00.000' AS DateTime), NULL, 1, 1, 1, N'9446070181', 0, N'CLKZ3D3B7G', 0, 0, 0, NULL, NULL, NULL, CAST(N'2020-09-21T16:50:48.590' AS DateTime), CAST(N'2020-09-21T16:50:48.590' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Student] OFF
GO
SET IDENTITY_INSERT [dbo].[SuperAdmin] ON 
GO
INSERT [dbo].[SuperAdmin] ([SuAdID], [Name], [Email], [Password], [EnteredOn], [UpdatedOn]) VALUES (1, N'Admin', N'admin@hackbal.com', N'password', NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[SuperAdmin] OFF
GO
SET IDENTITY_INSERT [dbo].[ThirdPrizeTbl] ON 
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (1, 2, N'AMAL SHEKHAR A S', N'3RD YEAR BA SANSKRIT, NSS COLLEGE PANDALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (2, 3, N'AJAYKRISHNA T', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (3, 3, N'ROHITH CHANDRAN V S', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (4, 5, NULL, N'SN COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (5, 6, N'GOPIKA AJITH', N'MAR IVANIOS', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (6, 7, N'KRITHI S RAJ', N'NSS NERUMANKARA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (7, 7, N'MEERA R', N'KARYAVATTAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (8, 7, N'VAISHNAVI S MOHAN', N'UNIVERSITY COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (9, 8, N'KRISHNA PRIYA K V', N'MG COLLEGE KESAVADASAPURAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (10, 10, N'SUPARNA S ANIL', N'S N COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (11, 11, N'ARAVIND PRAKASH', N'UNIVERSITY COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (12, 12, N'NIRMAL CHAND S S', N'UNIVERSITY COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (13, 12, N'VIDHU KRISHANA', N'GOVT COLLEGE AMBALAPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (14, 13, N'RAHUL S R NAIR', N'SREE SWATHI THIRUNAL COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (15, 13, N'AMAL JITH S', N'UNIVERSITY COLLEGE', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (16, 13, N'AMRUTHA LEKSHMI B', N'CSS KARIYAVATTOM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (17, 14, N'KRISHNA VENI K', N'GOVT ARTS COLLEGE THYCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (18, 15, N'ANSHIKA PAUL', N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (19, 16, N'SREE NANDANA HARI', N'ALL SAINTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (20, 17, NULL, N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (21, 18, N'ANANDU NANDAKUMAR', N'SREE NARAYANA COLLEGE CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (22, 9, N'KARTHIK R', N'SN COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (23, 19, N'ARUNIMA R S', N'GOVT COLLEGE ATTINGAL TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (24, 19, N'VARSHA C V', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (25, 20, N'AROMAL BS', N'MALAYANKEEZHU MADHAVAKAVI MEMORIAL GOVT ARTS AND SCIENCE COLLEGE, MALAYANKEEZHU,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (26, 21, NULL, N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (27, 21, NULL, N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (28, 22, N'PARVATHY RAJAN', N'ALL SAINTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (30, 23, N'MOHAMMED SHAH S', N'SARASWATHI COLLEGE OF ARTS AND SCIENCE, VILAPPIL, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (31, 23, N'SHAHUL HAMEED SJ', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (32, 23, N'ASIF BASHEER', N'DR PALPU COLLEGE OF ARTS AND SCIENCE COLLEGE PANGODU KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (33, 24, N'DIVYANJANA', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (35, 25, N'NEERAJ C G', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (36, 26, N'SHARMILA B', N'KUCTE KUMARAPURAM TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (37, 27, N'RAMALAKSHMI N', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (38, 28, N'PAVITHRA R', N'GOVT ARTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (39, 29, NULL, N'IQBAL COLLEGE PERINGAMALA TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (40, 31, N'ANUBHAV.P.S', N'SREENARAYANA GURU COLLEGE FOR ADVANCED STUDIES, CHEMPAZHANTHY ,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (41, 32, N'RAJESH R', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (42, 33, N'VINIL J', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (43, 35, N'AISWARYA LEKSHMI S', N'KERALA INSTITUTE OF TOURISM AND TRAVEL STUDIES TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (44, 35, N'SAPTAMI GOPAL', N'SRI SATHYA SAI COLLEGE OF ARTS AND SCIENCE THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (45, 36, N'SRUTHY SURAJ', N'MARIAN COLLEGE OF ARTS AND SCIENCE KAZHAKKOOTTAM TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (46, 37, N'RAJESH R', N'MAHATMA GANDHI COLLEGE,KESAVADASAPURAM,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (47, 38, N'AMJITH R KUMAR', N'SREE AYYAPPA COLLEGE  THIRUVANVANDOOR PATHANAMTHITTA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (48, 38, N'DEEPU SANALKUMAR', N'S N COLLEGE SIVAGIRI VARKALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (53, 39, NULL, N'NSS COLLEGE PANDALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (54, 39, NULL, N'ST JOSEPHS COLLEGE FOR WOMEN, ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (55, 40, N'ARAVIND L', N'SRI SATHYA SAI COLLEGE OF ARTS AND SCIENCE THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (56, 41, N'ANSHIKA PAUL', N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (57, 42, N'NEETHU S J', N'KERALA INSTITUTE OF TOURISM AND TRAVEL STUDIES TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (58, 43, N'SHOBHIKA MOHAN B', N'C S I INSTITUTE OF LEGAL STUDIES , CHERUVARAKONAM, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (59, 43, N'APARNA S G', N'CHRISTIAN COLLEGE CHENGANNOOR ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (60, 43, N'HRIDYA SHREERAG', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (61, 44, N'ATHUL C SOMAN', N'MALAYANKEEZHU MADHAVAKAVI MEMORIAL GOVT ARTS AND SCIENCE COLLEGE, MALAYANKEEZHU,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (62, 45, N'YOJI J. SINGH', N'S N COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (63, 46, N'SHILPA S KUMAR', N'S N COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (64, 46, N'SHEKHA G', N'SREE NARAYANA COLLEGE CHENGANNOOR', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (65, 48, N'NAJEEBA P P', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (67, 50, N'GAYATHRI ', N'GOVT COLLEGE OF TEACHER EDUCATION THYCAUD TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (68, 50, N'DEVIKA K S', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (69, 49, N'NAJEEBA P P', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (70, 51, N'ANJANA S S', N'GOVT SANSKRIT COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (71, 52, NULL, N'BISHOP MOOR COLLEGE MAVELIKKARA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (72, 53, N'AJU SHAHID A', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (73, 54, N'LEKSHMI S SURAJ', N'SN COLLEGE PUNALUR', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (74, 55, N'ARJUN K V', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (75, 56, NULL, N'A J COLLEGE OF SCIENCE AND TECHNOLOGY THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (76, 58, NULL, N'ALL SAINTS COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (77, 58, NULL, N'H H M S P B N S S COLLEGE FOR WOMEN NEERAMANKARA, TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (78, 59, N'DEVINANDANA M', N'SN COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (79, 60, NULL, N'K T C T COLLEGE OF ARTS AND SCIENCE KALLAMBALAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (80, 60, NULL, N'C H M M COLLEGE FOR ADVANCED STUDIES, CHAVARCODU', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (81, 60, NULL, N'CHRIST NAGAR COLLEGE MARANALLOOR TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (82, 61, N'NAJEEBA P P', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (83, 62, N'SOORAJ S.', N'S N COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (84, 63, N'DAYA SUSAN THOMAS', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (85, 63, N'ARSHA NISSAM', N'SRI SATHYA SAI COLLEGE OF ARTS AND SCIENCE THONNAKKAL', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (86, 63, N'ARATHI U S', N'KUMBALATHU SANKUPILLA MEMORIAL DEWASWOM BOARD COLLEGE, SASTHAMCOTTAH', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (87, 64, N'ARATHI B', N'NSS ARTS AND SCIENCE COLLEGE PERAYAM KUNDARA KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (88, 65, N'ARCHANA R', N'ST MICHAELS COLLEGE CHERTHALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (89, 65, N'ANEESH MOHAMMAD P', N'KUNJUKRISHNA NADAR MEMORIAL GOVT ARTS AND SCIENCE COLLEGE KANJIRAMKULAM TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (90, 65, N'SUSANNA ACHENKUNJU GEORGE	', N'CHRISTIAN COLLEGE CHENGANNOOR ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (91, 66, N'KARTHIK.M', N'VIGYAAN COLLEGE FOR APPLIED SCIENCE KATTAKKADA TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (92, 68, N'ASNA THASNEEM', N'CSS KARIYAVATTOM CAMPUS, UNIVERSITY OF KERALA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (93, 69, N'SHIJIN SHAJI', N'CHRISTIAN COLLEGE CHENGANNOOR ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (94, 69, N'AISWARYA S PILLAI', N'CHRISTIAN COLLEGE CHENGANNOOR ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (95, 70, N'ARJUN. S', N'CHRISTIAN COLLEGE CHENGANNOOR ALAPPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (96, 70, N'ARAVIND A.U', N'GOVT LAW COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (97, 71, N'NEERAJ C G', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (98, 72, N'FATHIMA SAMEER', N'UNIVERSITY COLLEGE ,TRIVANDRUM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (99, 72, N'KASTURI SHA', N'MAR IVANIOS COLLEGE, NALANCHIRA,TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (100, 72, N'SHRISTI.SINHA', N'VIGYAAN COLLEGE FOR APPLIED SCIENCE KATTAKKADA TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (101, 72, N'SOLANO SHAJI', N'MILAD  E-SHERIF MEMORIAL COLLEGE KAYAMKULAM ALAPUZHA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (102, 74, N'RINCY CYRIL', N'SANKAR INSTITUTE OF SCIENCE  TECHNOLOGY  AND MANAGEMENT CHATHANNOOR', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (103, 75, N'ANAKHA DURGA DAS', N'BISHOP MOOR COLLEGE MAVELIKKARA', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (104, 75, N'ANJANA S', N'GOVT SANSKRIT COLLEGE TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (105, 75, N'SHRISHTI.SINHA', N'VIGYAAN COLLEGE FOR APPLIED SCIENCE KATTAKKADA TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (106, 75, N'ANJU A', N'GOVT COLLEGE KARIAVATTOM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (107, 76, N'PARVATHI P L', N'SN COLLEGE SIVAGIRI', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (108, 76, N'DEVINANDANA M', N'S N COLLEGE KOLLAM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (109, 77, N'GAYATHRI S', N'NATIONAL COLLEGE , AMBALATHARA TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (110, 78, N'ADITHYAN PRADEEPKUMAR', N'SREE SWATHI THIRUNAL COLLEGE OF MUSIC TVM', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (111, 80, N'KAVYA CHANDRAN', N'GOVT COLLEGE FOR WOMEN''S VAZHUTHCAUD', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (112, 81, N'ARYA DINACHANDRAN S', N'N S S College, Cherthala, Alappuzha', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (113, 83, NULL, N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (114, 83, NULL, N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (115, 84, NULL, N'Sree Narayana College, Cherthala, Alappuzha', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (116, 85, N'KRITHI S RAJ', N'H.H.M.S.P.B. N.S.S. College for Women, Neeramankara, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (117, 85, N'MEERA R', N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (118, 85, N'VYSHNAVY S MOHAN	', N'University College, , Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (119, 86, N'AJAYKRISHNA T', N'CSS Kariyavattom Campus, University of Kerala', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (120, 86, N'ROHITH CHANDRAN V S	', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (121, 87, NULL, N'Saraswathi College of Arts and Science, Vilappil, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (122, 88, N'SHOBHIKA MOHAN B	', N'C S I Institute of Legal Studies, Cheruvarakonam , Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (123, 88, N'LEKSHMI SIVAN', N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (124, 88, N'HRIDYA SHREERAG', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (125, 89, N'ATHUL C SOMAN', N'Malayankeezu Madhavakavi Memorial Govt. Arts and Science College, Tvm', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (126, 91, N'ANARGHA I S', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (127, 92, NULL, N'University College, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (128, 93, NULL, N'Milad-E-Sherif Memorial College, Kayamkulam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (129, 94, N'ARATHI.B', N'NSS Arts and Science College, Perayam, Kundara, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (130, 95, N'VINIL J', N'Sree Swathi Thirunal College of Music, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (131, 96, N'PARVATHY RAJAN	', N'All Saint`s College, Chakai, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (132, 97, N'ASIF BASHEER', N'Dr Palpu College of Arts & Science, Puthussery, Kollam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (133, 97, N'MOHAMMED SHAH S', N'Saraswathi College of Arts and Science, Vilappil, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (134, 97, N'SHAHUL HAMEED SJ', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (135, 100, N'KRIPA GLADYS MENA	', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (136, 101, N'ARAVIND KRISHNAN S B', N'Govt. College, Nedumangad, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (137, 102, N'NAVEEN DAS', N'Bishop Jesudasan Arts & Science College, Mulayara, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (138, 103, N'AMAL NATH .U', N'Milad-E-Sherif Memorial College, Kayamkulam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (139, 104, N'SHREYAS RAJ C S', N'Sanatana Dharma College, Alappuzha', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (140, 104, N'GAYATHRI SATHEESH', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (141, 105, N'ABIN JOSE', N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (142, 106, NULL, N'A.J College of Science and Technology, Thonnakkal, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (143, 106, NULL, N'Milad-E-Sherif Memorial College, Kayamkulam', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (144, 107, NULL, N'Mar Ivanios College, Nalanchira, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
INSERT [dbo].[ThirdPrizeTbl] ([ThirdPrizeID], [EventID], [StudName], [StudCollege], [EnteredOn], [EnteredBy], [UpdatedOn], [UpdatedBy]) VALUES (145, 108, NULL, N'Govt. College For Women, Vazhuthacadu, Thiruvananthapuram', NULL, 1, NULL, 1)
GO
SET IDENTITY_INSERT [dbo].[ThirdPrizeTbl] OFF
GO
SET IDENTITY_INSERT [dbo].[Volunteer] ON 
GO
INSERT [dbo].[Volunteer] ([VolID], [CredID], [RoleID], [Name], [Place], [EnteredOn], [UpdatedOn]) VALUES (1, 11, 4, N'Gallery Uploader', N'Trivandrum', CAST(N'2020-02-07T07:27:59.240' AS DateTime), CAST(N'2020-02-07T07:27:59.240' AS DateTime))
GO
INSERT [dbo].[Volunteer] ([VolID], [CredID], [RoleID], [Name], [Place], [EnteredOn], [UpdatedOn]) VALUES (2, 12, 3, N'News Uploder', N'Trivandrum', CAST(N'2020-02-07T07:33:02.897' AS DateTime), CAST(N'2020-02-07T07:33:02.897' AS DateTime))
GO
INSERT [dbo].[Volunteer] ([VolID], [CredID], [RoleID], [Name], [Place], [EnteredOn], [UpdatedOn]) VALUES (3, 14, 1, N'Nakhil', N'TVM', CAST(N'2020-09-22T03:05:49.767' AS DateTime), CAST(N'2020-09-22T03:05:49.767' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[Volunteer] OFF
GO
ALTER TABLE [dbo].[College]  WITH CHECK ADD  CONSTRAINT [FK_College_Volunteer] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[College] CHECK CONSTRAINT [FK_College_Volunteer]
GO
ALTER TABLE [dbo].[CollegeResult]  WITH CHECK ADD  CONSTRAINT [FK_CollegeResult_Volunteer] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[CollegeResult] CHECK CONSTRAINT [FK_CollegeResult_Volunteer]
GO
ALTER TABLE [dbo].[CollegeResult]  WITH CHECK ADD  CONSTRAINT [FK_CollegeResult_Volunteer1] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[CollegeResult] CHECK CONSTRAINT [FK_CollegeResult_Volunteer1]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Department] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Department] ([DeptID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Department]
GO
ALTER TABLE [dbo].[EventWiseResult]  WITH CHECK ADD  CONSTRAINT [FK_EventWiseResult_Volunteer] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[EventWiseResult] CHECK CONSTRAINT [FK_EventWiseResult_Volunteer]
GO
ALTER TABLE [dbo].[EventWiseResult]  WITH CHECK ADD  CONSTRAINT [FK_EventWiseResult_Volunteer1] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[EventWiseResult] CHECK CONSTRAINT [FK_EventWiseResult_Volunteer1]
GO
ALTER TABLE [dbo].[FirstPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_FirstPrizeTbl_EventWiseResult] FOREIGN KEY([EventID])
REFERENCES [dbo].[EventWiseResult] ([EvntID])
GO
ALTER TABLE [dbo].[FirstPrizeTbl] CHECK CONSTRAINT [FK_FirstPrizeTbl_EventWiseResult]
GO
ALTER TABLE [dbo].[FirstPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_FirstPrizeTbl_Volunteer] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[FirstPrizeTbl] CHECK CONSTRAINT [FK_FirstPrizeTbl_Volunteer]
GO
ALTER TABLE [dbo].[FirstPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_FirstPrizeTbl_Volunteer1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[FirstPrizeTbl] CHECK CONSTRAINT [FK_FirstPrizeTbl_Volunteer1]
GO
ALTER TABLE [dbo].[GroupHeadParticipation]  WITH CHECK ADD  CONSTRAINT [FK_GroupHeadPart_GrpEvent] FOREIGN KEY([GrpEvtID])
REFERENCES [dbo].[GrpEvent] ([GrpEvtID])
GO
ALTER TABLE [dbo].[GroupHeadParticipation] CHECK CONSTRAINT [FK_GroupHeadPart_GrpEvent]
GO
ALTER TABLE [dbo].[GroupHeadParticipation]  WITH CHECK ADD  CONSTRAINT [FK_GroupHeadPart_Student] FOREIGN KEY([TeamHeadID])
REFERENCES [dbo].[Student] ([StudID])
GO
ALTER TABLE [dbo].[GroupHeadParticipation] CHECK CONSTRAINT [FK_GroupHeadPart_Student]
GO
ALTER TABLE [dbo].[GroupMemParticiapation]  WITH CHECK ADD  CONSTRAINT [FK_GroupMemParticiapation_GrpEvent] FOREIGN KEY([GrpPartID])
REFERENCES [dbo].[GroupHeadParticipation] ([GrpPartID])
GO
ALTER TABLE [dbo].[GroupMemParticiapation] CHECK CONSTRAINT [FK_GroupMemParticiapation_GrpEvent]
GO
ALTER TABLE [dbo].[GroupMemParticiapation]  WITH CHECK ADD  CONSTRAINT [FK_GroupMemParticiapation_Student] FOREIGN KEY([TeamMemID])
REFERENCES [dbo].[Student] ([StudID])
GO
ALTER TABLE [dbo].[GroupMemParticiapation] CHECK CONSTRAINT [FK_GroupMemParticiapation_Student]
GO
ALTER TABLE [dbo].[GrpEvent]  WITH CHECK ADD  CONSTRAINT [FK_GrpEvent_Volunteer] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[GrpEvent] CHECK CONSTRAINT [FK_GrpEvent_Volunteer]
GO
ALTER TABLE [dbo].[ImageGallery]  WITH CHECK ADD  CONSTRAINT [FK_ImageGallery_Volunteer] FOREIGN KEY([UploadedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[ImageGallery] CHECK CONSTRAINT [FK_ImageGallery_Volunteer]
GO
ALTER TABLE [dbo].[IndivijualResult]  WITH CHECK ADD  CONSTRAINT [FK_IndivijualResult_Volunteer] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[IndivijualResult] CHECK CONSTRAINT [FK_IndivijualResult_Volunteer]
GO
ALTER TABLE [dbo].[IndivijualResult]  WITH CHECK ADD  CONSTRAINT [FK_IndivijualResult_Volunteer1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[IndivijualResult] CHECK CONSTRAINT [FK_IndivijualResult_Volunteer1]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK_News_Volunteer] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK_News_Volunteer]
GO
ALTER TABLE [dbo].[PrgShedule]  WITH CHECK ADD  CONSTRAINT [FK_PrgShedule_Volunteer] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[PrgShedule] CHECK CONSTRAINT [FK_PrgShedule_Volunteer]
GO
ALTER TABLE [dbo].[PrgShedule]  WITH CHECK ADD  CONSTRAINT [FK_PrgShedule_Volunteer1] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[PrgShedule] CHECK CONSTRAINT [FK_PrgShedule_Volunteer1]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Item] FOREIGN KEY([ItmID])
REFERENCES [dbo].[SingleEvent] ([SinEvtID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Item]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_StudentChestNo] FOREIGN KEY([StudChestID])
REFERENCES [dbo].[StudentChestNo] ([StudChestID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_StudentChestNo]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Volunteer] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Volunteer]
GO
ALTER TABLE [dbo].[Result]  WITH CHECK ADD  CONSTRAINT [FK_Result_Volunteer1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[Result] CHECK CONSTRAINT [FK_Result_Volunteer1]
GO
ALTER TABLE [dbo].[SecondPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_SecondPrizeTbl_EventWiseResult] FOREIGN KEY([EventID])
REFERENCES [dbo].[EventWiseResult] ([EvntID])
GO
ALTER TABLE [dbo].[SecondPrizeTbl] CHECK CONSTRAINT [FK_SecondPrizeTbl_EventWiseResult]
GO
ALTER TABLE [dbo].[SecondPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_SecondPrizeTbl_Volunteer] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[SecondPrizeTbl] CHECK CONSTRAINT [FK_SecondPrizeTbl_Volunteer]
GO
ALTER TABLE [dbo].[SecondPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_SecondPrizeTbl_Volunteer1] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[SecondPrizeTbl] CHECK CONSTRAINT [FK_SecondPrizeTbl_Volunteer1]
GO
ALTER TABLE [dbo].[SingleParticipation]  WITH CHECK ADD  CONSTRAINT [FK_StudentParticipation_Item] FOREIGN KEY([SinEvtID])
REFERENCES [dbo].[SingleEvent] ([SinEvtID])
GO
ALTER TABLE [dbo].[SingleParticipation] CHECK CONSTRAINT [FK_StudentParticipation_Item]
GO
ALTER TABLE [dbo].[SingleParticipation]  WITH CHECK ADD  CONSTRAINT [FK_StudentParticipation_Student] FOREIGN KEY([StudID])
REFERENCES [dbo].[Student] ([StudID])
GO
ALTER TABLE [dbo].[SingleParticipation] CHECK CONSTRAINT [FK_StudentParticipation_Student]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_College] FOREIGN KEY([ColID])
REFERENCES [dbo].[College] ([ColID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_College]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Course] FOREIGN KEY([CouID])
REFERENCES [dbo].[Course] ([CouID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Course]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Credential] FOREIGN KEY([CredID])
REFERENCES [dbo].[Credential] ([CredID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Credential]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Student_Department] FOREIGN KEY([DeptID])
REFERENCES [dbo].[Department] ([DeptID])
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Student_Department]
GO
ALTER TABLE [dbo].[StudentChestNo]  WITH CHECK ADD  CONSTRAINT [FK_StudentChestNo_StudentParticipation] FOREIGN KEY([StudPartID])
REFERENCES [dbo].[SingleParticipation] ([StudPartID])
GO
ALTER TABLE [dbo].[StudentChestNo] CHECK CONSTRAINT [FK_StudentChestNo_StudentParticipation]
GO
ALTER TABLE [dbo].[StudentChestNo]  WITH CHECK ADD  CONSTRAINT [FK_StudentChestNo_Volunteer] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[StudentChestNo] CHECK CONSTRAINT [FK_StudentChestNo_Volunteer]
GO
ALTER TABLE [dbo].[ThirdPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_ThirdPrizeTbl_EventWiseResult] FOREIGN KEY([EventID])
REFERENCES [dbo].[EventWiseResult] ([EvntID])
GO
ALTER TABLE [dbo].[ThirdPrizeTbl] CHECK CONSTRAINT [FK_ThirdPrizeTbl_EventWiseResult]
GO
ALTER TABLE [dbo].[ThirdPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_ThirdPrizeTbl_Volunteer] FOREIGN KEY([UpdatedBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[ThirdPrizeTbl] CHECK CONSTRAINT [FK_ThirdPrizeTbl_Volunteer]
GO
ALTER TABLE [dbo].[ThirdPrizeTbl]  WITH CHECK ADD  CONSTRAINT [FK_ThirdPrizeTbl_Volunteer1] FOREIGN KEY([EnteredBy])
REFERENCES [dbo].[Volunteer] ([VolID])
GO
ALTER TABLE [dbo].[ThirdPrizeTbl] CHECK CONSTRAINT [FK_ThirdPrizeTbl_Volunteer1]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Credential] FOREIGN KEY([CredID])
REFERENCES [dbo].[Credential] ([CredID])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_Credential]
GO
ALTER TABLE [dbo].[Volunteer]  WITH CHECK ADD  CONSTRAINT [FK_Volunteer_Role] FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Volunteer] CHECK CONSTRAINT [FK_Volunteer_Role]
GO
