USE [NX1222]
GO
/****** Object:  Table [dbo].[User]    Script Date: 12/27/2018 22:49:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](20) NOT NULL,
	[RefereeID] [int] NOT NULL,
	[RefereeUser] [nvarchar](50) NULL,
	[RefereePath] [nvarchar](max) NULL,
	[RefereeDepth] [int] NOT NULL,
	[AgentID] [int] NOT NULL,
	[AgentUser] [nvarchar](50) NULL,
	[ParentID] [int] NOT NULL,
	[ParentUser] [nvarchar](50) NULL,
	[ParentPath] [nvarchar](max) NULL,
	[Depth] [int] NOT NULL,
	[Child] [int] NOT NULL,
	[RootID] [int] NOT NULL,
	[DepthSort] [int] NOT NULL,
	[ChildPlace] [int] NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Password2] [nvarchar](50) NULL,
	[Password3] [nvarchar](50) NULL,
	[NickName] [nvarchar](20) NULL,
	[RealName] [nvarchar](50) NULL,
	[Sex] [nvarchar](2) NULL,
	[Birthday] [datetime] NULL,
	[Email] [nvarchar](30) NULL,
	[QQ] [nvarchar](20) NULL,
	[BankName] [nvarchar](50) NULL,
	[BankCard] [nvarchar](50) NULL,
	[BankOfDeposit] [nvarchar](50) NULL,
	[BankUser] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Tel] [nvarchar](50) NULL,
	[HeadFace] [nvarchar](250) NULL,
	[IsActivation] [bit] NOT NULL,
	[IsLock] [bit] NOT NULL,
	[IsAgent] [bit] NULL,
	[AgentName] [nvarchar](50) NULL,
	[ApplyAgentRemark] [nvarchar](250) NULL,
	[ApplyAgentTime] [datetime] NULL,
	[IDCard] [nvarchar](50) NULL,
	[Question] [nvarchar](50) NULL,
	[Answer] [nvarchar](50) NULL,
	[ActivationTime] [datetime] NULL,
	[LockReason] [nvarchar](250) NULL,
	[LockTime] [datetime] NULL,
	[UserLevel] [int] NULL,
	[CreateTime] [datetime] NOT NULL,
	[InputWrongPwdTimes] [int] NULL,
	[LastLoginTime] [datetime] NULL,
	[LastUpdateTime] [datetime] NULL,
	[Wallet2001] [decimal](18, 2) NOT NULL,
	[Wallet2002] [decimal](18, 2) NOT NULL,
	[Wallet2003] [decimal](18, 2) NOT NULL,
	[Wallet2004] [decimal](18, 2) NULL,
	[Wallet2005] [decimal](18, 2) NULL,
	[Addup1101] [decimal](18, 2) NULL,
	[Addup1102] [decimal](18, 2) NULL,
	[Addup1103] [decimal](18, 2) NULL,
	[Addup1104] [decimal](18, 2) NULL,
	[Addup1105] [decimal](18, 2) NULL,
	[Addup1106] [decimal](18, 2) NULL,
	[Addup1107] [decimal](18, 2) NULL,
	[Addup1008] [decimal](18, 2) NULL,
	[Addup1009] [decimal](18, 2) NULL,
	[AddupSupplyAmount] [decimal](18, 2) NULL,
	[Investment] [decimal](18, 2) NOT NULL,
	[BounsPeriod] [int] NULL,
	[IsShareBouns] [bit] NULL,
	[ShareBounsStopReason] [nvarchar](50) NULL,
	[ShareBounsStopTime] [datetime] NULL,
	[LeftDpMargin] [decimal](18, 2) NULL,
	[RightDpMargin] [decimal](18, 2) NULL,
	[LeftAchievement] [decimal](18, 2) NULL,
	[RightAchievement] [decimal](18, 2) NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveStr3] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveInt3] [int] NULL,
	[ReserveDate1] [datetime] NULL,
	[ReserveDate2] [datetime] NULL,
	[ReserveBoolean1] [bit] NULL,
	[ReserveBoolean2] [bit] NULL,
	[ReserveDecamal1] [decimal](18, 2) NULL,
	[ReserveDecamal2] [decimal](18, 2) NULL,
	[AgentLevel] [int] NULL,
	[Wallet2001Lock] [bit] NULL,
	[Wallet2002Lock] [bit] NULL,
	[Wallet2003Lock] [bit] NULL,
	[Wallet2004Lock] [bit] NULL,
	[Wallet2005Lock] [bit] NULL,
	[AliPay] [nvarchar](50) NULL,
	[WeiXin] [nvarchar](50) NULL,
	[Block] [nvarchar](50) NULL,
	[CreateBy] [nvarchar](50) NULL,
	[Token] [nvarchar](50) NULL,
	[TokenExpirationTime] [datetime] NULL,
	[LastLoginIP] [nvarchar](50) NULL,
	[LastLoginAddress] [nvarchar](50) NULL,
	[IsProTeam] [bit] NULL,
 CONSTRAINT [PK_Member] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RefereeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RefereeUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐关系路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RefereePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'推荐关系层' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RefereeDepth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属商务中心ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'AgentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'所属商务中心' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'AgentUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置人ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ParentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ParentUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置关系路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ParentPath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置关系层' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Depth'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置节点数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Child'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置关系根ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RootID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置关系层排位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'DepthSort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'安置关系节点排位' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ChildPlace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'二级密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'三级密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Password3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'NickName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RealName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Sex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'生日' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Birthday'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮箱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Email'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'BankName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行卡号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'BankCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开户行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'BankOfDeposit'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'BankUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'国家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Country'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区县' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Address'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'手机' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Mobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'电话' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Tel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'HeadFace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否激活' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IsActivation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否锁定' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IsLock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否代理商（商务中心）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IsAgent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'商务中心名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'AgentName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请商务中心备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ApplyAgentRemark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请商务中心时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ApplyAgentTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证号码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IDCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保问题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Question'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密保答案' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Answer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'激活时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ActivationTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'冻结原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'LockReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'UserLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录错误次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'InputWrongPwdTimes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后登录时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'LastLoginTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'LastUpdateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主钱包' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2001'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'种子钱包' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2002'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册钱包' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2003'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏钱包' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2004'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'资金钱包' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2005'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1101)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1101'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1102)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1102'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1103)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1103'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1104)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1104'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1105)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1105'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1106)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1106'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1107)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1107'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1108)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1008'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'累计奖金(奖金ID1109)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Addup1009'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'个人业绩（累计提供订单的业绩）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'AddupSupplyAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'投资金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Investment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已分红期数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'BounsPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否可参与分红' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'IsShareBouns'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分红停止原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ShareBounsStopReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分红停止时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ShareBounsStopTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'左对碰余量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'LeftDpMargin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'右对碰余量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RightDpMargin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'左区业绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'LeftAchievement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'右区业绩' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'RightAchievement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveInt1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveInt3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveDate1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveDate2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveBoolean1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveBoolean2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveDecamal1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'ReserveDecamal2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'代理商级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'AgentLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2001钱包锁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2001Lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2002钱包锁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2002Lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2003钱包锁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2003Lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2004钱包锁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2004Lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'2005钱包锁' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Wallet2005Lock'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'支付宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'AliPay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'微信号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'WeiXin'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区块链钱包地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'Block'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User', @level2type=N'COLUMN',@level2name=N'CreateBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'User'
GO
SET IDENTITY_INSERT [dbo].[User] ON
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (1, N'1', 0, N'', N',0', 0, 0, NULL, 0, N'', N',0', 0, 1, 0, 1, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'113618581792A406096C42D259A49A7A', NULL, NULL, N'李有譗', NULL, NULL, N'oemsys852@163.com', NULL, NULL, N'6217 0033 9700 8949 918', N'广西南宁北郊支行', N'李有譗', NULL, NULL, NULL, NULL, NULL, N'18645605222', NULL, NULL, 1, 0, 1, N'1', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A9C1009BF69B AS DateTime), NULL, NULL, 1, CAST(0x0000A9C1009BF69B AS DateTime), NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(997500.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (2, N'2', 0, N'', N',0', 0, 0, NULL, 0, N'', N',0', 0, 0, 0, 1, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'113618581792A406096C42D259A49A7A', NULL, NULL, N'李纤鬻', NULL, NULL, N'oemsys284@163.com', NULL, NULL, N'6217 0033 9700 6801 918', N'广西南宁北郊支行', N'李纤鬻', NULL, NULL, NULL, NULL, NULL, N'18645636238', NULL, NULL, 1, 0, 1, N'2', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A9C1009C01AC AS DateTime), NULL, NULL, 1, CAST(0x0000A9C1009C01AC AS DateTime), NULL, NULL, NULL, CAST(9999995000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (3, N'aaa001', 0, N'', N',0', 0, 0, NULL, 0, N'', N',0', 0, 0, 0, 1, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'6456C7FAC445F3C1C3E7F4405159D80E', NULL, NULL, N'aaa001', NULL, NULL, NULL, NULL, NULL, N'62222', N'1', N'111', NULL, NULL, NULL, NULL, NULL, N'13311111111', NULL, NULL, 1, 0, 1, N'aaa001', NULL, NULL, N'111', NULL, NULL, CAST(0x0000A9C1016DC59A AS DateTime), NULL, NULL, 1, CAST(0x0000A9C1016DC59A AS DateTime), NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(901.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, N'111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (4, N'bbb001', 0, N'', N',0', 0, 0, NULL, 0, N'', N',0', 0, 0, 0, 1, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'6456C7FAC445F3C1C3E7F4405159D80E', NULL, NULL, N'哥哥', NULL, NULL, N'556677@11', NULL, NULL, N'62222', N'1', N'呵呵', NULL, NULL, NULL, NULL, NULL, N'18861111111', NULL, NULL, 1, 0, 1, N'bbb001', NULL, NULL, N'111', NULL, NULL, CAST(0x0000A9C10170F179 AS DateTime), NULL, NULL, 1, CAST(0x0000A9C10170F179 AS DateTime), NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(1910.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, N'111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (5, N'ccc001', 0, N'', N',0', 0, 0, NULL, 0, N'', N',0', 0, 0, 0, 1, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'6456C7FAC445F3C1C3E7F4405159D80E', NULL, NULL, N'1', NULL, NULL, N'1@qq.com', NULL, NULL, N'62222', N'1', N'111', NULL, NULL, NULL, NULL, NULL, N'13311111111', NULL, NULL, 1, 0, 1, N'ccc001', NULL, NULL, N'111', NULL, NULL, CAST(0x0000A9C101792B13 AS DateTime), NULL, NULL, 1, CAST(0x0000A9C101792B13 AS DateTime), NULL, NULL, NULL, CAST(19000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, N'111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (6, N'ddd001', 0, N'', N',0', 0, 0, NULL, 0, N'', N',0', 0, 0, 0, 1, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'6456C7FAC445F3C1C3E7F4405159D80E', NULL, NULL, N'该罚的', NULL, NULL, N'556677@11', NULL, NULL, N'62222', N'国', N'更好', NULL, NULL, NULL, NULL, NULL, N'18861111111', NULL, NULL, 1, 0, 1, N'ddd001', NULL, NULL, N'111', NULL, NULL, CAST(0x0000A9C1017967DD AS DateTime), NULL, NULL, 1, CAST(0x0000A9C1017967DD AS DateTime), NULL, NULL, NULL, CAST(3000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, N'111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (7, N'abc123', 0, N'', N',0', 0, 0, NULL, 0, N'', N',0', 0, 0, 0, 1, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'6456C7FAC445F3C1C3E7F4405159D80E', NULL, NULL, N'李斌', NULL, NULL, N'11223334', NULL, NULL, N'3333333', N'附近恩', N'李斌', NULL, NULL, NULL, NULL, NULL, N'13112123535', NULL, NULL, 1, 0, 1, N'abc123', NULL, NULL, N'22222222', NULL, NULL, CAST(0x0000A9C200E34B10 AS DateTime), NULL, NULL, 1, CAST(0x0000A9C200E34B10 AS DateTime), NULL, NULL, NULL, CAST(5040.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(4990.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, N'3333333', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[User] ([ID], [UserName], [RefereeID], [RefereeUser], [RefereePath], [RefereeDepth], [AgentID], [AgentUser], [ParentID], [ParentUser], [ParentPath], [Depth], [Child], [RootID], [DepthSort], [ChildPlace], [Password], [Password2], [Password3], [NickName], [RealName], [Sex], [Birthday], [Email], [QQ], [BankName], [BankCard], [BankOfDeposit], [BankUser], [Country], [Province], [City], [County], [Address], [Mobile], [Tel], [HeadFace], [IsActivation], [IsLock], [IsAgent], [AgentName], [ApplyAgentRemark], [ApplyAgentTime], [IDCard], [Question], [Answer], [ActivationTime], [LockReason], [LockTime], [UserLevel], [CreateTime], [InputWrongPwdTimes], [LastLoginTime], [LastUpdateTime], [Wallet2001], [Wallet2002], [Wallet2003], [Wallet2004], [Wallet2005], [Addup1101], [Addup1102], [Addup1103], [Addup1104], [Addup1105], [Addup1106], [Addup1107], [Addup1008], [Addup1009], [AddupSupplyAmount], [Investment], [BounsPeriod], [IsShareBouns], [ShareBounsStopReason], [ShareBounsStopTime], [LeftDpMargin], [RightDpMargin], [LeftAchievement], [RightAchievement], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [AgentLevel], [Wallet2001Lock], [Wallet2002Lock], [Wallet2003Lock], [Wallet2004Lock], [Wallet2005Lock], [AliPay], [WeiXin], [Block], [CreateBy], [Token], [TokenExpirationTime], [LastLoginIP], [LastLoginAddress], [IsProTeam]) VALUES (8, N'21', 1, N'1', N',0,1', 1, 0, NULL, 1, N'1', N',0,1', 1, 0, 0, 0, 1, N'6456C7FAC445F3C1C3E7F4405159D80E', N'113618581792A406096C42D259A49A7A', NULL, NULL, N'李犈籍', NULL, NULL, NULL, NULL, N'中国银行', N'6217 0033 9700 9641 918', N'广西南宁北郊支行', NULL, NULL, NULL, NULL, NULL, NULL, N'18645604303', NULL, NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A9C30002E961 AS DateTime), NULL, NULL, 0, CAST(0x0000A9C30002E966 AS DateTime), NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0.00 AS Decimal(18, 2)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, N'18645653062', NULL, NULL, N'1', NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
/****** Object:  Table [dbo].[TimingPlan]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimingPlan](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CycleType] [int] NOT NULL,
	[CycleValue] [nvarchar](50) NOT NULL,
	[PlanTime] [nvarchar](50) NOT NULL,
	[PlanName] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[Remark] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_TimingPlan] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(0:每天,1:每周,2:每月)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'TimingPlan', @level2type=N'COLUMN',@level2name=N'CycleType'
GO
SET IDENTITY_INSERT [dbo].[TimingPlan] ON
INSERT [dbo].[TimingPlan] ([ID], [CycleType], [CycleValue], [PlanTime], [PlanName], [Status], [Remark]) VALUES (1, 0, N'', N'10:26:00', N'plan1', 1, N'日分红任务')
INSERT [dbo].[TimingPlan] ([ID], [CycleType], [CycleValue], [PlanTime], [PlanName], [Status], [Remark]) VALUES (2, 0, N'1', N'23:59:59', N'plan2', 0, N'周五升级')
SET IDENTITY_INSERT [dbo].[TimingPlan] OFF
/****** Object:  StoredProcedure [dbo].[TableInfo]    Script Date: 12/27/2018 22:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[TableInfo]
	-- Add the parameters for the stored procedure here
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
select  b.[value]
from    sys.columns a
        left join sys.extended_properties b on a.object_id = b.major_id and a.column_id = b.minor_id
        inner join sysobjects c on a.column_id = c.id and a.[name] = '列名' and c.[name] = '表名'
select  表名 = case when a.colorder = 1 then d.name
                  else ''
             end ,
        表说明 = case when a.colorder = 1 then isnull(f.value, '')
                   else ''
              end ,
        字段序号 = a.colorder ,
        字段名 = a.name ,
        标识 = case when columnproperty(a.id, a.name, 'IsIdentity') = 1 then '√'
                  else ''
             end ,
        主键 = case when exists ( select  1
                                from    sysobjects
                                where   xtype = 'PK' and name in (select    name
                                                                  from      sysindexes
                                                                  where     indid in (select    indid
                                                                                      from      sysindexkeys
                                                                                      where     id = a.id and colid = a.colid)) ) then '√'
                  else ''
             end ,
        类型 = b.name ,
        占用字节数 = a.length ,
        长度 = columnproperty(a.id, a.name, 'PRECISION') ,
        小数位数 = isnull(columnproperty(a.id, a.name, 'Scale'), 0) ,
        允许空 = case when a.isnullable = 1 then '√'
                   else ''
              end ,
        默认值 = isnull(e.text, '') ,
        字段说明 = isnull(g.[value], '')
from    syscolumns a
        left join systypes b on a.xusertype = b.xusertype
        inner join sysobjects d on a.id = d.id and d.xtype = 'U' and d.name <> 'dtproperties'
        left join syscomments e on a.cdefault = e.id
        left join sys.extended_properties g on a.id = g.major_id and a.colid = g.minor_id
        left join sys.extended_properties f on d.id = f.major_id and f.minor_id = 0
--where d.name='orders' --如果只查询指定表,加上此条件
order by a.id ,
        a.colorder
END
GO
/****** Object:  Table [dbo].[SysSetting]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysSetting](
	[ID] [int] NOT NULL,
	[IsOpenUp] [bit] NOT NULL,
	[CloseHint] [nvarchar](250) NULL,
	[SysName] [nvarchar](50) NULL,
	[SiteTitle] [nvarchar](50) NULL,
	[SiteKeywords] [nvarchar](50) NULL,
	[SiteDescription] [nvarchar](50) NULL,
	[SiteUrl] [nvarchar](50) NULL,
	[CopyInfo] [nvarchar](max) NULL,
	[IsRegisterOpen] [bit] NOT NULL,
	[CloseRegisterHint] [nvarchar](250) NULL,
	[AdminOneSelf] [bit] NOT NULL,
	[IsOpenKefu] [bit] NOT NULL,
	[KefuUrl1] [nvarchar](250) NULL,
	[KefuName1] [nvarchar](50) NULL,
	[KefuUrl2] [nvarchar](250) NULL,
	[KefuName2] [nvarchar](50) NULL,
	[KefuUrl3] [nvarchar](250) NULL,
	[KefuName3] [nvarchar](50) NULL,
	[KefuUrl4] [nvarchar](250) NULL,
	[KefuName4] [nvarchar](50) NULL,
	[KefuUrl5] [nvarchar](250) NULL,
	[KefuName5] [nvarchar](50) NULL,
	[KefuTel1] [nvarchar](50) NULL,
	[KefuTel2] [nvarchar](50) NULL,
	[KefuTel3] [nvarchar](50) NULL,
	[LoginBackgroundImage] [nvarchar](250) NULL,
	[LogoImage] [nvarchar](250) NULL,
	[BannerImage] [nvarchar](250) NULL,
	[BannerImage2] [nvarchar](250) NULL,
	[BannerImage3] [nvarchar](250) NULL,
	[IsWrongPwdLock] [bit] NOT NULL,
	[MatchingMode] [int] NULL,
	[LastupdateTime] [datetime] NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveStr3] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveInt3] [int] NULL,
	[ReserveDate1] [datetime] NULL,
	[ReserveDate2] [datetime] NULL,
	[RegistItems] [nvarchar](250) NULL,
	[RegistNotNullItems] [nvarchar](250) NULL,
	[RegistOnlyOneItems] [nvarchar](250) NULL,
	[RegistNeedSMSVerification] [bit] NULL,
	[RetrievePasswordType] [nvarchar](10) NULL,
	[VerificationCodeType] [nvarchar](10) NULL,
	[VerificationCodeLength] [int] NULL,
	[SmtpServer] [nvarchar](50) NULL,
	[SmtpEmailAddress] [nvarchar](50) NULL,
	[SmtpUserName] [nvarchar](50) NULL,
	[SmtpPassword] [nvarchar](50) NULL,
	[SmtpPort] [nvarchar](50) NULL,
	[SmtpSSL] [nvarchar](50) NULL,
	[SMSSerivce] [nvarchar](50) NULL,
	[SMSUid] [nvarchar](50) NULL,
	[SMSKey] [nvarchar](250) NULL,
	[DevelopMode] [int] NULL,
	[Theme] [nvarchar](50) NULL,
	[SysMobile] [nvarchar](50) NULL,
	[IsWarnningSMS] [bit] NULL,
	[MostUseCity] [nvarchar](50) NULL,
 CONSTRAINT [PK_SysSetting] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点开启关闭' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'IsOpenUp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点关闭时提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'CloseHint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'SysName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点标题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'SiteTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点关键字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'SiteKeywords'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'站点描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'SiteDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'网站域名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'SiteUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'版权信息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'CopyInfo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'开启关闭注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'IsRegisterOpen'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关闭注册时提示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'CloseRegisterHint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员独占操作' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'AdminOneSelf'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'匹配模式（0手动,1自动）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'MatchingMode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveStr3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveInt1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveInt3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveDate1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留字段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'ReserveDate2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册填写项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'RegistItems'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册必填项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'RegistNotNullItems'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'注册唯一项（如手机、身份证）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'RegistOnlyOneItems'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取回密码方式（短信/邮箱/密保）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'RetrievePasswordType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用于接收系统短信的手机号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'SysMobile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'严重预警时是否发送短信' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysSetting', @level2type=N'COLUMN',@level2name=N'IsWarnningSMS'
GO
INSERT [dbo].[SysSetting] ([ID], [IsOpenUp], [CloseHint], [SysName], [SiteTitle], [SiteKeywords], [SiteDescription], [SiteUrl], [CopyInfo], [IsRegisterOpen], [CloseRegisterHint], [AdminOneSelf], [IsOpenKefu], [KefuUrl1], [KefuName1], [KefuUrl2], [KefuName2], [KefuUrl3], [KefuName3], [KefuUrl4], [KefuName4], [KefuUrl5], [KefuName5], [KefuTel1], [KefuTel2], [KefuTel3], [LoginBackgroundImage], [LogoImage], [BannerImage], [BannerImage2], [BannerImage3], [IsWrongPwdLock], [MatchingMode], [LastupdateTime], [ReserveStr1], [ReserveStr2], [ReserveStr3], [ReserveInt1], [ReserveInt2], [ReserveInt3], [ReserveDate1], [ReserveDate2], [RegistItems], [RegistNotNullItems], [RegistOnlyOneItems], [RegistNeedSMSVerification], [RetrievePasswordType], [VerificationCodeType], [VerificationCodeLength], [SmtpServer], [SmtpEmailAddress], [SmtpUserName], [SmtpPassword], [SmtpPort], [SmtpSSL], [SMSSerivce], [SMSUid], [SMSKey], [DevelopMode], [Theme], [SysMobile], [IsWarnningSMS], [MostUseCity]) VALUES (1, 1, N'系统数据整理中，稍后5-15分钟方可访问，谢谢！！', N'XXX互助', N'XXX互助', N' s', N' s', N'http://www.hdecgroup.com/', N' Copyright 2015-2030 All rights reserved', 1, N'暂时关闭1', 0, 0, N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'', N'/Upload/login/571a0d84-7b75-4a57-877c-787804f0e75b.jpg', N'/Upload/login/22b43368-a9f5-4f9f-a38b-82b8592ca6f2.png', N'/Upload/93217e5c-af9b-42b2-a341-bbb16c219ee2.jpg', NULL, NULL, 0, 0, CAST(0x0000A52C00A5BBE7 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N',RealName,Mobile,AliPay,WeiXin,BankName,BankCard,BankUser,BankOfDeposit,RealName,', N',Mobile,AliPay,BankCard,', N',', 0, N'SMS', N'002', 4, N' ', N' ', N' ', N' ', NULL, NULL, N'中国网建', NULL, NULL, 0, N'052401', NULL, NULL, NULL)
/****** Object:  Table [dbo].[SysParam]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysParam](
	[ID] [int] NOT NULL,
	[PID] [int] NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](50) NOT NULL,
	[ValueType] [nvarchar](50) NULL,
	[Value2] [nvarchar](50) NULL,
	[Value2Type] [nvarchar](50) NULL,
	[Value3] [nvarchar](50) NULL,
	[Value3Type] [nvarchar](50) NULL,
	[Sort] [int] NOT NULL,
	[InputFormat] [nvarchar](50) NULL,
	[Remark] [nvarchar](250) NULL,
	[IsLock] [bit] NOT NULL,
	[IsUse] [bit] NOT NULL,
	[LastUpdateTime] [datetime] NULL,
 CONSTRAINT [PK_SysParam] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1000, 0, N'注册', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, CAST(0x0000A40E009F5EB8 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1001, 1000, N'VIP', N'100', N'number', N'', N'', NULL, NULL, 1, N'会员激活费用', N'第一轮 静态提现时返还提现,为0侧不返还', 1, 1, CAST(0x0000A4F600C643A7 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1100, 0, N'奖金类型', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 1, CAST(0x0000A40E009FD50D AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1101, 1100, N'本金', N'6', N'number', N'10', N'number', NULL, NULL, 2, N'参数1为德区第6天获得本金,善区第10天获得本金', N'', 1, 0, CAST(0x0000A503011C9CA4 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1102, 1100, N'利息', N'15', N'number', N'0.01', N'scale', NULL, NULL, 2, N'获得利息天数，每天获得利息比例', NULL, 1, 1, CAST(0x0000A503011C9CA4 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1103, 1100, N'动态奖', N'1440', NULL, N'1', NULL, N'2', NULL, 3, N'', NULL, 1, 1, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1104, 1100, N'管理奖', N'', N'', N'', N'', N'', N'', 3, N'', N'奖金比例详见管理奖设置', 1, 0, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1105, 1100, N'诚信奖', N'0.01', N'scale', N'240', N'number', N'', N'', 3, N'诚信奖比例,限时时间(分钟)', N'限时付款奖励', 1, 0, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1106, 1100, N'签到奖励', N'10', N'number', N'', N'', N'', N'', 3, N'每天登陆签到奖金', N'会员每天登陆签到奖金', 1, 0, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1108, 1100, N'经理奖', N'', N'', N'', N'', N'', N'', 3, NULL, N'详见经理管理中心', 1, 0, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1109, 1100, N'排单币奖励', N'0.05', N'scale', N'', N'', N'', N'', 3, N'抢单会员规定时限内完成打款，并奖励打款金额的5%的排单币', N'详见经理管理中心', 1, 0, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1300, 0, N'动态奖设置', N'', N'', N'', N'', NULL, NULL, 3, N'', N'', 1, 1, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1301, 1300, N'一代动态奖', N'0.05', N'scale', N'', NULL, NULL, NULL, 8, N'比例', N'参数1为享受动态奖比例', 1, 1, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1302, 1300, N'二代动态奖', N'0', N'scale', NULL, NULL, NULL, NULL, 8, N'比例', N'参数1为享受动态奖比例', 1, 0, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1303, 1300, N'三代动态奖', N'0.03', N'scale', NULL, NULL, NULL, NULL, 8, N'比例', N'参数1为享受动态奖比例', 1, 0, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1304, 1300, N'四代动态奖', N'0', N'scale', NULL, NULL, NULL, NULL, 8, N'比例', N'参数1为享受动态奖比例', 1, 0, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1305, 1300, N'五代动态奖', N'0.01', N'scale', N'', NULL, NULL, NULL, 8, N'比例', N'参数1为享受动态奖比例', 1, 0, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1306, 1300, N'六到无限代动态奖', N'0.01', N'scale', N'', NULL, NULL, NULL, 8, N'比例', N'参数1为享受动态奖比例', 1, 0, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1320, 0, N'打款奖励设定', N'', N'', N'', N'', NULL, NULL, 3, N'', N'', 1, 1, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1321, 1320, N'奖励参数', N'7:30', N'string', N'9:00', N'string', N'1', N'scale', 8, N'可以获得奖励的时间起点,获得奖励的时间结束点,奖励的理金 ', N'早上7:00～9:00打款有理金奖励', 1, 1, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1322, 1320, N'扣款设定', N'11:30', N'string', N'13:00', N'string', N'100', N'scale', 8, N'扣除的时间起点,扣除的时间结束点,扣除金额  ', N'11:30～13:00付款，每单扣罚100', 1, 1, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1323, 1320, N'不打款冻结账户时间', N'13:00', N'string', N'', NULL, NULL, NULL, 8, N'时间点 ', N'13:00以后自动封号', 1, 1, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1324, 1320, N'收款方下午4:00前不确认罚款', N'16:00', N'string', N'', NULL, NULL, NULL, 8, N'不确认时间点,罚款金额 ', N'收款方下午4:00前不确认，要罚', 1, 1, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1325, 1320, N'第5轮及以后利息比例', N'0.15', N'scale', NULL, NULL, NULL, NULL, 8, N'比例', N'参数1为享受利息比例', 1, 0, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1400, 0, N'管理奖设置', N'', N'', N'', N'', NULL, NULL, 3, N'', N'', 1, 0, CAST(0x0000A4FA013D56A9 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1401, 1400, N'一代管理奖', N'0.1', N'scale', NULL, NULL, NULL, NULL, 8, N'比例', N'享受管理奖比例', 1, 1, CAST(0x0000A56001421244 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1402, 1400, N'二代管理奖', N'0.05', N'scale', NULL, NULL, NULL, NULL, 7, N'比例', N'享受管理奖比例', 1, 1, CAST(0x0000A560013F0D0C AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1800, 0, N'经理、专业团队', N'', N'', N'', N'', NULL, NULL, 4, NULL, N'', 1, 0, CAST(0x0000A4A60134C1BD AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1801, 1800, N'成为经理条件', N'1', N'number', N'2', N'number', NULL, NULL, 8, N'参数1为有效直推人数,参数2为有效团队人数', N'有效直推人数,有效团队人数为完成过一笔提供单才算', 1, 1, CAST(0x0000A56800B79EEF AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1802, 1800, N'成为专业团队条件', N'2', N'number', N'3', N'number', NULL, NULL, 2, N'参数1为有效直推人数,参数2为有效团队人数', N'有效直推人数,有效团队人数为完成过一笔提供单才算', 1, 1, CAST(0x0000A4BC010FACA2 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1803, 1800, N'1代经理奖', N'0.005', N'scale', N'', N'', N'', N'', 3, N'经理奖比例', N'', 1, 0, CAST(0x0000A53800F8DE8D AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1804, 1800, N'2代经理奖', N'0.005', N'scale', N'', N'', N'', N'', 4, N'经理奖比例', N'', 1, 0, CAST(0x0000A53800F8D780 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1805, 1800, N'3代经理奖', N'0.005', N'scale', N'', N'', N'', N'', 5, N'经理奖比例', N'', 1, 0, CAST(0x0000A53800F8CF52 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1806, 1800, N'4代经理奖', N'0.005', N'scale', N'', N'', N'', N'', 6, N'经理奖比例', N'', 1, 0, CAST(0x0000A53800F8C3D7 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (1807, 1800, N'5代以上经理奖', N'0.005', N'scale', N'', N'', N'', N'', 7, N'经理奖比例', N'', 1, 0, CAST(0x0000A53800F8BC91 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2000, 0, N'钱包', N'', N'', NULL, NULL, NULL, NULL, 13, NULL, NULL, 1, 1, CAST(0x0000A40E009FD50D AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2001, 2000, N'收益', N'收益钱包', N'', N'8640', N'number', N'14400', N'number', 1, N'钱包名称,参数1为德区第6天获得本金,善区第10天(单位分钟)获得本金', NULL, 1, 1, CAST(0x0000A4240177A63B AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2002, 2000, N'动态', N'动态钱包', N'', N'', N'', NULL, NULL, 2, N'钱包名称', N'', 1, 1, CAST(0x0000A4240177A63B AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2003, 2000, N'排单币', N'排单币钱包', N'', N'1', N'number', N'1', N'number', 3, N'钱包名称,排单100需要个数,转账倍数', NULL, 1, 1, CAST(0x0000A47500ABCAE8 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2004, 2000, N'激活币', N'激活币钱包', N'', N'1', N'number', N'1', N'number', 4, N'钱包名称,激活需要个数,转账倍数', N'', 1, 1, CAST(0x0000A47500ABCAE8 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2100, 0, N'提供帮助金额选项', N'', N'', N'', N'', NULL, NULL, 5, NULL, N'提供帮助金额', 1, 1, CAST(0x0000A4B800B10E8C AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2101, 2100, N'提供帮助设置', N'1000', N'number', N'20000', N'number', N'100', NULL, 4, N'最小排单金额,最大排单金额,参数3帮助倍数', NULL, 1, 1, CAST(0x0000A4B800B18C64 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2102, 2100, N'第一单提供帮助最大金额', N'5000', N'number', NULL, NULL, NULL, NULL, 3, N'第一单最大排单金额', NULL, 1, 1, CAST(0x0000A4B800B18C64 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2103, 2100, N'VP经理每提供一轮增加提供额度', N'2000', N'number', N'number', N'number', NULL, NULL, 1, N'完成一轮排单就再增加2000排单额，以此类推到10000为止', NULL, 1, 0, CAST(0x0000A4B800B18C64 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2104, 2100, N'消耗排单币', N'0.01', N'scale', NULL, NULL, NULL, NULL, 5, N'', N'排单币排单金额的1%', 1, 1, CAST(0x0000A4B800B18C64 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2105, 2100, N'5000', N'500', N'number', N'5', N'number', NULL, NULL, 2, N'人民币,消耗的排单币数额', NULL, 1, 0, CAST(0x0000A4B800B18C64 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2400, 0, N'抽奖设置', N'', N'', N'', N'', NULL, N'scale', 1, NULL, N'抽奖设置', 1, 0, CAST(0x0000A47500ABCAE8 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2401, 2400, N'特等奖', N'iphone6s', N'string', N'1', N'scale', N'', N'', 8, N'中奖金额,中奖概率', N'中奖概率为（2406参数的几分之几）', 1, 1, CAST(0x0000A60201327088 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2402, 2400, N'一等奖', N'800', N'string', N'5', N'scale', N'', N'', 8, N'中奖金额,中奖概率', N'中奖概率为（2406参数的几分之几）', 1, 1, CAST(0x0000A602012D700E AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2403, 2400, N'二等奖', N'400', N'string', N'10', N'scale', N'', N'', 8, N'中奖金额,中奖概率', N'中奖概率为（2406参数的几分之几）', 1, 1, CAST(0x0000A602012D46A2 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2404, 2400, N'三等奖', N'200', N'string', N'15', N'scale', N'', N'', 8, N'中奖金额,中奖概率', N'中奖概率为（2406参数的几分之几）', 1, 1, CAST(0x0000A602012D1F2F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2405, 2400, N'优秀奖', N'100', N'string', N'70', N'scale', N'', N'', 8, N'中奖金额,中奖概率', N'中奖概率为（2406参数的几分之几）', 1, 1, CAST(0x0000A602012CC667 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (2406, 2400, N'中奖概率', N'100', N'number', N'', N'', N'', N'', 8, N'中奖概率百分比', N'', 1, 1, CAST(0x0000A602012C7012 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3000, 0, N'排单限制', N'', N'', N'', N'', NULL, NULL, 4, NULL, N'交易市场', 1, 1, CAST(0x0000A4A5001D39B0 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3001, 3000, N'提供帮助金额限制', N'1000-20000', N'string', NULL, NULL, NULL, NULL, 1, N'金额范围', N'', 1, 0, CAST(0x0000A50F009B2F37 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3002, 3000, N'收益钱包接受帮助金额限制', N'100-20000', N'string', NULL, N'', NULL, NULL, 4, N'金额范围', NULL, 1, 1, CAST(0x0000A53400982E06 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3003, 3000, N'动态钱包接受帮助金额限制', N'100-20000', N'string', N'0.5', N'scale', NULL, NULL, 6, N'金额范围,最大金额不能大于 当前金额的50%', NULL, 1, 1, CAST(0x0000A50F00A9C352 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3004, 3000, N'经理钱包接受帮助金额限制', N'500-60000', N'string', N'', N'', NULL, NULL, 6, N'金额范围', N'', 1, 0, CAST(0x0000A50F00A9ACAE AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3005, 3000, N'提现倍数', N'100', N'number', NULL, NULL, NULL, NULL, 6, N'接受帮助金额倍数', NULL, 1, 1, CAST(0x0000A50F00A9ACAE AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3006, 3000, N'每天系统排单上限', N'200000', N'number', NULL, NULL, NULL, NULL, 6, N'日提供帮助总量上限', N'', 1, 0, CAST(0x0000A50F00A9ACAE AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3007, 3000, N'抢单区及快车道', N'0.1', N'scale', N'48', N'number', NULL, NULL, 6, N'抢单后息,日接受帮助金额总量上限', N'', 1, 0, CAST(0x0000A50F00A9ACAE AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3008, 3000, N'每天接受单数', N'1', N'number', NULL, NULL, NULL, NULL, 6, N'每天接受单数', N'', 1, 1, CAST(0x0000A50F00A9ACAE AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3100, 0, N'匹配及收付款时限', N'', N'', N'', N'', NULL, NULL, 5, NULL, N'提供帮助金额', 1, 1, CAST(0x0000A4B800B10E8C AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3101, 3100, N'提供帮助入匹配列表的时间', N'0', N'number', NULL, N'', NULL, NULL, 4, N'最少排队时间(分钟)', N'1天为1440分钟', 1, 0, CAST(0x0000A52201690809 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3102, 3100, N'接受帮助入匹配列表的时间', N'0', N'number', N'', N'', N'', NULL, 4, N'最少排队时间(分钟)', N'1天为1440分钟', 1, 0, CAST(0x0000A52201690809 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3103, 3100, N'订单排队出局时间', N'360', N'number', N'', N'', NULL, NULL, 4, N'订单排队时间', N'此时间过期后订单重排', 1, 0, CAST(0x0000A4F40173A361 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3105, 3100, N'首轮秒预定金', N'0.05', N'number', N'5', N'number', N'', NULL, 4, N'秒配预定金比例,限时打款(分钟)', N'首轮秒配金为5%，秒配预付金5小时内完成打款，否则封号处理', 1, 0, CAST(0x0000A52201690809 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3106, 3100, N'订单匹配后付款时限', N'1440', N'number', NULL, NULL, N'100', N'number', 6, N'全额匹配后付款时限(分钟),,超时不付款扣除推荐人动态钱包', N'1天为1440分钟', 1, 1, CAST(0x0000A53300D0BB63 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3108, 3100, N'订单付款后确认时限', N'1440', N'number', NULL, N'', NULL, NULL, 7, N'订单付款后确认时限', N'1天为1440分钟', 1, 1, CAST(0x0000A50F00A9914C AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3109, 3000, N'提供一单使用排单币', N'1', N'number', N'', N'', NULL, NULL, 7, N'数量', N'提供一单使用（参数1）个排单币', 1, 0, CAST(0x0000A50F00A9914C AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3110, 3000, N'提供排单间隔', N'1000', N'number', N'', N'', NULL, NULL, 7, N'分钟', N'排单间隔（分钟）', 1, 0, CAST(0x0000A50F00A9914C AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3400, 0, N'自动匹配设置', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, 0, CAST(0x0000A40E009B448F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3401, 3400, N'每天自动匹配金额上限', N'500000', N'number', N'', N'', N'', NULL, 1, N'金额上限', N'当天每匹配金额达到此值侧停止自动匹配', 0, 1, CAST(0x0000A542011AF2AA AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3402, 3400, N'每天自动匹配开始及结束时间', N'07:00', N'string', N'08:00', N'string', N'', NULL, 1, N'开始时间,结束时间', N'每天此时间范围内有提供订单提交时自动匹配', 0, 1, CAST(0x0000A5450157BBE0 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3403, 3400, N'每次自动匹配记录数', N'10', N'number', N'', N'', N'', NULL, 1, N'记录数', N'当有提供订单或接受订单提交时触发', 0, 1, CAST(0x0000A5450157BBE0 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3800, 0, N'其它参数', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, CAST(0x0000A40E009B448F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3801, 3800, N'汇率', N'1', N'number', N'', N'', NULL, NULL, 4, N'进场汇率,出场汇率', N'', 1, 1, CAST(0x0000A4F5014FEEF7 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3802, 3800, N'会员可看提供帮助代数', N'6', N'number', N'', N'', NULL, NULL, 2, N'会员可看代数', N'', 1, 1, CAST(0x0000A4A40008521A AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3803, 3800, N'出局后时限内必须复投', N'14400000000', N'number', NULL, N'', NULL, NULL, 2, N'每轮出局后时间内复投(分钟)', N'参数为0时条件失效', 1, 0, CAST(0x0000A52C00FEC9A8 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3804, 3800, N'出局后几小时后交易记录隐藏', N'0', N'number', N'', N'', N'', NULL, 2, N'出局后记录隐藏(分钟)', N'参数为0时条件失效', 1, 1, CAST(0x0000A52A00AF3A43 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3805, 3800, N'每月可提供帮助次数', N'5', N'number', N'', N'', N'', NULL, 2, N'每月可提供帮助次数', N'参数为0时条件失效', 1, 0, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3806, 3800, N'新注册账号期限内提供帮助', N'0', N'number', NULL, N'', NULL, NULL, 2, N'新会员限时提供帮助(分钟)', N'1天为1440分钟,为0时条件失效', 1, 1, CAST(0x0000A53900B161C1 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3807, 3000, N'提供帮助间隔时间', N'5', N'number', N'', N'', N'', NULL, 2, N'间隔时间(分钟)', N'两次提供帮助间隔时间,为0时条件失效', 1, 0, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3808, 3800, N'抢单开放时间', N'2016/6/17 9点整', N'string', NULL, N'', NULL, NULL, 2, N'抢单开放时间', N'抢单开放时间', 1, 0, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3809, 3800, N'解冻本金和利息解冻', N'10', N'number', NULL, NULL, NULL, NULL, 2, N'订单完成冻结本金、利息（单位分钟）', N'这里参数为分钟值', 1, 0, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3810, 3800, N'注册激活码1个（100元）', N'100', N'number', NULL, NULL, NULL, NULL, 2, N'注册成功打预付款后立返100元到用户账号中', N'', 1, 1, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3811, 3800, N'订单推荐人转移不打款扣除', N'300', N'number', NULL, NULL, NULL, NULL, 2, N'扣除推荐人（参数值1）数额的奖金', N'', 1, 0, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3812, 3800, N'抢单成功超时未付款扣除金额', N'300', N'number', NULL, NULL, NULL, NULL, 2, N'抢单成功超时未付款扣除(参数值1)金额', N'', 1, 0, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3813, 3800, N'抢单成功付款时限', N'2', N'number', NULL, NULL, NULL, NULL, 2, N'3小时内必须付款（单位分钟）', N'', 1, 0, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3814, 3800, N'手机号能注册的账号数', N'5', N'number', NULL, NULL, NULL, NULL, 2, N'每个手机号能注册的账号数量', N'', 1, 1, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (3815, 3800, N'购买排单币需要的理金和现金 ', N'1', N'number', N'10', N'number', NULL, NULL, 2, N'理金数量,现金数额 ', N'1个理金十现金购买排单币 ', 1, 1, CAST(0x0000A53600ABD152 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4000, 0, N'语言', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, CAST(0x0000A40E009B448F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4001, 4000, N'简体中文', N'简体中文', N'string', N'zh-CN', N'string', NULL, NULL, 1, NULL, N'简体中文', 0, 1, CAST(0x0000A40E00A01E20 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4002, 4000, N'繁体中文', N'繁體中文', N'string', N'zh-TW', N'string', NULL, NULL, 2, NULL, N'繁体中文', 0, 1, CAST(0x0000A40E00A01E20 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4003, 4000, N'英语', N'English', N'string', N'en-US', N'string', NULL, NULL, 3, NULL, N'英文', 0, 1, CAST(0x0000A40E00A01E20 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4005, 4000, N'马来西亚语', N'Melayu', N'string', N'Ms', N'string', NULL, NULL, 5, NULL, N'马来西亚语', 0, 1, CAST(0x0000A40E00A01E20 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4008, 4000, N'越南语', N'tiếng Việt', N'string', N'Vi', N'string', NULL, NULL, 8, NULL, N'越南文', 0, 1, CAST(0x0000A40E00A01E20 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4009, 4000, N'泰语', N'ภาษาไทย', N'string', N'Th', N'string', NULL, NULL, 9, NULL, N'泰语', 0, 1, CAST(0x0000A42200C1330D AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4500, 0, N'短信模板', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, CAST(0x0000A40E009B448F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4502, 4500, N'注册成功通知模板', N'0', N'number', N'恭喜您！您已成功注册{SYSNAME}！您的账号为{USERNAME}。', N'string', NULL, NULL, 1, N'1为启用', N'会员帐号{USERNAME}，系统名称{SYSNAME}', 0, 1, CAST(0x0000A534009FA423 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4503, 4500, N'匹配成功是否通知提供单会员', N'1', N'number', N'恭喜您！您的提供帮助订单{SUPPLYNO}已成功匹配，请在24小时内付款。', N'string', NULL, NULL, 1, N'1为启用', N'系统名称{SYSNAME}', 0, 1, CAST(0x0000A534009FA819 AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4504, 4500, N'匹配成功是否通知接受单会员', N'0', N'number', N'恭喜您！您的接受帮助订单{ACCEPTNO}已成功匹配，请留意对方付款。', N'string', N'', NULL, 1, N'1为启用', N'系统名称{SYSNAME}', 0, 1, CAST(0x0000A534009FAC76 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4505, 4500, N'付款成功是否通知接受单会员', N'1', N'number', N'您的匹配订单{ORDERNUMBER}已付款成功，请在24小时内进行确认。', N'string', N'', NULL, 1, N'1为启用', N'订单号{ORDERNUMBER}，会员帐号{USERNAME}，系统名称{SYSNAME}', 0, 1, CAST(0x0000A534009FB0C6 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (4507, 4500, N'取回密码短信', N'0', N'number', N'您好{USERNAME}，您在使用找回密码功能，找回密码需要填写的激活码是：{CODE}', N'string', N'', NULL, 1, N'1为启用', N'会员帐号{USERNAME}，激活码{CODE}', 0, 1, CAST(0x0000A534009FB0C6 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5000, 0, N'银行选项', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, CAST(0x0000A40E009B448F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5001, 5000, N'中国银行', N'中国银行', N'string', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(0x0000A40E009B70E1 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5002, 5000, N'中国农业银行', N'中国农业银行', N'string', NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 1, CAST(0x0000A40E009B86B8 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5003, 5000, N'中国建设银行', N'中国建设银行', N'string', NULL, NULL, NULL, NULL, 3, NULL, NULL, 0, 1, CAST(0x0000A40E009B97B0 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5004, 5000, N'中国工商银行', N'中国工商银行', N'string', N'', NULL, NULL, NULL, 4, NULL, N'', 0, 1, CAST(0x0000A4F90117AE7F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5005, 5000, N'中国邮政储蓄银行', N'中国邮政储蓄银行', N'string', NULL, NULL, NULL, NULL, 5, NULL, NULL, 0, 1, CAST(0x0000A4F90117A338 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5006, 5000, N'支付宝', N'支付宝', N'string', N'', N'string', NULL, NULL, 6, NULL, N'', 0, 1, CAST(0x0000A4FA0124C08E AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5007, 5000, N'农村信用社', N'农村信用社', N'string', NULL, N'string', NULL, NULL, 7, NULL, NULL, 0, 1, CAST(0x0000A4FA0124D97F AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5009, 5000, N'兴业银行', N'兴业银行', N'string', N'', N'string', NULL, NULL, 8, NULL, N'', 0, 1, CAST(0x0000A4FB011380BB AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5010, 5000, N'招商银行', N'招商银行', N'string', N'', N'string', NULL, NULL, 9, NULL, N'', 0, 1, CAST(0x0000A506011895B7 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5011, 5000, N'民生银行', N'民生银行', N'', N'', N'string', NULL, NULL, 10, NULL, N'', 0, 1, CAST(0x0000A50800BA7778 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5100, 0, N'留言选项', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 1, CAST(0x0000A43500B55DBE AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5101, 5100, N'注册问题', N'', N'', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(0x0000A43500B55DD3 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (5102, 5100, N'奖金问题', N'', N'', NULL, NULL, NULL, NULL, 2, NULL, NULL, 0, 1, CAST(0x0000A43500B55DDD AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (6000, 0, N'商品分类', N'', N'', NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, 0, CAST(0x0000A43500B55DBE AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (6101, 6000, N'金融', N'', N'', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(0x0000A43500B55DD3 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (6102, 6000, N'科技', N'', N'', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(0x0000A43500B55DD3 AS DateTime))
INSERT [dbo].[SysParam] ([ID], [PID], [Name], [Value], [ValueType], [Value2], [Value2Type], [Value3], [Value3Type], [Sort], [InputFormat], [Remark], [IsLock], [IsUse], [LastUpdateTime]) VALUES (6103, 6000, N'民用', N'', N'', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0, 1, CAST(0x0000A43500B55DD3 AS DateTime))
/****** Object:  Table [dbo].[SysLog]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SysLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[Content] [ntext] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SysLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'程序BUG,程序警告' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'系统运行日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SysLog'
GO
/****** Object:  Table [dbo].[SupplyHelp]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SupplyHelp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MainSupplyID] [int] NOT NULL,
	[SupplyNo] [nvarchar](50) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[SupplyAmount] [decimal](18, 2) NOT NULL,
	[ExchangeAmount] [decimal](18, 2) NOT NULL,
	[HaveMatchingAmount] [decimal](18, 2) NOT NULL,
	[HaveAcceptAmount] [decimal](18, 2) NOT NULL,
	[Status] [int] NOT NULL,
	[PayWay] [nvarchar](50) NULL,
	[IsTop] [bit] NOT NULL,
	[IsRepeatQueuing] [bit] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[RepeatQueuingTime] [datetime] NULL,
	[TotalMoney] [decimal](18, 2) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[AccrualMoney] [decimal](18, 2) NOT NULL,
	[AccrualDay] [int] NOT NULL,
	[SurplusAccrualDay] [int] NOT NULL,
	[AccruaRate] [decimal](18, 3) NULL,
	[IsAccrualEffective] [bit] NOT NULL,
	[IsAccruaCount] [bit] NOT NULL,
	[AccrualStopReason] [nvarchar](50) NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[CancelTime] [datetime] NULL,
	[CancelReason] [nvarchar](50) NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate1] [datetime] NULL,
	[ReserveDate2] [datetime] NULL,
	[ReserveBoolean1] [bit] NULL,
	[ReserveBoolean2] [bit] NULL,
	[ReserveDecamal1] [decimal](18, 2) NULL,
	[ReserveDecamal2] [decimal](18, 2) NULL,
	[OrderType] [int] NULL,
	[OrderMoney] [decimal](18, 2) NULL,
	[Remark] [nvarchar](50) NULL,
	[IsAgent] [bit] NULL,
	[RoundAmount] [decimal](18, 2) NULL,
	[Type] [int] NULL,
	[SupplyNum] [int] NULL,
 CONSTRAINT [PK_Market] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提供帮助金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'SupplyAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'汇率金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ExchangeAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已匹配金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'HaveMatchingAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已被接受帮助的额度' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'HaveAcceptAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1未匹配,2部分匹配,3全部匹配' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'PayWay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'IsTop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已经重复排队' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'IsRepeatQueuing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单总额（含利息）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'TotalMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'利息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'AccrualMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'利息天数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'AccrualDay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单日利率' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'AccruaRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'利息是否生效' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'IsAccrualEffective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否还计算利息' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'IsAccruaCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'利息停止原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'AccrualStopReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'Province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区县' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取消时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'CancelTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveInt1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveDate1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveDate2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveBoolean1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveBoolean2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveDecamal1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'ReserveDecamal2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单类型（0预定金,1全额单）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'市场交易卖出表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'SupplyHelp'
GO
SET IDENTITY_INSERT [dbo].[SupplyHelp] ON
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (1, 0, N'S0010001', 1, N'1', CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 3, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C100FF5B43 AS DateTime), NULL, CAST(1100.00 AS Decimal(18, 2)), CAST(0x0000A9C1009C7AC3 AS DateTime), CAST(100.00 AS Decimal(18, 2)), 6, 0, CAST(0.000 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010001', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(1000.00 AS Decimal(18, 2)), N'', NULL, CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (2, 0, N'S0010002', 1, N'1', CAST(4000.00 AS Decimal(18, 2)), CAST(4000.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 2, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C100FF5B82 AS DateTime), NULL, CAST(4000.00 AS Decimal(18, 2)), CAST(0x0000A9C1009C7B02 AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0, 6, CAST(0.000 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010001', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(4000.00 AS Decimal(18, 2)), N'', NULL, CAST(5000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (3, 0, N'S0010003', 4, N'bbb001', CAST(200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C2004ED317 AS DateTime), NULL, CAST(350.00 AS Decimal(18, 2)), CAST(0x0000A9C101777497 AS DateTime), CAST(150.00 AS Decimal(18, 2)), 15, 0, CAST(0.010 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010003', NULL, 1, NULL, CAST(0x0000A9C10182622B AS DateTime), NULL, NULL, NULL, NULL, 1, CAST(200.00 AS Decimal(18, 2)), N'', NULL, CAST(1000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (4, 0, N'S0010004', 4, N'bbb001', CAST(800.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 3, N'银行支付,支付宝', 1, 0, CAST(0x0000A9C2004ED350 AS DateTime), NULL, CAST(800.00 AS Decimal(18, 2)), CAST(0x0000A9C1017774D0 AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0, 15, CAST(0.010 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010003', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(800.00 AS Decimal(18, 2)), N'', NULL, CAST(1000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (5, 0, N'S0010005', 3, N'aaa001', CAST(200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 5, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C2005039DE AS DateTime), NULL, CAST(350.00 AS Decimal(18, 2)), CAST(0x0000A9C10178DB5E AS DateTime), CAST(150.00 AS Decimal(18, 2)), 15, 0, CAST(0.010 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010005', NULL, 1, NULL, CAST(0x0000A9C10180CE2F AS DateTime), NULL, NULL, NULL, NULL, 1, CAST(200.00 AS Decimal(18, 2)), N'', NULL, CAST(1000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (6, 0, N'S0010006', 3, N'aaa001', CAST(800.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'银行支付,支付宝', 1, 0, CAST(0x0000A9C2005039E8 AS DateTime), NULL, CAST(800.00 AS Decimal(18, 2)), CAST(0x0000A9C10178DB68 AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0, 15, CAST(0.010 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010005', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(800.00 AS Decimal(18, 2)), N'', NULL, CAST(1000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (7, 0, N'S0010007', 7, N'abc123', CAST(200.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C20169E83F AS DateTime), NULL, CAST(200.00 AS Decimal(18, 2)), CAST(0x0000A9C2010707BF AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0, 15, CAST(0.010 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010007', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(200.00 AS Decimal(18, 2)), N'', NULL, CAST(1000.00 AS Decimal(18, 2)), NULL, NULL)
INSERT [dbo].[SupplyHelp] ([ID], [MainSupplyID], [SupplyNo], [UID], [UserName], [SupplyAmount], [ExchangeAmount], [HaveMatchingAmount], [HaveAcceptAmount], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [RepeatQueuingTime], [TotalMoney], [CreateTime], [AccrualMoney], [AccrualDay], [SurplusAccrualDay], [AccruaRate], [IsAccrualEffective], [IsAccruaCount], [AccrualStopReason], [Province], [City], [County], [CancelTime], [CancelReason], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [OrderType], [OrderMoney], [Remark], [IsAgent], [RoundAmount], [Type], [SupplyNum]) VALUES (8, 0, N'S0010008', 7, N'abc123', CAST(800.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C20169E851 AS DateTime), NULL, CAST(800.00 AS Decimal(18, 2)), CAST(0x0000A9C2010707D1 AS DateTime), CAST(0.00 AS Decimal(18, 2)), 0, 15, CAST(0.010 AS Decimal(18, 3)), 0, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'S0010007', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, 1, CAST(800.00 AS Decimal(18, 2)), N'', NULL, CAST(1000.00 AS Decimal(18, 2)), NULL, NULL)
SET IDENTITY_INSERT [dbo].[SupplyHelp] OFF
/****** Object:  Table [dbo].[SMSLog]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SMSLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Mobile] [nvarchar](250) NOT NULL,
	[SMSContent] [nvarchar](250) NOT NULL,
	[ReturnValue] [nvarchar](50) NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_SMSLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[SMSLog] ON
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (1, N'18645676100', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A664011B5D70 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (2, N'18645676100', N'恭喜您！您的提供帮助订单S0010003已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A664011C550E AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (3, N'18645640350', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66500F2BDC2 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (4, N'18645676100', N'恭喜您！您的提供帮助订单S0010007已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66500F7FDEC AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (5, N'18645676100', N'恭喜您！您的提供帮助订单S0010010已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66501167E7B AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (6, N'18645676100', N'恭喜您！您的提供帮助订单S0010012已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66501235F6E AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (7, N'18645669450', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66600A3EAB8 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (8, N'18645623605', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66700A4E661 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (9, N'18645623605', N'恭喜您！您的提供帮助订单S0010002已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66700A5421D AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (10, N'18645649204', N'恭喜您！您的提供帮助订单S0010009已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66700B26A24 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (11, N'18645612628', N'恭喜您！您的提供帮助订单S0010011已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66700F5AF79 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (12, N'18645688110', N'恭喜您！您的提供帮助订单S0010013已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66700F5B041 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (13, N'18645620322', N'恭喜您！您的提供帮助订单S0010015已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66700F5B175 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (14, N'18645695485', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800A4560F AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (15, N'18645695485', N'恭喜您！您的提供帮助订单S0010002已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800A46246 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (16, N'18645648833', N'恭喜您！您的提供帮助订单S0010005已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800A8BF65 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (17, N'18645648833', N'恭喜您！您的提供帮助订单S0010006已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800A8C791 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (18, N'18645668950', N'恭喜您！您的提供帮助订单S0010007已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800B00825 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (19, N'18645682320', N'恭喜您！您的提供帮助订单S0010013已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800B0093D AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (20, N'18645668950', N'恭喜您！您的提供帮助订单S0010008已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800B0149E AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (21, N'18645682320', N'恭喜您！您的提供帮助订单S0010014已成功匹配，请在24小时内付款。', N'发送成功', CAST(0x0000A66800B0159E AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (22, N'18645626962', N'恭喜您！您的提供帮助订单S0010002已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A82E00016A5E AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (23, N'15905622945', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A82E0005FFDE AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (24, N'18368332996', N'恭喜您！您的提供帮助订单S0010002已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A8370174A54F AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (25, N'18295953688', N'恭喜您！您的提供帮助订单S0010003已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A8370174A591 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (26, N'13535058623', N'恭喜您！您的提供帮助订单S0010005已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83800C98F3C AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (27, N'18295953688', N'恭喜您！您的提供帮助订单S0010004已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83900C9B867 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (28, N'13887526223', N'恭喜您！您的提供帮助订单S0010006已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83900C9B8A8 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (29, N'15888786980', N'恭喜您！您的提供帮助订单S0010007已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83900C9B935 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (30, N'13866998876', N'恭喜您！您的提供帮助订单S0010008已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83900C9B968 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (31, N'13567381997', N'恭喜您！您的提供帮助订单S0010010已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83900D6769C AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (32, N'17183577525', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83900DACF6A AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (33, N'15935963825', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83B00B8BF4F AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (34, N'12345678901', N'恭喜您！您的提供帮助订单S0010005已成功匹配，请在24小时内付款。', N'发送失败，结果：-4', CAST(0x0000A83D00AFF6B8 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (35, N'15935963825', N'恭喜您！您的提供帮助订单S0010009已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83D00CE8EE4 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (36, N'15935963825', N'恭喜您！您的提供帮助订单S0010011已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83E00CD6B83 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (37, N'15537705862', N'恭喜您！您的提供帮助订单S0010013已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83F01307FE0 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (38, N'15537705862', N'恭喜您！您的提供帮助订单S0010013已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83F013A3F67 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (39, N'15537705852', N'恭喜您！您的提供帮助订单S0010017已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A83F013A3F8C AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (40, N'15135907645', N'恭喜您！您的提供帮助订单S0010032已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A8400131D8D0 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (41, N'13903774090', N'恭喜您！您的提供帮助订单S0010023已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A840013299EA AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (42, N'15935963825', N'恭喜您！您的提供帮助订单S0010026已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84001329A0B AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (43, N'51818181', N'恭喜您！您的提供帮助订单S0010033已成功匹配，请在24小时内付款。', N'发送失败，结果：-4', CAST(0x0000A8400136A77B AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (44, N'15203010779', N'恭喜您！您的提供帮助订单S0010038已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A8410109D7ED AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (45, N'15516823899', N'您好yjl888888，您在使用找回密码功能，找回密码需要填写的激活码是：87617', N'发送失败，结果：-2', CAST(0x0000A84101215CA2 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (46, N'15516823899', N'您好yjl888888，您在使用找回密码功能，找回密码需要填写的激活码是：12311', N'发送失败，结果：-2', CAST(0x0000A841012165A4 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (47, N'184846184', N'恭喜您！您的提供帮助订单S0010048已成功匹配，请在24小时内付款。', N'发送失败，结果：-4', CAST(0x0000A8410155E8CA AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (48, N'51818181', N'恭喜您！您的提供帮助订单S0010050已成功匹配，请在24小时内付款。', N'发送失败，结果：-4', CAST(0x0000A841015727EC AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (49, N'18485626', N'恭喜您！您的提供帮助订单S0010055已成功匹配，请在24小时内付款。', N'发送失败，结果：-4', CAST(0x0000A84200B37A66 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (50, N'15117595484', N'恭喜您！您的提供帮助订单S0010037已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A842013A8DF9 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (51, N'13586454125', N'恭喜您！您的提供帮助订单S0010044已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A842013A8E49 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (52, N'15117595484', N'恭喜您！您的提供帮助订单S0010037已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A842013B45D9 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (53, N'18485626', N'恭喜您！您的提供帮助订单S0010060已成功匹配，请在24小时内付款。', N'发送失败，结果：-4', CAST(0x0000A84300AC4AB8 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (54, N'1945858', N'恭喜您！您的提供帮助订单S0010061已成功匹配，请在24小时内付款。', N'发送失败，结果：-4', CAST(0x0000A84300AC4AD9 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (55, N'18135225227', N'恭喜您！您的提供帮助订单S0010068已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A847011CA287 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (56, N'18368572126', N'恭喜您！您的提供帮助订单S0010071已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A847011CA2EA AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (57, N'15935963825', N'恭喜您！您的提供帮助订单S0010073已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A847011CA339 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (58, N'15537705852', N'恭喜您！您的提供帮助订单S0010081已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84900B4B714 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (59, N'13193661861', N'恭喜您！您的提供帮助订单S0010086已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84A00B57C49 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (60, N'15537705862', N'恭喜您！您的提供帮助订单S0010085已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F5D9BF AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (61, N'13586454125', N'恭喜您！您的提供帮助订单S0010089已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F656E6 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (62, N'15117595484', N'恭喜您！您的提供帮助订单S0010090已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F6A46C AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (63, N'15024356963', N'恭喜您！您的提供帮助订单S0010091已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F6D795 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (64, N'15516823899', N'恭喜您！您的提供帮助订单S0010092已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F6F764 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (65, N'13687526779', N'恭喜您！您的提供帮助订单S0010093已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F72A96 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (66, N'13903774090', N'恭喜您！您的提供帮助订单S0010095已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F77923 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (67, N'15824352366', N'恭喜您！您的提供帮助订单S0010096已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84B00F77944 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (68, N'15935963825', N'恭喜您！您的提供帮助订单S0010098已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A84C00B77E56 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (69, N'18645605222', N'恭喜您！您的提供帮助订单S0010001已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A9C100BF1A01 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (70, N'18645605222', N'您好1，您在使用找回密码功能，找回密码需要填写的激活码是：47053', N'发送失败，结果：-2', CAST(0x0000A9C100C804DF AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (71, N'13311111111', N'恭喜您！您的提供帮助订单S0010005已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A9C1017A9D84 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (72, N'18861111111', N'恭喜您！您的提供帮助订单S0010003已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A9C1017AADD0 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (73, N'18861111111', N'您的匹配订单R0287427已付款成功，请在24小时内进行确认。', N'发送失败，结果：-2', CAST(0x0000A9C1017D3F3C AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (74, N'13311111111', N'您的匹配订单R1547277已付款成功，请在24小时内进行确认。', N'发送失败，结果：-2', CAST(0x0000A9C1017F4E36 AS DateTime))
INSERT [dbo].[SMSLog] ([ID], [Mobile], [SMSContent], [ReturnValue], [CreateTime]) VALUES (75, N'18861111111', N'恭喜您！您的提供帮助订单S0010004已成功匹配，请在24小时内付款。', N'发送失败，结果：-2', CAST(0x0000A9C20109CB19 AS DateTime))
SET IDENTITY_INSERT [dbo].[SMSLog] OFF
/****** Object:  Table [dbo].[ShopProduct]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ShopID] [int] NOT NULL,
	[ShopName] [nvarchar](50) NULL,
	[CreateTime] [datetime] NOT NULL,
	[ProductName] [nvarchar](250) NOT NULL,
	[ShortName] [nvarchar](64) NULL,
	[ProductCode] [nvarchar](250) NULL,
	[Spec] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[ImageUrl] [nvarchar](250) NULL,
	[ClassId] [int] NOT NULL,
	[CostPrice] [decimal](18, 2) NULL,
	[RealPrice] [decimal](18, 2) NOT NULL,
	[FreightPrice] [decimal](18, 2) NULL,
	[Stock] [int] NOT NULL,
	[ShortContent] [nvarchar](250) NULL,
	[Content] [nvarchar](max) NULL,
	[IsSales] [bit] NOT NULL,
	[SaleCount] [int] NOT NULL,
	[IsStar] [bit] NULL,
	[IsHot] [bit] NULL,
	[IsElite] [bit] NULL,
	[IsTop] [bit] NULL,
	[Hits] [int] NOT NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveStr3] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate] [datetime] NULL,
	[ReserveDecamal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ShopProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopOrderDetail]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopOrderDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProducName] [nvarchar](64) NOT NULL,
	[ByCount] [int] NOT NULL,
	[Spec] [nvarchar](50) NULL,
	[Unit] [nvarchar](50) NULL,
	[UnitPrice] [decimal](18, 2) NOT NULL,
	[TotaPrice] [decimal](18, 2) NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ShopOrderDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopOrder]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopOrder](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[ShopID] [int] NOT NULL,
	[ShopName] [nvarchar](50) NULL,
	[OrderNumber] [nvarchar](50) NOT NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Town] [nvarchar](50) NULL,
	[RecAddress] [nvarchar](50) NOT NULL,
	[RecLinkMan] [nvarchar](50) NOT NULL,
	[RecPhone] [nvarchar](50) NOT NULL,
	[RecZip] [nvarchar](50) NULL,
	[PayTime] [datetime] NULL,
	[FinishTime] [datetime] NULL,
	[DelivertTime] [datetime] NULL,
	[TotalCount] [int] NOT NULL,
	[TotalPrice] [decimal](18, 2) NOT NULL,
	[BuyMsg] [nvarchar](250) NULL,
	[Remark] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
	[Logistics] [nvarchar](250) NULL,
	[ShipFreight] [decimal](18, 2) NULL,
	[CreateTime] [datetime] NOT NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveStr3] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate] [datetime] NULL,
	[ReserveDecamal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ShopOrder] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ShopInfo]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShopInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[BeginTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[IsActivation] [bit] NOT NULL,
	[ActivationTime] [datetime] NULL,
	[ShopName] [nvarchar](50) NOT NULL,
	[ShopClass] [int] NOT NULL,
	[Tel] [nvarchar](50) NULL,
	[Address] [nvarchar](max) NULL,
	[LogoImg] [nvarchar](max) NULL,
	[ShopLevel] [int] NOT NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Town] [nvarchar](50) NULL,
	[IsLock] [bit] NOT NULL,
	[ShopIntro] [nvarchar](max) NULL,
	[ShopQQ] [nvarchar](50) NULL,
	[BanerImg] [nvarchar](max) NULL,
	[ReserveStr1] [nvarchar](250) NULL,
	[ReserveStr2] [nvarchar](250) NULL,
	[ReserveStr3] [nvarchar](250) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate] [datetime] NULL,
	[ReserveDecamal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_ShopInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settlement]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settlement](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Period] [int] NOT NULL,
	[Bonus] [decimal](18, 2) NOT NULL,
	[BalanceMode] [int] NOT NULL,
	[TotalUser] [int] NOT NULL,
	[TotalBonus] [decimal](18, 2) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate] [datetime] NULL,
	[ReserveBoolean] [bit] NULL,
	[ReserveDecamal1] [decimal](18, 2) NULL,
	[ReserveDecamal2] [decimal](18, 2) NULL,
	[ReserveDecamal3] [decimal](18, 2) NULL,
 CONSTRAINT [PK_Balance] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'分红金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'Bonus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算方式（0系统,1手工）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'BalanceMode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveInt1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveBoolean'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveDecamal1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveDecamal2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement', @level2type=N'COLUMN',@level2name=N'ReserveDecamal3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Settlement'
GO
SET IDENTITY_INSERT [dbo].[Settlement] ON
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (1, 1, CAST(0.00 AS Decimal(18, 2)), 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9C1009CF16E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (2, 2, CAST(0.00 AS Decimal(18, 2)), 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9C100B612D6 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (3, 3, CAST(0.00 AS Decimal(18, 2)), 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9C100BC937B AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (4, 4, CAST(0.00 AS Decimal(18, 2)), 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9C100BCCAFB AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (5, 5, CAST(0.00 AS Decimal(18, 2)), 1, 1, CAST(50.00 AS Decimal(18, 2)), CAST(0x0000A9C100BD6A66 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (6, 6, CAST(0.00 AS Decimal(18, 2)), 1, 3, CAST(70.00 AS Decimal(18, 2)), CAST(0x0000A9C1017FC675 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (7, 7, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1017FF559 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (8, 8, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1018012D9 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (9, 9, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1018020BF AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (10, 10, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1018027F6 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (11, 11, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1018116C4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (12, 12, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1018153C2 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (13, 13, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1018179C1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (14, 14, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C10183D9B3 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (15, 15, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C10184044F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (16, 16, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C101842016 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (17, 17, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C10184A64D AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (18, 18, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C10184B791 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (19, 19, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C101857F3F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (20, 20, CAST(0.00 AS Decimal(18, 2)), 1, 2, CAST(20.00 AS Decimal(18, 2)), CAST(0x0000A9C1018590A4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (21, 21, CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9C10185FCD2 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (22, 22, CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9C200E4EF9F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Settlement] ([ID], [Period], [Bonus], [BalanceMode], [TotalUser], [TotalBonus], [CreateTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal1], [ReserveDecamal2], [ReserveDecamal3]) VALUES (23, 23, CAST(0.00 AS Decimal(18, 2)), 1, 0, CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A9C200FB3BC4 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Settlement] OFF
/****** Object:  Table [dbo].[PINCode]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PINCode](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[KeyCode] [nvarchar](50) NOT NULL,
	[Investment] [decimal](18, 2) NOT NULL,
	[IsUsed] [bit] NOT NULL,
	[OriginUID] [int] NULL,
	[OriginUserName] [nvarchar](50) NULL,
	[UseUID] [int] NULL,
	[UseUserName] [nvarchar](50) NULL,
	[UseTime] [datetime] NULL,
	[CreateTime] [datetime] NOT NULL,
	[OriginDescribe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PINCode] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'激活码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'KeyCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'激活码适用金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'Investment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否使用' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'IsUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'OriginUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'OriginUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'UseUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'UseUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'UseTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来源' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'PINCode', @level2type=N'COLUMN',@level2name=N'OriginDescribe'
GO
/****** Object:  StoredProcedure [dbo].[Pager]    Script Date: 12/27/2018 22:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Pager] 
@PageIndex         int, 
@PageSize      int, 
@TableName    nvarchar(4000), 
@Where     nvarchar(max)='', 
@rowcount int output
as 
Declare @intStart    int 
Declare @intEnd         int 
Declare @SQl nvarchar(max), @WhereR nvarchar(max), @OrderBy nvarchar(max) 
set @rowcount=0 
set nocount on 
if @Where<>'' 
begin 
set @Where=' and '+@Where 
end 
if CHARINDEX('order by', @Where)>0 
begin 
set @WhereR=substring(@Where, 1, CHARINDEX('order by',@Where)-1) --取得条件 
set @OrderBy=substring(@Where, CHARINDEX('order by',@Where), Len(@Where)) --取得排序方式(order by 字段 方式) 
end 
else 
begin 
set @WhereR=@Where 
set @OrderBy=' order by ID desc' 
end 
set @SQl='SELECT @rowcount=count(*) from '+cast(@TableName as varchar(4000))+' where 1=1 '+@WhereR 
exec sp_executeSql @SQl,N'@rowcount int output',@rowcount output 
if @PageIndex=0 and @PageSize=0 --不进行分页,查询所有数据列表 
begin 
set @SQl='SELECT * from '+cast(@TableName as varchar(4000))+' where 1=1 '+@Where 
end 
else --进行分页查询数据列表 
begin 
set @intStart=(@PageIndex-1)*@PageSize+1; 
set @intEnd=@intStart+@PageSize-1 
set @SQl='select * from(select *,ROW_NUMBER() OVER('+cast(@OrderBy as nvarchar(400))+') as row from ' 
set @SQl=@SQL+@TableName+' where 1=1 '+@WhereR+') as a where row between '+cast(@intStart as varchar)+' and '+cast(@intEnd as varchar) 
end 
exec sp_executeSql @SQl 
set nocount off
GO
/****** Object:  StoredProcedure [dbo].[p_RestoreDB]    Script Date: 12/27/2018 22:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[p_RestoreDB]
        @BKFILE NVARCHAR(1000),   --定义要恢复的备份文件名
        @DBNAME SYSNAME,          --定义恢复后的数据库名,默认为备份的文件名
        @RETYPE NVARCHAR(10)='DB',--恢复类型:'DB'完整恢复数据库,'DBNOR' 为差异恢复,日志恢复进行完整恢复,'DF' 差异备份的恢复,'LOG' 日志恢复
        @FILENUMBER INT=1,        --恢复的文件号
        @OVEREXIST BIT=1          --是否覆盖已经存在的数据库,仅@RETYPE为  
    AS
    BEGIN

 

 

        DECLARE @SQL VARCHAR(8000)
 
        --得到恢复后的数据库名
        IF ISNULL(@DBNAME,'')=''
           SELECT @SQL=REVERSE(@BKFILE)
           ,@SQL=CASE WHEN CHARINDEX('.',@SQL)=0 THEN @SQL
           ELSE SUBSTRING(@SQL,CHARINDEX('.',@SQL)+1,1000) END
           ,@SQL=CASE WHEN CHARINDEX('\',@SQL)=0 THEN @SQL
           ELSE LEFT(@SQL,CHARINDEX('\',@SQL)-1) END
           ,@DBNAME=REVERSE(@SQL)
 
        --生成数据库恢复语句
        SET @SQL='RESTORE '+CASE @RETYPE WHEN 'LOG' THEN 'LOG ' ELSE 'DATABASE ' END
           +'['+@DBNAME+']'
           +' FROM DISK='''+@BKFILE+''''
           +' WITH FILE='+CAST(@FILENUMBER AS VARCHAR)
           +CASE WHEN @OVEREXIST=1 AND @RETYPE IN('DB','DBNOR') THEN ',REPLACE' ELSE '' END
           +CASE @RETYPE WHEN 'DBNOR' THEN ',NORECOVERY' ELSE ',RECOVERY' END
 
        --设当前数据库离线状态
        EXEC('ALTER DATABASE ['+@DBNAME+'] SET OFFLINE WITH ROLLBACK IMMEDIATE') 
 
        --恢复数据库
        EXEC(@SQL)
 
        --设当前数据库连线状态
        EXEC('ALTER DATABASE ['+@DBNAME+'] SET ONLINE')
 
    END
GO
/****** Object:  Table [dbo].[Notice]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notice](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Platform] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[IsTop] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Notice_1] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员公告表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Notice'
GO
/****** Object:  Table [dbo].[Navigation]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Navigation](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NOT NULL,
	[Child] [int] NOT NULL,
	[Icon] [nvarchar](50) NULL,
	[Title] [nvarchar](50) NOT NULL,
	[Url] [nvarchar](250) NOT NULL,
	[Sort] [int] NOT NULL,
	[IsShow] [bit] NOT NULL,
	[IsSubAccout] [bit] NULL,
 CONSTRAINT [PK_Navigation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Navigation] ON
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (1, 0, 0, N'fa-desktop', N'首页', N'/usercenter/home', 0, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (2, 0, 7, N'fa-user', N'会员管理', N'/usercenter/user/', 3, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (3, 2, 0, N'fa-plus', N'注册会员', N'/usercenter/user/add', 1, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (4, 18, 0, N'fa-heart-o', N'激活码', N'/usercenter/finance/pincode', 5, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (5, 2, 0, N'fa-heart', N'我的会员列表', N'/usercenter/user/activation', 2, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (6, 2, 0, N'fa-male', N'会员子帐号管理', N'/usercenter/user/subaccount', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (7, 2, 0, N'fa-sitemap', N'会员图谱', N'/usercenter/user/doubletrack', 4, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (9, 2, 0, N'fa-edit', N'推广链接', N'/usercenter/user/mylink', 5, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (10, 0, 2, N'fa-leaf', N'商务中心', N'/usercenter/agent/', 7, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (11, 10, 0, N'fa-crosshairs', N'申请商务中心', N'/usercenter/agent/applyagent', 1, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (12, 10, 0, N'fa-th', N'我管辖的会员', N'/usercenter/agent/index', 2, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (13, 0, 4, N'fa-gavel', N'交易中心', N'ttc', 5, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (14, 13, 0, N'fa-crosshairs', N'MTC币交易大厅', N'/usercenter/trade/ttc', 1, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (15, 13, 0, N'fa-umbrella', N'拆分币交易大厅', N'/usercenter/cfb/ttc', 2, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (16, 13, 0, N'fa-shopping-cart', N'EP交易大厅', N'/usercenter/usd/ttc', 3, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (17, 13, 0, N'fa-list', N'委托管理', N'/usercenter/trade/order', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (18, 0, 9, N'fa-bar-chart-o', N'财务管理', N'/usercenter/finance/', 7, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (19, 18, 0, N'fa-retweet', N'奖金转现金币', N'/usercenter/finance/applyexchange?fromCoin=2002&toCoin=2001', 1, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (21, 18, 0, N'fa-credit-card', N'现金钱包提现', N'/usercenter/finance/applytakecash?takeCoin=2002', 2, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (22, 18, 0, N'fa-list', N'我的提现列表', N'/usercenter/finance/takecash', 3, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (23, 18, 0, N'fa-credit-card', N'钱包充值', N'/usercenter/finance/applyremittance', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (24, 18, 0, N'fa-list', N'我的充值列表', N'/usercenter/finance/remittance', 5, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (25, 18, 0, N'fa-list', N'奖金明细', N'/usercenter/finance/bonusdetail', 4, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (26, 18, 0, N'fa-share-square-o', N'会员转账', N'/usercenter/finance/applytransfer', 2, 1, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (27, 18, 0, N'fa-list', N'转帐记录', N'/usercenter/finance/transfer', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (29, 18, 0, N'fa-list', N'我的收益', N'/usercenter/finance/bonustotal', 9, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (30, 0, 4, N'fa-envelope', N'邮件中心', N'/usercenter/mail/', 8, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (31, 30, 0, N'fa-pencil', N'写邮件', N'/usercenter/mail/write', 1, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (32, 30, 0, N'fa-inbox', N'收件箱', N'/usercenter/mail/inbox', 2, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (33, 30, 0, N'fa-share-square-o', N'发件箱', N'/usercenter/mail/sent', 3, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (34, 30, 0, N'fa-trash-o', N'草稿箱', N'/usercenter/mail/draft', 4, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (35, 0, 0, N'fa-bullhorn', N'公告列表', N'/usercenter/notice', 2, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (37, 2, 0, N'fa-key', N'修改密码', N'/usercenter/home/changepassword', 7, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (38, 0, 0, N'fa-sign-out', N'安全退出', N'/usercenter/home/logout', 8, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (41, 13, 0, NULL, N'--', N'/usercenter/finance/activationexchangeReg', 5, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (42, 18, 0, N'fa-list', N'个人钱包', N'/usercenter/finance/accountdetail', 1, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (46, 13, 0, N'fa-sitemap', N'交易记录', N'/usercenter/trade/transaction', 4, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (47, 2, 0, N'fa-edit', N'修改资料', N'/usercenter/user/modify', 5, 1, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (48, 2, 0, N'fa-plus', N'个人中心', N'/usercenter/user/account', 0, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (49, 0, 6, N'fa-gavel', N'店铺管理', N'/usercenter/shopmana/', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (50, 49, 0, N'fa-crosshairs', N'申请店铺', N'/usercenter/shopmana/applyshop', 1, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (51, 49, 0, N'fa-umbrella', N'发布商品', N'/usercenter/shopmana/release', 2, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (52, 49, 0, N'fa-shopping-cart', N'商品管理', N'/usercenter/shopmana/product', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (53, 49, 0, N'fa-list', N'订单管理', N'/usercenter/shopmana/order', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (54, 49, 0, N'fa-list', N'退货管理', N'/usercenter/shopmana/returned', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (55, 49, 0, N'fa-list', N'销售统计', N'/usercenter/shopmana/statistics', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (56, 0, 4, N'fa-gavel', N'在线商城', N'/usercenter/mall/', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (57, 56, 0, N'fa-crosshairs', N'我的订单', N'/usercenter/mall/order', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (60, 56, 0, N'fa-list', N'商城首页', N'/usercenter/mall/index', 1, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (61, 56, 0, N'fa-list', N'所有产品', N'/usercenter/mall/product', 2, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (62, 56, 0, N'fa-list', N'营业中的店铺', N'/usercenter/mall/shoplist', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (63, 2, 0, N'fa-male', N'追投帐号管理', N'/usercenter/user/investment', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (69, 0, 4, N'fa-list', N'拆分币交易市场', N'/usercenter/cfb/', 6, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (70, 69, 0, N'fa-crosshairs', N'抢购拆分币', N'/usercenter/cfb/subscription', 1, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (71, 69, 0, N'fa-umbrella', N'买入交易', N'/usercenter/cfb/buy', 2, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (72, 69, 0, N'fa-shopping-cart', N'卖出交易', N'/usercenter/cfb/sell', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (73, 69, 0, N'fa-list', N'订单管理', N'/usercenter/cfb/order', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (74, 69, 0, N'fa-sitemap', N'交易记录', N'/usercenter/cfb/transaction', 4, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (75, 0, 4, N'fa-money', N'美元交易市场', N'/usercenter/usd/', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (76, 75, 0, N'fa-crosshairs', N'交易大厅', N'/usercenter/usd/index', 1, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (77, 75, 0, N'fa-umbrella', N'挂单卖出', N'/usercenter/usd/applyputon', 3, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (78, 75, 0, N'fa-shopping-cart', N'我卖出的交易', N'/usercenter/usd/puton', 4, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (80, 75, 0, N'fa-sitemap', N'发布求购', N'/usercenter/usd/applyseek', 5, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (81, 75, 0, N'fa-sitemap', N'我发布的求购', N'/usercenter/usd/seek', 6, 0, 1)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (82, 75, 0, N'fa-shopping-cart', N'我买入的交易', N'/usercenter/usd/purchase', 2, 0, 0)
INSERT [dbo].[Navigation] ([ID], [ParentID], [Child], [Icon], [Title], [Url], [Sort], [IsShow], [IsSubAccout]) VALUES (84, 69, 0, N'fa-crosshairs', N'价格趋势', N'/usercenter/cfb/coininfo', 1, 0, 0)
SET IDENTITY_INSERT [dbo].[Navigation] OFF
/****** Object:  Table [dbo].[Message]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Message](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[FormUID] [int] NOT NULL,
	[FormUserName] [nvarchar](50) NOT NULL,
	[ToUID] [int] NOT NULL,
	[ToUserName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](50) NOT NULL,
	[MessageType] [nvarchar](50) NULL,
	[Content] [text] NULL,
	[Attachment] [nvarchar](250) NULL,
	[IsRead] [bit] NOT NULL,
	[IsFlag] [bit] NOT NULL,
	[IsStar] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[IsReply] [bit] NOT NULL,
	[ReplyID] [int] NOT NULL,
	[IsForward] [bit] NOT NULL,
	[ForwardID] [int] NOT NULL,
	[IsSendSuccessful] [bit] NOT NULL,
	[RelationID] [int] NOT NULL,
 CONSTRAINT [PK_Message] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发出ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'FormUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发出' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'FormUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送到ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'ToUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送到' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'ToUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件主题' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言选项' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'MessageType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'邮件内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'Content'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'Attachment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已读' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'IsRead'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否标记' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'IsFlag'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否加星' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'IsStar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否回复' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'IsReply'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'回复ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'ReplyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否转送' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'IsForward'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'转送ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'ForwardID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否送出（Flase时为草稿）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'IsSendSuccessful'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'关联ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message', @level2type=N'COLUMN',@level2name=N'RelationID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员短信息表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Message'
GO
/****** Object:  Table [dbo].[Matching]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Matching](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatchingNo] [nvarchar](50) NOT NULL,
	[AcceptNo] [nvarchar](50) NOT NULL,
	[SupplyNo] [nvarchar](50) NOT NULL,
	[SupplyUID] [int] NOT NULL,
	[SupplyUserName] [nvarchar](50) NOT NULL,
	[AcceptUID] [int] NOT NULL,
	[AcceptUserName] [nvarchar](50) NOT NULL,
	[MatchAmount] [decimal](18, 0) NOT NULL,
	[Status] [int] NOT NULL,
	[ProofImageUrl] [nvarchar](255) NULL,
	[PayTime] [datetime] NULL,
	[PayEndTime] [datetime] NULL,
	[CreateTime] [datetime] NOT NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[County] [nvarchar](50) NULL,
	[VerifiedEndTime] [datetime] NULL,
	[CancelTime] [datetime] NULL,
	[CanceReason] [nvarchar](50) NULL,
	[AllDealTime] [datetime] NULL,
	[Remark] [nvarchar](max) NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate1] [datetime] NULL,
	[ReserveDate2] [datetime] NULL,
	[ReserveBoolean1] [bit] NULL,
	[ReserveBoolean2] [bit] NULL,
	[ReserveDecamal1] [decimal](18, 2) NULL,
	[ReserveDecamal2] [decimal](18, 2) NULL,
	[FromUID] [int] NULL,
	[FromUserName] [nvarchar](50) NULL,
	[IsOpenBuying] [bit] NULL,
	[IsHide] [bit] NULL,
 CONSTRAINT [PK_MarkepDetailed] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'MatchingNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提供帮助的ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'SupplyUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提供帮助的用户名（编号）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'SupplyUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受帮助Id号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'AcceptUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受帮助用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'AcceptUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'交易金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'MatchAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提供图片（证据）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ProofImageUrl'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'PayTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款时限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'PayEndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'省份' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'Province'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'城市' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'区县' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'County'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'确认收款时限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'VerifiedEndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取消时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'CancelTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取消原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'CanceReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全部成交时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'AllDealTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveInt1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveDate1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveDate2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveBoolean1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveBoolean2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveDecamal1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'ReserveDecamal2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否进入抢单池' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Matching', @level2type=N'COLUMN',@level2name=N'IsOpenBuying'
GO
SET IDENTITY_INSERT [dbo].[Matching] ON
INSERT [dbo].[Matching] ([ID], [MatchingNo], [AcceptNo], [SupplyNo], [SupplyUID], [SupplyUserName], [AcceptUID], [AcceptUserName], [MatchAmount], [Status], [ProofImageUrl], [PayTime], [PayEndTime], [CreateTime], [Province], [City], [County], [VerifiedEndTime], [CancelTime], [CanceReason], [AllDealTime], [Remark], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [FromUID], [FromUserName], [IsOpenBuying], [IsHide]) VALUES (1, N'R0680080', N'A0010001', N'S0010001', 1, N'1', 2, N'2', CAST(1000 AS Decimal(18, 0)), 1, NULL, NULL, CAST(0x0000A9C200BF190B AS DateTime), CAST(0x0000A9C100BF1912 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Matching] ([ID], [MatchingNo], [AcceptNo], [SupplyNo], [SupplyUID], [SupplyUserName], [AcceptUID], [AcceptUserName], [MatchAmount], [Status], [ProofImageUrl], [PayTime], [PayEndTime], [CreateTime], [Province], [City], [County], [VerifiedEndTime], [CancelTime], [CanceReason], [AllDealTime], [Remark], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [FromUID], [FromUserName], [IsOpenBuying], [IsHide]) VALUES (2, N'R0287427', N'A0010003', N'S0010005', 3, N'aaa001', 6, N'ddd001', CAST(200 AS Decimal(18, 0)), 4, N'/Content/Resource/484acedc-a1b2-41d8-a0d1-44657b220487.jpeg_1024-768.jpg', CAST(0x0000A9C1017D3E56 AS DateTime), CAST(0x0000A9C2017A9BBD AS DateTime), CAST(0x0000A9C1017A9BCB AS DateTime), NULL, NULL, NULL, CAST(0x0000A9C1017E0F89 AS DateTime), NULL, NULL, CAST(0x0000A9C1017E0F76 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Matching] ([ID], [MatchingNo], [AcceptNo], [SupplyNo], [SupplyUID], [SupplyUserName], [AcceptUID], [AcceptUserName], [MatchAmount], [Status], [ProofImageUrl], [PayTime], [PayEndTime], [CreateTime], [Province], [City], [County], [VerifiedEndTime], [CancelTime], [CanceReason], [AllDealTime], [Remark], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [FromUID], [FromUserName], [IsOpenBuying], [IsHide]) VALUES (3, N'R1547277', N'A0010002', N'S0010003', 4, N'bbb001', 5, N'ccc001', CAST(200 AS Decimal(18, 0)), 4, N'/Content/Resource/5b5bed8e-f8f0-4a15-a14d-000bfe77d8ae.jpeg_1024-768.jpg', CAST(0x0000A9C1017F4D4C AS DateTime), CAST(0x0000A9C2017AAD89 AS DateTime), CAST(0x0000A9C1017AAD89 AS DateTime), NULL, NULL, NULL, CAST(0x0000A9C1017FA348 AS DateTime), NULL, NULL, CAST(0x0000A9C1017FA348 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Matching] ([ID], [MatchingNo], [AcceptNo], [SupplyNo], [SupplyUID], [SupplyUserName], [AcceptUID], [AcceptUserName], [MatchAmount], [Status], [ProofImageUrl], [PayTime], [PayEndTime], [CreateTime], [Province], [City], [County], [VerifiedEndTime], [CancelTime], [CanceReason], [AllDealTime], [Remark], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [FromUID], [FromUserName], [IsOpenBuying], [IsHide]) VALUES (4, N'R1245134', N'A0010002', N'S0010002', 1, N'1', 5, N'ccc001', CAST(800 AS Decimal(18, 0)), 1, NULL, NULL, CAST(0x0000A9C301037EA7 AS DateTime), CAST(0x0000A9C201037EB1 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Matching] ([ID], [MatchingNo], [AcceptNo], [SupplyNo], [SupplyUID], [SupplyUserName], [AcceptUID], [AcceptUserName], [MatchAmount], [Status], [ProofImageUrl], [PayTime], [PayEndTime], [CreateTime], [Province], [City], [County], [VerifiedEndTime], [CancelTime], [CanceReason], [AllDealTime], [Remark], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [FromUID], [FromUserName], [IsOpenBuying], [IsHide]) VALUES (5, N'R0235141', N'A0010004', N'S0010004', 4, N'bbb001', 7, N'abc123', CAST(800 AS Decimal(18, 0)), 1, NULL, NULL, CAST(0x0000A9C30109C999 AS DateTime), CAST(0x0000A9C20109C9A2 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Matching] OFF
/****** Object:  Table [dbo].[LeaveWord]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeaveWord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MatchingNo] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[MsgType] [nvarchar](50) NULL,
	[Attachment] [nvarchar](250) NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_LeaveWord] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'匹配单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveWord', @level2type=N'COLUMN',@level2name=N'MatchingNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveWord', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'留言用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveWord', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'附件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LeaveWord', @level2type=N'COLUMN',@level2name=N'Attachment'
GO
SET IDENTITY_INSERT [dbo].[LeaveWord] ON
INSERT [dbo].[LeaveWord] ([ID], [MatchingNo], [Content], [UID], [UserName], [MsgType], [Attachment], [CreateTime]) VALUES (1, N'R0287427', N'1', 3, N'aaa001', N'咨询', NULL, CAST(0x0000A9C1017B5DAF AS DateTime))
INSERT [dbo].[LeaveWord] ([ID], [MatchingNo], [Content], [UID], [UserName], [MsgType], [Attachment], [CreateTime]) VALUES (2, N'R0287427', N'已汇', 3, N'aaa001', N'咨询', NULL, CAST(0x0000A9C1017BB2CF AS DateTime))
INSERT [dbo].[LeaveWord] ([ID], [MatchingNo], [Content], [UID], [UserName], [MsgType], [Attachment], [CreateTime]) VALUES (3, N'R0287427', N'已汇', 3, N'aaa001', N'咨询', NULL, CAST(0x0000A9C1017BC69A AS DateTime))
INSERT [dbo].[LeaveWord] ([ID], [MatchingNo], [Content], [UID], [UserName], [MsgType], [Attachment], [CreateTime]) VALUES (4, N'R0287427', N'已汇', 3, N'aaa001', N'咨询', NULL, CAST(0x0000A9C1017BC6D3 AS DateTime))
INSERT [dbo].[LeaveWord] ([ID], [MatchingNo], [Content], [UID], [UserName], [MsgType], [Attachment], [CreateTime]) VALUES (5, N'R0287427', N'Q', 3, N'aaa001', N'付款留言', NULL, CAST(0x0000A9C1017D3E4D AS DateTime))
INSERT [dbo].[LeaveWord] ([ID], [MatchingNo], [Content], [UID], [UserName], [MsgType], [Attachment], [CreateTime]) VALUES (6, N'R1547277', N'1', 5, N'ccc001', N'咨询', NULL, CAST(0x0000A9C1017DCFFA AS DateTime))
INSERT [dbo].[LeaveWord] ([ID], [MatchingNo], [Content], [UID], [UserName], [MsgType], [Attachment], [CreateTime]) VALUES (7, N'R1547277', N'W', 4, N'bbb001', N'付款留言', NULL, CAST(0x0000A9C1017F4D47 AS DateTime))
SET IDENTITY_INSERT [dbo].[LeaveWord] OFF
/****** Object:  Table [dbo].[Language]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Language](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](250) NOT NULL,
	[LanguageName] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Value] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Resource] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Language', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Language', @level2type=N'COLUMN',@level2name=N'LanguageName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Language', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Language', @level2type=N'COLUMN',@level2name=N'Value'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'语言资源表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Language'
GO
SET IDENTITY_INSERT [dbo].[Language] ON
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1, N'/User/Home', N'zh-CN', N'全部', N'全部')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (2, N'/User/Home', N'zh-TW', N'全部', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (3, N'/User/Home', N'en-US', N'全部', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (4, N'/User/Home', N'Ms', N'全部', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (5, N'/User/Home', N'Vi', N'全部', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (6, N'/User/Home', N'Th', N'全部', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (7, N'/User/Home', N'zh-CN', N'未付款', N'未付款')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (8, N'/User/Home', N'zh-TW', N'未付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (9, N'/User/Home', N'en-US', N'未付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (10, N'/User/Home', N'Ms', N'未付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (11, N'/User/Home', N'Vi', N'未付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (12, N'/User/Home', N'Th', N'未付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (13, N'/User/Home', N'zh-CN', N'延尺付款', N'延尺付款')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (14, N'/User/Home', N'zh-TW', N'延尺付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (15, N'/User/Home', N'en-US', N'延尺付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (16, N'/User/Home', N'Ms', N'延尺付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (17, N'/User/Home', N'Vi', N'延尺付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (18, N'/User/Home', N'Th', N'延尺付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (19, N'/User/Home', N'zh-CN', N'已成交', N'已成交')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (20, N'/User/Home', N'zh-TW', N'已成交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (21, N'/User/Home', N'en-US', N'已成交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (22, N'/User/Home', N'Ms', N'已成交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (23, N'/User/Home', N'Vi', N'已成交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (24, N'/User/Home', N'Th', N'已成交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (25, N'/User/Home', N'zh-CN', N'虚假信息', N'虚假信息')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (26, N'/User/Home', N'zh-TW', N'虚假信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (27, N'/User/Home', N'en-US', N'虚假信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (28, N'/User/Home', N'Ms', N'虚假信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (29, N'/User/Home', N'Vi', N'虚假信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (30, N'/User/Home', N'Th', N'虚假信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (31, N'/User/Home', N'zh-CN', N'申请提供帮助', N'申请提供帮助')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (32, N'/User/Home', N'zh-TW', N'申请提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (33, N'/User/Home', N'en-US', N'申请提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (34, N'/User/Home', N'Ms', N'申请提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (35, N'/User/Home', N'Vi', N'申请提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (36, N'/User/Home', N'Th', N'申请提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (37, N'/User/Home', N'zh-CN', N'申请接受帮助 ', N'申请接受帮助 ')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (38, N'/User/Home', N'zh-TW', N'申请接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (39, N'/User/Home', N'en-US', N'申请接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (40, N'/User/Home', N'Ms', N'申请接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (41, N'/User/Home', N'Vi', N'申请接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (42, N'/User/Home', N'Th', N'申请接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (43, N'/User/Home', N'zh-CN', N'会员系统', N'会员系统')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (44, N'/User/Home', N'zh-TW', N'会员系统', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (45, N'/User/Home', N'en-US', N'会员系统', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (46, N'/User/Home', N'Ms', N'会员系统', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (47, N'/User/Home', N'Vi', N'会员系统', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (48, N'/User/Home', N'Th', N'会员系统', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (49, N'/User/Home', N'zh-CN', N'欢迎您', N'欢迎您')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (50, N'/User/Home', N'zh-TW', N'欢迎您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (51, N'/User/Home', N'en-US', N'欢迎您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (52, N'/User/Home', N'Ms', N'欢迎您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (53, N'/User/Home', N'Vi', N'欢迎您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (54, N'/User/Home', N'Th', N'欢迎您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (55, N'/User/Home', N'zh-CN', N'推广链接', N'推广链接')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (56, N'/User/Home', N'zh-TW', N'推广链接', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (57, N'/User/Home', N'en-US', N'推广链接', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (58, N'/User/Home', N'Ms', N'推广链接', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (59, N'/User/Home', N'Vi', N'推广链接', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (60, N'/User/Home', N'Th', N'推广链接', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (61, N'/User/Home', N'zh-CN', N'oemsys293@163.com', N'oemsys293@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (62, N'/User/Home', N'zh-TW', N'oemsys293@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (63, N'/User/Home', N'en-US', N'oemsys293@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (64, N'/User/Home', N'Ms', N'oemsys293@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (65, N'/User/Home', N'Vi', N'oemsys293@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (66, N'/User/Home', N'Th', N'oemsys293@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (67, N'/User/Home', N'zh-CN', N'SOS', N'SOS')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (68, N'/User/Home', N'zh-TW', N'SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (69, N'/User/Home', N'en-US', N'SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (70, N'/User/Home', N'Ms', N'SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (71, N'/User/Home', N'Vi', N'SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (72, N'/User/Home', N'Th', N'SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (73, N'/User/Home', N'zh-CN', N'推荐人', N'推荐人')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (74, N'/User/Home', N'zh-TW', N'推荐人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (75, N'/User/Home', N'en-US', N'推荐人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (76, N'/User/Home', N'Ms', N'推荐人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (77, N'/User/Home', N'Vi', N'推荐人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (78, N'/User/Home', N'Th', N'推荐人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (79, N'/User/Home', N'zh-CN', N'所属经理', N'所属经理')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (80, N'/User/Home', N'zh-TW', N'所属经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (81, N'/User/Home', N'en-US', N'所属经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (82, N'/User/Home', N'Ms', N'所属经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (83, N'/User/Home', N'Vi', N'所属经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (84, N'/User/Home', N'Th', N'所属经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (85, N'/User/Home', N'zh-CN', N'首页', N'首页')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (86, N'/User/Home', N'zh-TW', N'首页', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (87, N'/User/Home', N'en-US', N'首页', N'Home')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (88, N'/User/Home', N'Ms', N'首页', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (89, N'/User/Home', N'Vi', N'首页', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (90, N'/User/Home', N'Th', N'首页', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (91, N'/User/Home', N'zh-CN', N'会员注册', N'会员注册')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (92, N'/User/Home', N'zh-TW', N'会员注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (93, N'/User/Home', N'en-US', N'会员注册', N'Registration')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (94, N'/User/Home', N'Ms', N'会员注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (95, N'/User/Home', N'Vi', N'会员注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (96, N'/User/Home', N'Th', N'会员注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (97, N'/User/Home', N'zh-CN', N'我的PIN码', N'我的PIN码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (98, N'/User/Home', N'zh-TW', N'我的PIN码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (99, N'/User/Home', N'en-US', N'我的PIN码', N'My PINCode')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (100, N'/User/Home', N'Ms', N'我的PIN码', N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (101, N'/User/Home', N'Vi', N'我的PIN码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (102, N'/User/Home', N'Th', N'我的PIN码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (103, N'/User/Home', N'zh-CN', N'组织管理', N'组织管理')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (104, N'/User/Home', N'zh-TW', N'组织管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (105, N'/User/Home', N'en-US', N'组织管理', N'Management')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (106, N'/User/Home', N'Ms', N'组织管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (107, N'/User/Home', N'Vi', N'组织管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (108, N'/User/Home', N'Th', N'组织管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (109, N'/User/Home', N'zh-CN', N'我的会员', N'我的会员')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (110, N'/User/Home', N'zh-TW', N'我的会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (111, N'/User/Home', N'en-US', N'我的会员', N'My Member')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (112, N'/User/Home', N'Ms', N'我的会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (113, N'/User/Home', N'Vi', N'我的会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (114, N'/User/Home', N'Th', N'我的会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (115, N'/User/Home', N'zh-CN', N'会员动态', N'会员动态')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (116, N'/User/Home', N'zh-TW', N'会员动态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (117, N'/User/Home', N'en-US', N'会员动态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (118, N'/User/Home', N'Ms', N'会员动态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (119, N'/User/Home', N'Vi', N'会员动态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (120, N'/User/Home', N'Th', N'会员动态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (121, N'/User/Home', N'zh-CN', N'账号管理', N'账号管理')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (122, N'/User/Home', N'zh-TW', N'账号管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (123, N'/User/Home', N'en-US', N'账号管理', N'Account')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (124, N'/User/Home', N'Ms', N'账号管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (125, N'/User/Home', N'Vi', N'账号管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (126, N'/User/Home', N'Th', N'账号管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (127, N'/User/Home', N'zh-CN', N'个人资料', N'个人资料')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (128, N'/User/Home', N'zh-TW', N'个人资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (129, N'/User/Home', N'en-US', N'个人资料', N'Personal')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (130, N'/User/Home', N'Ms', N'个人资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (131, N'/User/Home', N'Vi', N'个人资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (132, N'/User/Home', N'Th', N'个人资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (133, N'/User/Home', N'zh-CN', N'更改密码', N'更改密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (134, N'/User/Home', N'zh-TW', N'更改密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (135, N'/User/Home', N'en-US', N'更改密码', N'Change password')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (136, N'/User/Home', N'Ms', N'更改密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (137, N'/User/Home', N'Vi', N'更改密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (138, N'/User/Home', N'Th', N'更改密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (139, N'/User/Home', N'zh-CN', N'钱包管理', N'钱包管理')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (140, N'/User/Home', N'zh-TW', N'钱包管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (141, N'/User/Home', N'en-US', N'钱包管理', N'Purse management')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (142, N'/User/Home', N'Ms', N'钱包管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (143, N'/User/Home', N'Vi', N'钱包管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (144, N'/User/Home', N'Th', N'钱包管理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (145, N'/User/Home', N'zh-CN', N'新闻公告', N'新闻公告')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (146, N'/User/Home', N'zh-TW', N'新闻公告', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (147, N'/User/Home', N'en-US', N'新闻公告', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (148, N'/User/Home', N'Ms', N'新闻公告', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (149, N'/User/Home', N'Vi', N'新闻公告', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (150, N'/User/Home', N'Th', N'新闻公告', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (151, N'/User/Home', N'zh-CN', N'联系管理员', N'联系管理员')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (152, N'/User/Home', N'zh-TW', N'联系管理员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (153, N'/User/Home', N'en-US', N'联系管理员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (154, N'/User/Home', N'Ms', N'联系管理员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (155, N'/User/Home', N'Vi', N'联系管理员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (156, N'/User/Home', N'Th', N'联系管理员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (157, N'/User/Home', N'zh-CN', N'退出', N'退出')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (158, N'/User/Home', N'zh-TW', N'退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (159, N'/User/Home', N'en-US', N'退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (160, N'/User/Home', N'Ms', N'退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (161, N'/User/Home', N'Vi', N'退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (162, N'/User/Home', N'Th', N'退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (163, N'/User/Home', N'zh-CN', N' 扫我注册', N' 扫我注册')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (164, N'/User/Home', N'zh-TW', N' 扫我注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (165, N'/User/Home', N'en-US', N' 扫我注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (166, N'/User/Home', N'Ms', N' 扫我注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (167, N'/User/Home', N'Vi', N' 扫我注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (168, N'/User/Home', N'Th', N' 扫我注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (169, N'/User/Home', N'zh-CN', N'您确定要退出么？', N'您确定要退出么？')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (170, N'/User/Home', N'zh-TW', N'您确定要退出么？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (171, N'/User/Home', N'en-US', N'您确定要退出么？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (172, N'/User/Home', N'Ms', N'您确定要退出么？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (173, N'/User/Home', N'Vi', N'您确定要退出么？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (174, N'/User/Home', N'Th', N'您确定要退出么？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (175, N'/User/Home', N'zh-CN', N'是的', N'是的')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (176, N'/User/Home', N'zh-TW', N'是的', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (177, N'/User/Home', N'en-US', N'是的', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (178, N'/User/Home', N'Ms', N'是的', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (179, N'/User/Home', N'Vi', N'是的', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (180, N'/User/Home', N'Th', N'是的', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (181, N'/User/Home', N'zh-CN', N'不是，点错了', N'不是，点错了')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (182, N'/User/Home', N'zh-TW', N'不是，点错了', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (183, N'/User/Home', N'en-US', N'不是，点错了', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (184, N'/User/Home', N'Ms', N'不是，点错了', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (185, N'/User/Home', N'Vi', N'不是，点错了', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (186, N'/User/Home', N'Th', N'不是，点错了', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (188, N'/user/finance/wallet', N'zh-TW', N'SOS钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (189, N'/user/finance/wallet', N'en-US', N'SOS钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (190, N'/user/finance/wallet', N'Ms', N'SOS钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (191, N'/user/finance/wallet', N'Vi', N'SOS钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (192, N'/user/finance/wallet', N'Th', N'SOS钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (193, N'/user/finance/wallet', N'zh-CN', N'不可用', N'不可用')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (194, N'/user/finance/wallet', N'zh-TW', N'不可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (195, N'/user/finance/wallet', N'en-US', N'不可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (196, N'/user/finance/wallet', N'Ms', N'不可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (197, N'/user/finance/wallet', N'Vi', N'不可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (198, N'/user/finance/wallet', N'Th', N'不可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (199, N'/user/finance/wallet', N'zh-CN', N'可用', N'可用')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (200, N'/user/finance/wallet', N'zh-TW', N'可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (201, N'/user/finance/wallet', N'en-US', N'可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (202, N'/user/finance/wallet', N'Ms', N'可用', N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (203, N'/user/finance/wallet', N'Vi', N'可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (204, N'/user/finance/wallet', N'Th', N'可用', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (205, N'/user/finance/wallet', N'zh-CN', N'接受帮助 ', N'接受帮助 ')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (206, N'/user/finance/wallet', N'zh-TW', N'接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (207, N'/user/finance/wallet', N'en-US', N'接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (208, N'/user/finance/wallet', N'Ms', N'接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (209, N'/user/finance/wallet', N'Vi', N'接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (210, N'/user/finance/wallet', N'Th', N'接受帮助 ', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (211, N'/user/finance/wallet', N'zh-CN', N'经理钱包', N'经理钱包')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (212, N'/user/finance/wallet', N'zh-TW', N'经理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (213, N'/user/finance/wallet', N'en-US', N'经理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (214, N'/user/finance/wallet', N'Ms', N'经理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (215, N'/user/finance/wallet', N'Vi', N'经理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (216, N'/user/finance/wallet', N'Th', N'经理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (217, N'/user/finance/wallet', N'zh-CN', N'管理钱包', N'管理钱包')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (218, N'/user/finance/wallet', N'zh-TW', N'管理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (219, N'/user/finance/wallet', N'en-US', N'管理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (220, N'/user/finance/wallet', N'Ms', N'管理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (221, N'/user/finance/wallet', N'Vi', N'管理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (222, N'/user/finance/wallet', N'Th', N'管理钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (223, N'/user/finance/wallet', N'zh-CN', N'SOS钱包记录', N'SOS钱包记录')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (224, N'/user/finance/wallet', N'zh-TW', N'SOS钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (225, N'/user/finance/wallet', N'en-US', N'SOS钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (226, N'/user/finance/wallet', N'Ms', N'SOS钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (227, N'/user/finance/wallet', N'Vi', N'SOS钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (228, N'/user/finance/wallet', N'Th', N'SOS钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (229, N'/user/finance/wallet', N'zh-CN', N'经理钱包记录', N'经理钱包记录')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (230, N'/user/finance/wallet', N'zh-TW', N'经理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (231, N'/user/finance/wallet', N'en-US', N'经理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (232, N'/user/finance/wallet', N'Ms', N'经理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (233, N'/user/finance/wallet', N'Vi', N'经理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (234, N'/user/finance/wallet', N'Th', N'经理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (235, N'/user/finance/wallet', N'zh-CN', N'管理钱包记录', N'管理钱包记录')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (236, N'/user/finance/wallet', N'zh-TW', N'管理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (237, N'/user/finance/wallet', N'en-US', N'管理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (238, N'/user/finance/wallet', N'Ms', N'管理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (239, N'/user/finance/wallet', N'Vi', N'管理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (240, N'/user/finance/wallet', N'Th', N'管理钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (241, N'/user/finance/wallet', N'zh-CN', N'待结算记录', N'待结算记录')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (242, N'/user/finance/wallet', N'zh-TW', N'待结算记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (243, N'/user/finance/wallet', N'en-US', N'待结算记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (244, N'/user/finance/wallet', N'Ms', N'待结算记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (245, N'/user/finance/wallet', N'Vi', N'待结算记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (246, N'/user/finance/wallet', N'Th', N'待结算记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (247, N'/user/user/add', N'zh-CN', N'添加一个新会员', N'添加一个新会员')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (248, N'/user/user/add', N'zh-TW', N'添加一个新会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (249, N'/user/user/add', N'en-US', N'添加一个新会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (250, N'/user/user/add', N'Ms', N'添加一个新会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (251, N'/user/user/add', N'Vi', N'添加一个新会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (252, N'/user/user/add', N'Th', N'添加一个新会员', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (253, N'/user/user/add', N'zh-CN', N'登陆帐号', N'登陆帐号')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (254, N'/user/user/add', N'zh-TW', N'登陆帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (255, N'/user/user/add', N'en-US', N'登陆帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (256, N'/user/user/add', N'Ms', N'登陆帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (257, N'/user/user/add', N'Vi', N'登陆帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (258, N'/user/user/add', N'Th', N'登陆帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (259, N'/user/user/add', N'zh-CN', N'此处必须填写', N'此处必须填写')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (260, N'/user/user/add', N'zh-TW', N'此处必须填写', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (261, N'/user/user/add', N'en-US', N'此处必须填写', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (262, N'/user/user/add', N'Ms', N'此处必须填写', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (263, N'/user/user/add', N'Vi', N'此处必须填写', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (264, N'/user/user/add', N'Th', N'此处必须填写', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (265, N'/user/user/add', N'zh-CN', N'输入您的登录帐号', N'输入您的登录帐号')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (266, N'/user/user/add', N'zh-TW', N'输入您的登录帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (267, N'/user/user/add', N'en-US', N'输入您的登录帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (268, N'/user/user/add', N'Ms', N'输入您的登录帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (269, N'/user/user/add', N'Vi', N'输入您的登录帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (270, N'/user/user/add', N'Th', N'输入您的登录帐号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (271, N'/user/user/add', N'zh-CN', N'邮箱', N'邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (272, N'/user/user/add', N'zh-TW', N'邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (273, N'/user/user/add', N'en-US', N'邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (274, N'/user/user/add', N'Ms', N'邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (275, N'/user/user/add', N'Vi', N'邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (276, N'/user/user/add', N'Th', N'邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (277, N'/user/user/add', N'zh-CN', N'输入邮箱地址', N'输入邮箱地址')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (278, N'/user/user/add', N'zh-TW', N'输入邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (279, N'/user/user/add', N'en-US', N'输入邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (280, N'/user/user/add', N'Ms', N'输入邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (281, N'/user/user/add', N'Vi', N'输入邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (282, N'/user/user/add', N'Th', N'输入邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (283, N'/user/user/add', N'zh-CN', N'登陆密码', N'登陆密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (284, N'/user/user/add', N'zh-TW', N'登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (285, N'/user/user/add', N'en-US', N'登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (286, N'/user/user/add', N'Ms', N'登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (287, N'/user/user/add', N'Vi', N'登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (288, N'/user/user/add', N'Th', N'登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (289, N'/user/user/add', N'zh-CN', N'输入用于登陆的密码', N'输入用于登陆的密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (290, N'/user/user/add', N'zh-TW', N'输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (291, N'/user/user/add', N'en-US', N'输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (292, N'/user/user/add', N'Ms', N'输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (293, N'/user/user/add', N'Vi', N'输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (294, N'/user/user/add', N'Th', N'输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (295, N'/user/user/add', N'zh-CN', N'确认登陆密码', N'确认登陆密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (296, N'/user/user/add', N'zh-TW', N'确认登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (297, N'/user/user/add', N'en-US', N'确认登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (298, N'/user/user/add', N'Ms', N'确认登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (299, N'/user/user/add', N'Vi', N'确认登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (300, N'/user/user/add', N'Th', N'确认登陆密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (301, N'/user/user/add', N'zh-CN', N'重复输入用于登陆的密码', N'重复输入用于登陆的密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (302, N'/user/user/add', N'zh-TW', N'重复输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (303, N'/user/user/add', N'en-US', N'重复输入用于登陆的密码', N'')
GO
print 'Processed 300 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (304, N'/user/user/add', N'Ms', N'重复输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (305, N'/user/user/add', N'Vi', N'重复输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (306, N'/user/user/add', N'Th', N'重复输入用于登陆的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (307, N'/user/user/add', N'zh-CN', N'用户昵称', N'用户昵称')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (308, N'/user/user/add', N'zh-TW', N'用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (309, N'/user/user/add', N'en-US', N'用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (310, N'/user/user/add', N'Ms', N'用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (311, N'/user/user/add', N'Vi', N'用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (312, N'/user/user/add', N'Th', N'用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (313, N'/user/user/add', N'zh-CN', N'输入用户昵称', N'输入用户昵称')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (314, N'/user/user/add', N'zh-TW', N'输入用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (315, N'/user/user/add', N'en-US', N'输入用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (316, N'/user/user/add', N'Ms', N'输入用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (317, N'/user/user/add', N'Vi', N'输入用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (318, N'/user/user/add', N'Th', N'输入用户昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (319, N'/user/user/add', N'zh-CN', N'手机号码', N'手机号码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (320, N'/user/user/add', N'zh-TW', N'手机号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (321, N'/user/user/add', N'en-US', N'手机号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (322, N'/user/user/add', N'Ms', N'手机号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (323, N'/user/user/add', N'Vi', N'手机号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (324, N'/user/user/add', N'Th', N'手机号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (325, N'/user/user/add', N'zh-CN', N'输入手机号以便于联系和接收短信通知', N'输入手机号以便于联系和接收短信通知')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (326, N'/user/user/add', N'zh-TW', N'输入手机号以便于联系和接收短信通知', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (327, N'/user/user/add', N'en-US', N'输入手机号以便于联系和接收短信通知', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (328, N'/user/user/add', N'Ms', N'输入手机号以便于联系和接收短信通知', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (329, N'/user/user/add', N'Vi', N'输入手机号以便于联系和接收短信通知', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (330, N'/user/user/add', N'Th', N'输入手机号以便于联系和接收短信通知', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (331, N'/user/user/add', N'zh-CN', N'介绍人', N'介绍人')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (332, N'/user/user/add', N'zh-TW', N'介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (333, N'/user/user/add', N'en-US', N'介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (334, N'/user/user/add', N'Ms', N'介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (335, N'/user/user/add', N'Vi', N'介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (336, N'/user/user/add', N'Th', N'介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (337, N'/user/user/add', N'zh-CN', N'输入介绍人编号', N'输入介绍人编号')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (338, N'/user/user/add', N'zh-TW', N'输入介绍人编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (339, N'/user/user/add', N'en-US', N'输入介绍人编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (340, N'/user/user/add', N'Ms', N'输入介绍人编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (341, N'/user/user/add', N'Vi', N'输入介绍人编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (342, N'/user/user/add', N'Th', N'输入介绍人编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (343, N'/user/user/add', N'zh-CN', N'检查', N'检查')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (344, N'/user/user/add', N'zh-TW', N'检查', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (345, N'/user/user/add', N'en-US', N'检查', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (346, N'/user/user/add', N'Ms', N'检查', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (347, N'/user/user/add', N'Vi', N'检查', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (348, N'/user/user/add', N'Th', N'检查', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (349, N'/user/user/add', N'zh-CN', N'安置人', N'安置人')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (350, N'/user/user/add', N'zh-TW', N'安置人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (351, N'/user/user/add', N'en-US', N'安置人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (352, N'/user/user/add', N'Ms', N'安置人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (353, N'/user/user/add', N'Vi', N'安置人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (354, N'/user/user/add', N'Th', N'安置人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (355, N'/user/user/add', N'zh-CN', N'输入安置人的编号', N'输入安置人的编号')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (356, N'/user/user/add', N'zh-TW', N'输入安置人的编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (357, N'/user/user/add', N'en-US', N'输入安置人的编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (358, N'/user/user/add', N'Ms', N'输入安置人的编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (359, N'/user/user/add', N'Vi', N'输入安置人的编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (360, N'/user/user/add', N'Th', N'输入安置人的编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (361, N'/user/user/add', N'zh-CN', N'会员类型', N'会员类型')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (362, N'/user/user/add', N'zh-TW', N'会员类型', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (363, N'/user/user/add', N'en-US', N'会员类型', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (364, N'/user/user/add', N'Ms', N'会员类型', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (365, N'/user/user/add', N'Vi', N'会员类型', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (366, N'/user/user/add', N'Th', N'会员类型', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (367, N'/user/user/add', N'zh-CN', N'所在地区', N'所在地区')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (368, N'/user/user/add', N'zh-TW', N'所在地区', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (369, N'/user/user/add', N'en-US', N'所在地区', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (370, N'/user/user/add', N'Ms', N'所在地区', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (371, N'/user/user/add', N'Vi', N'所在地区', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (372, N'/user/user/add', N'Th', N'所在地区', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (373, N'/user/user/add', N'zh-CN', N'我已完全了解所有风险', N'我已完全了解所有风险')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (374, N'/user/user/add', N'zh-TW', N'我已完全了解所有风险', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (375, N'/user/user/add', N'en-US', N'我已完全了解所有风险', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (376, N'/user/user/add', N'Ms', N'我已完全了解所有风险', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (377, N'/user/user/add', N'Vi', N'我已完全了解所有风险', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (378, N'/user/user/add', N'Th', N'我已完全了解所有风险', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (379, N'/user/user/add', N'zh-CN', N'手机短信通知注册用户', N'手机短信通知注册用户')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (380, N'/user/user/add', N'zh-TW', N'手机短信通知注册用户', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (381, N'/user/user/add', N'en-US', N'手机短信通知注册用户', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (382, N'/user/user/add', N'Ms', N'手机短信通知注册用户', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (383, N'/user/user/add', N'Vi', N'手机短信通知注册用户', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (384, N'/user/user/add', N'Th', N'手机短信通知注册用户', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (385, N'/user/user/add', N'zh-CN', N'注册', N'注册')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (386, N'/user/user/add', N'zh-TW', N'注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (387, N'/user/user/add', N'en-US', N'注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (388, N'/user/user/add', N'Ms', N'注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (389, N'/user/user/add', N'Vi', N'注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (390, N'/user/user/add', N'Th', N'注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (391, N'/user/user/add', N'zh-CN', N'取消', N'取消')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (392, N'/user/user/add', N'zh-TW', N'取消', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (393, N'/user/user/add', N'en-US', N'取消', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (394, N'/user/user/add', N'Ms', N'取消', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (395, N'/user/user/add', N'Vi', N'取消', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (396, N'/user/user/add', N'Th', N'取消', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (397, N'/User/Login', N'zh-CN', N'创世众筹', N'创世众筹')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (398, N'/User/Login', N'zh-TW', N'创世众筹', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (399, N'/User/Login', N'en-US', N'创世众筹', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (400, N'/User/Login', N'Ms', N'创世众筹', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (401, N'/User/Login', N'Vi', N'创世众筹', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (402, N'/User/Login', N'Th', N'创世众筹', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (403, N'/User/Login', N'zh-CN', N'用户名', N'用户名')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (404, N'/User/Login', N'zh-TW', N'用户名', N'')
GO
print 'Processed 400 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (405, N'/User/Login', N'en-US', N'用户名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (406, N'/User/Login', N'Ms', N'用户名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (407, N'/User/Login', N'Vi', N'用户名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (408, N'/User/Login', N'Th', N'用户名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (409, N'/User/Login', N'zh-CN', N'请输入你的邮箱地址', N'请输入你的邮箱地址')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (410, N'/User/Login', N'zh-TW', N'请输入你的邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (411, N'/User/Login', N'en-US', N'请输入你的邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (412, N'/User/Login', N'Ms', N'请输入你的邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (413, N'/User/Login', N'Vi', N'请输入你的邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (414, N'/User/Login', N'Th', N'请输入你的邮箱地址', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (415, N'/User/Login', N'zh-CN', N'密码', N'密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (416, N'/User/Login', N'zh-TW', N'密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (417, N'/User/Login', N'en-US', N'密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (418, N'/User/Login', N'Ms', N'密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (419, N'/User/Login', N'Vi', N'密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (420, N'/User/Login', N'Th', N'密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (421, N'/User/Login', N'zh-CN', N'请输入您的密码', N'请输入您的密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (422, N'/User/Login', N'zh-TW', N'请输入您的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (423, N'/User/Login', N'en-US', N'请输入您的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (424, N'/User/Login', N'Ms', N'请输入您的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (425, N'/User/Login', N'Vi', N'请输入您的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (426, N'/User/Login', N'Th', N'请输入您的密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (427, N'/User/Login', N'zh-CN', N'登录密码', N'登录密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (428, N'/User/Login', N'zh-TW', N'登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (429, N'/User/Login', N'en-US', N'登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (430, N'/User/Login', N'Ms', N'登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (431, N'/User/Login', N'Vi', N'登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (432, N'/User/Login', N'Th', N'登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (433, N'/User/Login', N'zh-CN', N'(请避免在公共使用的电脑上进行操作)', N'(请避免在公共使用的电脑上进行操作)')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (434, N'/User/Login', N'zh-TW', N'(请避免在公共使用的电脑上进行操作)', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (435, N'/User/Login', N'en-US', N'(请避免在公共使用的电脑上进行操作)', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (436, N'/User/Login', N'Ms', N'(请避免在公共使用的电脑上进行操作)', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (437, N'/User/Login', N'Vi', N'(请避免在公共使用的电脑上进行操作)', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (438, N'/User/Login', N'Th', N'(请避免在公共使用的电脑上进行操作)', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (439, N'/User/Login', N'zh-CN', N'登录', N'登录')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (440, N'/User/Login', N'zh-TW', N'登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (441, N'/User/Login', N'en-US', N'登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (442, N'/User/Login', N'Ms', N'登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (443, N'/User/Login', N'Vi', N'登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (444, N'/User/Login', N'Th', N'登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (445, N'/User/Login', N'zh-CN', N'忘记密码？', N'忘记密码？')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (446, N'/User/Login', N'zh-TW', N'忘记密码？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (447, N'/User/Login', N'en-US', N'忘记密码？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (448, N'/User/Login', N'Ms', N'忘记密码？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (449, N'/User/Login', N'Vi', N'忘记密码？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (450, N'/User/Login', N'Th', N'忘记密码？', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (451, N'/User/Home', N'zh-CN', N'oemsys995@163.com', N'oemsys995@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (452, N'/User/Home', N'zh-TW', N'oemsys995@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (453, N'/User/Home', N'en-US', N'oemsys995@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (454, N'/User/Home', N'Ms', N'oemsys995@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (455, N'/User/Home', N'Vi', N'oemsys995@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (456, N'/User/Home', N'Th', N'oemsys995@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (457, N'/user/mail/write', N'zh-CN', N'恭喜您', N'恭喜您')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (458, N'/user/mail/write', N'zh-TW', N'恭喜您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (459, N'/user/mail/write', N'en-US', N'恭喜您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (460, N'/user/mail/write', N'Ms', N'恭喜您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (461, N'/user/mail/write', N'Vi', N'恭喜您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (462, N'/user/mail/write', N'Th', N'恭喜您', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (463, N'/user/mail/write', N'zh-CN', N'操作成功', N'操作成功')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (464, N'/user/mail/write', N'zh-TW', N'操作成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (465, N'/user/mail/write', N'en-US', N'操作成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (466, N'/user/mail/write', N'Ms', N'操作成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (467, N'/user/mail/write', N'Vi', N'操作成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (468, N'/user/mail/write', N'Th', N'操作成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (469, N'/user/mail/write', N'zh-CN', N'邮件发送成功！', N'邮件发送成功！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (470, N'/user/mail/write', N'zh-TW', N'邮件发送成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (471, N'/user/mail/write', N'en-US', N'邮件发送成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (472, N'/user/mail/write', N'Ms', N'邮件发送成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (473, N'/user/mail/write', N'Vi', N'邮件发送成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (474, N'/user/mail/write', N'Th', N'邮件发送成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (475, N'/user/mail/write', N'zh-CN', N'返回', N'返回')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (476, N'/user/mail/write', N'zh-TW', N'返回', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (477, N'/user/mail/write', N'en-US', N'返回', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (478, N'/user/mail/write', N'Ms', N'返回', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (479, N'/user/mail/write', N'Vi', N'返回', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (480, N'/user/mail/write', N'Th', N'返回', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (481, N'/user/mail/write', N'zh-CN', N'返回主界面', N'返回主界面')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (482, N'/user/mail/write', N'zh-TW', N'返回主界面', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (483, N'/user/mail/write', N'en-US', N'返回主界面', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (484, N'/user/mail/write', N'Ms', N'返回主界面', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (485, N'/user/mail/write', N'Vi', N'返回主界面', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (486, N'/user/mail/write', N'Th', N'返回主界面', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (487, N'/User/Mail/SubMailContent/2', N'zh-CN', N'您确定要删除该邮件吗', N'您确定要删除该邮件吗')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (488, N'/User/Mail/SubMailContent/2', N'zh-TW', N'您确定要删除该邮件吗', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (489, N'/User/Mail/SubMailContent/2', N'en-US', N'您确定要删除该邮件吗', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (490, N'/User/Mail/SubMailContent/2', N'Ms', N'您确定要删除该邮件吗', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (491, N'/User/Mail/SubMailContent/2', N'Vi', N'您确定要删除该邮件吗', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (492, N'/User/Mail/SubMailContent/2', N'Th', N'您确定要删除该邮件吗', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (493, N'/User/Home', N'zh-CN', N'人民币', N'人民币')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (494, N'/User/Home', N'zh-TW', N'人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (495, N'/User/Home', N'en-US', N'人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (496, N'/User/Home', N'Ms', N'人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (497, N'/User/Home', N'Vi', N'人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (498, N'/User/Home', N'Th', N'人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (499, N'/User/Home', N'zh-CN', N'留言', N'留言')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (500, N'/User/Home', N'zh-TW', N'留言', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (501, N'/User/Home', N'en-US', N'留言', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (502, N'/User/Home', N'Ms', N'留言', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (503, N'/User/Home', N'Vi', N'留言', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (504, N'/User/Home', N'Th', N'留言', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (505, N'/User/Home', N'zh-CN', N'参与者', N'参与者')
GO
print 'Processed 500 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (506, N'/User/Home', N'zh-TW', N'参与者', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (507, N'/User/Home', N'en-US', N'参与者', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (508, N'/User/Home', N'Ms', N'参与者', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (509, N'/User/Home', N'Vi', N'参与者', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (510, N'/User/Home', N'Th', N'参与者', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (511, N'/User/Home', N'zh-CN', N'配对金额', N'配对金额')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (512, N'/User/Home', N'zh-TW', N'配对金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (513, N'/User/Home', N'en-US', N'配对金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (514, N'/User/Home', N'Ms', N'配对金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (515, N'/User/Home', N'Vi', N'配对金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (516, N'/User/Home', N'Th', N'配对金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (517, N'/User/Home', N'zh-CN', N'剩余金额', N'剩余金额')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (518, N'/User/Home', N'zh-TW', N'剩余金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (519, N'/User/Home', N'en-US', N'剩余金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (520, N'/User/Home', N'Ms', N'剩余金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (521, N'/User/Home', N'Vi', N'剩余金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (522, N'/User/Home', N'Th', N'剩余金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (523, N'/User/Home', N'zh-CN', N'钱包', N'钱包')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (524, N'/User/Home', N'zh-TW', N'钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (525, N'/User/Home', N'en-US', N'钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (526, N'/User/Home', N'Ms', N'钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (527, N'/User/Home', N'Vi', N'钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (528, N'/User/Home', N'Th', N'钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (529, N'/User/Home', N'zh-CN', N'日期', N'日期')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (530, N'/User/Home', N'zh-TW', N'日期', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (531, N'/User/Home', N'en-US', N'日期', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (532, N'/User/Home', N'Ms', N'日期', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (533, N'/User/Home', N'Vi', N'日期', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (534, N'/User/Home', N'Th', N'日期', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (535, N'/User/Home', N'zh-CN', N'状态', N'状态')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (536, N'/User/Home', N'zh-TW', N'状态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (537, N'/User/Home', N'en-US', N'状态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (538, N'/User/Home', N'Ms', N'状态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (539, N'/User/Home', N'Vi', N'状态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (540, N'/User/Home', N'Th', N'状态', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (541, N'/User/Home', N'zh-CN', N'更多', N'更多')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (542, N'/User/Home', N'zh-TW', N'更多', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (543, N'/User/Home', N'en-US', N'更多', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (544, N'/User/Home', N'Ms', N'更多', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (545, N'/User/Home', N'Vi', N'更多', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (546, N'/User/Home', N'Th', N'更多', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (547, N'/User/Home', N'zh-CN', N'oemsys388@163.com', N'oemsys388@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (548, N'/User/Home', N'zh-TW', N'oemsys388@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (549, N'/User/Home', N'en-US', N'oemsys388@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (550, N'/User/Home', N'Ms', N'oemsys388@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (551, N'/User/Home', N'Vi', N'oemsys388@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (552, N'/User/Home', N'Th', N'oemsys388@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (553, N'/User/Home', N'zh-CN', N'申请经理', N'申请经理')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (554, N'/User/Home', N'zh-TW', N'申请经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (555, N'/User/Home', N'en-US', N'申请经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (556, N'/User/Home', N'Ms', N'申请经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (557, N'/User/Home', N'Vi', N'申请经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (558, N'/User/Home', N'Th', N'申请经理', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (559, N'/user/user/QrCode', N'zh-CN', N'确认介绍人', N'确认介绍人')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (560, N'/user/user/QrCode', N'zh-TW', N'确认介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (561, N'/user/user/QrCode', N'en-US', N'确认介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (562, N'/user/user/QrCode', N'Ms', N'确认介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (563, N'/user/user/QrCode', N'Vi', N'确认介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (564, N'/user/user/QrCode', N'Th', N'确认介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (565, N'/user/user/QrCode', N'zh-CN', N'重复输入介绍人', N'重复输入介绍人')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (566, N'/user/user/QrCode', N'zh-TW', N'重复输入介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (567, N'/user/user/QrCode', N'en-US', N'重复输入介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (568, N'/user/user/QrCode', N'Ms', N'重复输入介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (569, N'/user/user/QrCode', N'Vi', N'重复输入介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (570, N'/user/user/QrCode', N'Th', N'重复输入介绍人', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (571, N'/User/Home', N'zh-CN', N'oemsys187@163.com', N'oemsys187@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (572, N'/User/Home', N'zh-TW', N'oemsys187@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (573, N'/User/Home', N'en-US', N'oemsys187@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (574, N'/User/Home', N'Ms', N'oemsys187@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (575, N'/User/Home', N'Vi', N'oemsys187@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (576, N'/User/Home', N'Th', N'oemsys187@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (577, N'/user/login/logins', N'zh-CN', N'登录成功！', N'登录成功！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (578, N'/user/login/logins', N'zh-TW', N'登录成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (579, N'/user/login/logins', N'en-US', N'登录成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (580, N'/user/login/logins', N'Ms', N'登录成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (581, N'/user/login/logins', N'Vi', N'登录成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (582, N'/user/login/logins', N'Th', N'登录成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (583, N'/user/login/logins', N'zh-CN', N'世界上最便捷的财富管理平台', N'世界上最便捷的财富管理平台')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (584, N'/user/login/logins', N'zh-TW', N'世界上最便捷的财富管理平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (585, N'/user/login/logins', N'en-US', N'世界上最便捷的财富管理平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (586, N'/user/login/logins', N'Ms', N'世界上最便捷的财富管理平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (587, N'/user/login/logins', N'Vi', N'世界上最便捷的财富管理平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (588, N'/user/login/logins', N'Th', N'世界上最便捷的财富管理平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (589, N'/user/login/logins', N'zh-CN', N'登录成功', N'登录成功')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (590, N'/user/login/logins', N'zh-TW', N'登录成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (591, N'/user/login/logins', N'en-US', N'登录成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (592, N'/user/login/logins', N'Ms', N'登录成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (593, N'/user/login/logins', N'Vi', N'登录成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (594, N'/user/login/logins', N'Th', N'登录成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (595, N'/User/home/index', N'zh-CN', N'oemsys819@163.com', N'oemsys819@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (596, N'/User/home/index', N'zh-TW', N'oemsys819@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (597, N'/User/home/index', N'en-US', N'oemsys819@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (598, N'/User/home/index', N'Ms', N'oemsys819@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (599, N'/User/home/index', N'Vi', N'oemsys819@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (600, N'/User/home/index', N'Th', N'oemsys819@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (601, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'选择钱包', N'选择钱包')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (602, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'选择钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (603, N'/user/home/_SubmitAcceptHelp', N'en-US', N'选择钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (604, N'/user/home/_SubmitAcceptHelp', N'Ms', N'选择钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (605, N'/user/home/_SubmitAcceptHelp', N'Vi', N'选择钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (606, N'/user/home/_SubmitAcceptHelp', N'Th', N'选择钱包', N'')
GO
print 'Processed 600 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (607, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'SOS钱包', N'SOS钱包')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (608, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'可出售SOS', N'可出售SOS')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (609, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'可出售SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (610, N'/user/home/_SubmitAcceptHelp', N'en-US', N'可出售SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (611, N'/user/home/_SubmitAcceptHelp', N'Ms', N'可出售SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (612, N'/user/home/_SubmitAcceptHelp', N'Vi', N'可出售SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (613, N'/user/home/_SubmitAcceptHelp', N'Th', N'可出售SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (614, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'最低出售数量', N'最低出售数量')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (615, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'最低出售数量', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (616, N'/user/home/_SubmitAcceptHelp', N'en-US', N'最低出售数量', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (617, N'/user/home/_SubmitAcceptHelp', N'Ms', N'最低出售数量', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (618, N'/user/home/_SubmitAcceptHelp', N'Vi', N'最低出售数量', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (619, N'/user/home/_SubmitAcceptHelp', N'Th', N'最低出售数量', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (620, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'最高出售限额', N'最高出售限额')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (621, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'最高出售限额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (622, N'/user/home/_SubmitAcceptHelp', N'en-US', N'最高出售限额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (623, N'/user/home/_SubmitAcceptHelp', N'Ms', N'最高出售限额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (624, N'/user/home/_SubmitAcceptHelp', N'Vi', N'最高出售限额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (625, N'/user/home/_SubmitAcceptHelp', N'Th', N'最高出售限额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (626, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'接受帮助支付方式', N'接受帮助支付方式')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (627, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'接受帮助支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (628, N'/user/home/_SubmitAcceptHelp', N'en-US', N'接受帮助支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (629, N'/user/home/_SubmitAcceptHelp', N'Ms', N'接受帮助支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (630, N'/user/home/_SubmitAcceptHelp', N'Vi', N'接受帮助支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (631, N'/user/home/_SubmitAcceptHelp', N'Th', N'接受帮助支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (632, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'银行支付', N'银行支付')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (633, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'银行支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (634, N'/user/home/_SubmitAcceptHelp', N'en-US', N'银行支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (635, N'/user/home/_SubmitAcceptHelp', N'Ms', N'银行支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (636, N'/user/home/_SubmitAcceptHelp', N'Vi', N'银行支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (637, N'/user/home/_SubmitAcceptHelp', N'Th', N'银行支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (638, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'支付宝', N'支付宝')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (639, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'支付宝', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (640, N'/user/home/_SubmitAcceptHelp', N'en-US', N'支付宝', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (641, N'/user/home/_SubmitAcceptHelp', N'Ms', N'支付宝', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (642, N'/user/home/_SubmitAcceptHelp', N'Vi', N'支付宝', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (643, N'/user/home/_SubmitAcceptHelp', N'Th', N'支付宝', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (644, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'微信支付', N'微信支付')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (645, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'微信支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (646, N'/user/home/_SubmitAcceptHelp', N'en-US', N'微信支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (647, N'/user/home/_SubmitAcceptHelp', N'Ms', N'微信支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (648, N'/user/home/_SubmitAcceptHelp', N'Vi', N'微信支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (649, N'/user/home/_SubmitAcceptHelp', N'Th', N'微信支付', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (650, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'输入SOS', N'输入SOS')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (651, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'输入SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (652, N'/user/home/_SubmitAcceptHelp', N'en-US', N'输入SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (653, N'/user/home/_SubmitAcceptHelp', N'Ms', N'输入SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (654, N'/user/home/_SubmitAcceptHelp', N'Vi', N'输入SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (655, N'/user/home/_SubmitAcceptHelp', N'Th', N'输入SOS', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (656, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N' 警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N' 警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (657, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N' 警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (658, N'/user/home/_SubmitAcceptHelp', N'en-US', N' 警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (659, N'/user/home/_SubmitAcceptHelp', N'Ms', N' 警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (660, N'/user/home/_SubmitAcceptHelp', N'Vi', N' 警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (661, N'/user/home/_SubmitAcceptHelp', N'Th', N' 警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (662, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'您将会获得', N'您将会获得')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (663, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'您将会获得', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (664, N'/user/home/_SubmitAcceptHelp', N'en-US', N'您将会获得', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (665, N'/user/home/_SubmitAcceptHelp', N'Ms', N'您将会获得', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (666, N'/user/home/_SubmitAcceptHelp', N'Vi', N'您将会获得', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (667, N'/user/home/_SubmitAcceptHelp', N'Th', N'您将会获得', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (668, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'RMB  : 人民币', N'RMB  : 人民币')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (669, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (670, N'/user/home/_SubmitAcceptHelp', N'en-US', N'RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (671, N'/user/home/_SubmitAcceptHelp', N'Ms', N'RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (672, N'/user/home/_SubmitAcceptHelp', N'Vi', N'RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (673, N'/user/home/_SubmitAcceptHelp', N'Th', N'RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (674, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (675, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (676, N'/user/home/_SubmitAcceptHelp', N'en-US', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (677, N'/user/home/_SubmitAcceptHelp', N'Ms', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (678, N'/user/home/_SubmitAcceptHelp', N'Vi', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (679, N'/user/home/_SubmitAcceptHelp', N'Th', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (680, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。', N'注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (681, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (682, N'/user/home/_SubmitAcceptHelp', N'en-US', N'注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (683, N'/user/home/_SubmitAcceptHelp', N'Ms', N'注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (684, N'/user/home/_SubmitAcceptHelp', N'Vi', N'注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (685, N'/user/home/_SubmitAcceptHelp', N'Th', N'注意：请核实交易的资料，一旦完成申请，该交易是不能被取消或更改。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (686, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'确认', N'确认')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (687, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'确认', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (688, N'/user/home/_SubmitAcceptHelp', N'en-US', N'确认', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (689, N'/user/home/_SubmitAcceptHelp', N'Ms', N'确认', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (690, N'/user/home/_SubmitAcceptHelp', N'Vi', N'确认', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (691, N'/user/home/_SubmitAcceptHelp', N'Th', N'确认', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (692, N'/User/Home/AcceptHelp', N'zh-CN', N'提示！', N'提示！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (693, N'/User/Home/AcceptHelp', N'zh-TW', N'提示！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (694, N'/User/Home/AcceptHelp', N'en-US', N'提示！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (695, N'/User/Home/AcceptHelp', N'Ms', N'提示！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (696, N'/User/Home/AcceptHelp', N'Vi', N'提示！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (697, N'/User/Home/AcceptHelp', N'Th', N'提示！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (698, N'/User/Home/AcceptHelp', N'zh-CN', N'您还未填写任何一个收款帐号（银行卡、支付宝、微信），请到“帐号管理”处修改个人资料！', N'您还未填写任何一个收款帐号（银行卡、支付宝、微信），请到“帐号管理”处修改个人资料！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (699, N'/User/Home/AcceptHelp', N'zh-TW', N'您还未填写任何一个收款帐号（银行卡、支付宝、微信），请到“帐号管理”处修改个人资料！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (700, N'/User/Home/AcceptHelp', N'en-US', N'您还未填写任何一个收款帐号（银行卡、支付宝、微信），请到“帐号管理”处修改个人资料！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (701, N'/User/Home/AcceptHelp', N'Ms', N'您还未填写任何一个收款帐号（银行卡、支付宝、微信），请到“帐号管理”处修改个人资料！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (702, N'/User/Home/AcceptHelp', N'Vi', N'您还未填写任何一个收款帐号（银行卡、支付宝、微信），请到“帐号管理”处修改个人资料！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (703, N'/User/Home/AcceptHelp', N'Th', N'您还未填写任何一个收款帐号（银行卡、支付宝、微信），请到“帐号管理”处修改个人资料！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (704, N'/user/user/modify', N'zh-CN', N'个人资料修改成功！', N'个人资料修改成功！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (705, N'/user/user/modify', N'zh-TW', N'个人资料修改成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (706, N'/user/user/modify', N'en-US', N'个人资料修改成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (707, N'/user/user/modify', N'Ms', N'个人资料修改成功！', N'')
GO
print 'Processed 700 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (708, N'/user/user/modify', N'Vi', N'个人资料修改成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (709, N'/user/user/modify', N'Th', N'个人资料修改成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (710, N'/User/Home/AcceptHelp', N'zh-CN', N'申请成功', N'申请成功')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (711, N'/User/Home/AcceptHelp', N'zh-TW', N'申请成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (712, N'/User/Home/AcceptHelp', N'en-US', N'申请成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (713, N'/User/Home/AcceptHelp', N'Ms', N'申请成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (714, N'/User/Home/AcceptHelp', N'Vi', N'申请成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (715, N'/User/Home/AcceptHelp', N'Th', N'申请成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (716, N'/User/Home', N'zh-CN', N'oemsys287@163.com', N'oemsys287@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (717, N'/User/Home', N'zh-TW', N'oemsys287@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (718, N'/User/Home', N'en-US', N'oemsys287@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (719, N'/User/Home', N'Ms', N'oemsys287@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (720, N'/User/Home', N'Vi', N'oemsys287@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (721, N'/User/Home', N'Th', N'oemsys287@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (722, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'申请完成后，请等待系统15-30日随机分配受善需求', N'申请完成后，请等待系统15-30日随机分配受善需求')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (723, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'申请完成后，请等待系统15-30日随机分配受善需求', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (724, N'/user/home/_SubmitSupplyHelp', N'en-US', N'申请完成后，请等待系统15-30日随机分配受善需求', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (725, N'/user/home/_SubmitSupplyHelp', N'Ms', N'申请完成后，请等待系统15-30日随机分配受善需求', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (726, N'/user/home/_SubmitSupplyHelp', N'Vi', N'申请完成后，请等待系统15-30日随机分配受善需求', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (727, N'/user/home/_SubmitSupplyHelp', N'Th', N'申请完成后，请等待系统15-30日随机分配受善需求', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (728, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'支付方式', N'支付方式')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (729, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (730, N'/user/home/_SubmitSupplyHelp', N'en-US', N'支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (731, N'/user/home/_SubmitSupplyHelp', N'Ms', N'支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (732, N'/user/home/_SubmitSupplyHelp', N'Vi', N'支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (733, N'/user/home/_SubmitSupplyHelp', N'Th', N'支付方式', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (734, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'提供帮助金额', N'提供帮助金额')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (735, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'提供帮助金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (736, N'/user/home/_SubmitSupplyHelp', N'en-US', N'提供帮助金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (737, N'/user/home/_SubmitSupplyHelp', N'Ms', N'提供帮助金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (738, N'/user/home/_SubmitSupplyHelp', N'Vi', N'提供帮助金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (739, N'/user/home/_SubmitSupplyHelp', N'Th', N'提供帮助金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (740, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N' 目前，每月增长30%', N' 目前，每月增长30%')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (741, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N' 目前，每月增长30%', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (742, N'/user/home/_SubmitSupplyHelp', N'en-US', N' 目前，每月增长30%', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (743, N'/user/home/_SubmitSupplyHelp', N'Ms', N' 目前，每月增长30%', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (744, N'/user/home/_SubmitSupplyHelp', N'Vi', N' 目前，每月增长30%', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (745, N'/user/home/_SubmitSupplyHelp', N'Th', N' 目前，每月增长30%', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (746, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (747, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (748, N'/user/home/_SubmitSupplyHelp', N'en-US', N'警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (749, N'/user/home/_SubmitSupplyHelp', N'Ms', N'警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (750, N'/user/home/_SubmitSupplyHelp', N'Vi', N'警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (751, N'/user/home/_SubmitSupplyHelp', N'Th', N'警告，我已完全了解所有风险。我决定参与会员系统,尊重会员系统文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (752, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'提供帮助', N'提供帮助')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (753, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (754, N'/user/home/_SubmitSupplyHelp', N'en-US', N'提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (755, N'/user/home/_SubmitSupplyHelp', N'Ms', N'提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (756, N'/user/home/_SubmitSupplyHelp', N'Vi', N'提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (757, N'/user/home/_SubmitSupplyHelp', N'Th', N'提供帮助', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (758, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N' RMB  : 人民币', N' RMB  : 人民币')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (759, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N' RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (760, N'/user/home/_SubmitSupplyHelp', N'en-US', N' RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (761, N'/user/home/_SubmitSupplyHelp', N'Ms', N' RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (762, N'/user/home/_SubmitSupplyHelp', N'Vi', N' RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (763, N'/user/home/_SubmitSupplyHelp', N'Th', N' RMB  : 人民币', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (764, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'增长率为每日1% RMB，最高30%  RMB', N'增长率为每日1% RMB，最高30%  RMB')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (765, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'增长率为每日1% RMB，最高30%  RMB', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (766, N'/user/home/_SubmitSupplyHelp', N'en-US', N'增长率为每日1% RMB，最高30%  RMB', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (767, N'/user/home/_SubmitSupplyHelp', N'Ms', N'增长率为每日1% RMB，最高30%  RMB', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (768, N'/user/home/_SubmitSupplyHelp', N'Vi', N'增长率为每日1% RMB，最高30%  RMB', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (769, N'/user/home/_SubmitSupplyHelp', N'Th', N'增长率为每日1% RMB，最高30%  RMB', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (770, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (771, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (772, N'/user/home/_SubmitSupplyHelp', N'en-US', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (773, N'/user/home/_SubmitSupplyHelp', N'Ms', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (774, N'/user/home/_SubmitSupplyHelp', N'Vi', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (775, N'/user/home/_SubmitSupplyHelp', N'Th', N'注意：您的申请如果需要被取消，可以在配对单产生之前提交取消申请。一旦配对单产生了，该施善申请将无法被取消。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (776, N'/user/home', N'zh-CN', N'金额', N'金额')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (777, N'/user/home', N'zh-TW', N'金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (778, N'/user/home', N'en-US', N'金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (779, N'/user/home', N'Ms', N'金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (780, N'/user/home', N'Vi', N'金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (781, N'/user/home', N'Th', N'金额', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (782, N'/user/home/_ConfirmPay', N'zh-CN', N'我完成打款', N'我完成打款')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (783, N'/user/home/_ConfirmPay', N'zh-TW', N'我完成打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (784, N'/user/home/_ConfirmPay', N'en-US', N'我完成打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (785, N'/user/home/_ConfirmPay', N'Ms', N'我完成打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (786, N'/user/home/_ConfirmPay', N'Vi', N'我完成打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (787, N'/user/home/_ConfirmPay', N'Th', N'我完成打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (788, N'/user/home/_ConfirmPay', N'zh-CN', N'延迟24小时打款', N'延迟24小时打款')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (789, N'/user/home/_ConfirmPay', N'zh-TW', N'延迟24小时打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (790, N'/user/home/_ConfirmPay', N'en-US', N'延迟24小时打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (791, N'/user/home/_ConfirmPay', N'Ms', N'延迟24小时打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (792, N'/user/home/_ConfirmPay', N'Vi', N'延迟24小时打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (793, N'/user/home/_ConfirmPay', N'Th', N'延迟24小时打款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (794, N'/user/home/_ConfirmPay', N'zh-CN', N'上传付款凭证图片', N'上传付款凭证图片')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (795, N'/user/home/_ConfirmPay', N'zh-TW', N'上传付款凭证图片', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (796, N'/user/home/_ConfirmPay', N'en-US', N'上传付款凭证图片', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (797, N'/user/home/_ConfirmPay', N'Ms', N'上传付款凭证图片', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (798, N'/user/home/_ConfirmPay', N'Vi', N'上传付款凭证图片', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (799, N'/user/home/_ConfirmPay', N'Th', N'上传付款凭证图片', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (800, N'/user/home/ConfirmPay', N'zh-CN', N'操作成功！', N'操作成功！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (801, N'/user/home/ConfirmPay', N'zh-TW', N'操作成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (802, N'/user/home/ConfirmPay', N'en-US', N'操作成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (803, N'/user/home/ConfirmPay', N'Ms', N'操作成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (804, N'/user/home/ConfirmPay', N'Vi', N'操作成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (805, N'/user/home/ConfirmPay', N'Th', N'操作成功！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (806, N'/user/home/_SubmitLeaveWord', N'zh-CN', N'你可以与这位参与者消息联系。', N'你可以与这位参与者消息联系。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (807, N'/user/home/_SubmitLeaveWord', N'zh-TW', N'你可以与这位参与者消息联系。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (808, N'/user/home/_SubmitLeaveWord', N'en-US', N'你可以与这位参与者消息联系。', N'')
GO
print 'Processed 800 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (809, N'/user/home/_SubmitLeaveWord', N'Ms', N'你可以与这位参与者消息联系。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (810, N'/user/home/_SubmitLeaveWord', N'Vi', N'你可以与这位参与者消息联系。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (811, N'/user/home/_SubmitLeaveWord', N'Th', N'你可以与这位参与者消息联系。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (812, N'/user/home/_SubmitLeaveWord', N'zh-CN', N' 注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。', N' 注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (813, N'/user/home/_SubmitLeaveWord', N'zh-TW', N' 注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (814, N'/user/home/_SubmitLeaveWord', N'en-US', N' 注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (815, N'/user/home/_SubmitLeaveWord', N'Ms', N' 注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (816, N'/user/home/_SubmitLeaveWord', N'Vi', N' 注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (817, N'/user/home/_SubmitLeaveWord', N'Th', N' 注意：如对方要求提供银行账号，支付宝，微信支付以外的转账方式，请不要同意。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (818, N'/user/home/_SubmitLeaveWord', N'zh-CN', N'提交', N'提交')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (819, N'/user/home/_SubmitLeaveWord', N'zh-TW', N'提交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (820, N'/user/home/_SubmitLeaveWord', N'en-US', N'提交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (821, N'/user/home/_SubmitLeaveWord', N'Ms', N'提交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (822, N'/user/home/_SubmitLeaveWord', N'Vi', N'提交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (823, N'/user/home/_SubmitLeaveWord', N'Th', N'提交', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (824, N'/user/home/_SubmitLeaveWord', N'zh-CN', N'关闭', N'关闭')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (825, N'/user/home/_SubmitLeaveWord', N'zh-TW', N'关闭', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (826, N'/user/home/_SubmitLeaveWord', N'en-US', N'关闭', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (827, N'/user/home/_SubmitLeaveWord', N'Ms', N'关闭', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (828, N'/user/home/_SubmitLeaveWord', N'Vi', N'关闭', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (829, N'/user/home/_SubmitLeaveWord', N'Th', N'关闭', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (830, N'/User/Home', N'zh-CN', N'oemsys921@163.com', N'oemsys921@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (831, N'/User/Home', N'zh-TW', N'oemsys921@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (832, N'/User/Home', N'en-US', N'oemsys921@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (833, N'/User/Home', N'Ms', N'oemsys921@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (834, N'/User/Home', N'Vi', N'oemsys921@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (835, N'/User/Home', N'Th', N'oemsys921@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (836, N'/user/home/logout', N'zh-CN', N'系统退出', N'系统退出')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (837, N'/user/home/logout', N'zh-TW', N'系统退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (838, N'/user/home/logout', N'en-US', N'系统退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (839, N'/user/home/logout', N'Ms', N'系统退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (840, N'/user/home/logout', N'Vi', N'系统退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (841, N'/user/home/logout', N'Th', N'系统退出', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (842, N'/user/home/logout', N'zh-CN', N'退出成功', N'退出成功')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (843, N'/user/home/logout', N'zh-TW', N'退出成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (844, N'/user/home/logout', N'en-US', N'退出成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (845, N'/user/home/logout', N'Ms', N'退出成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (846, N'/user/home/logout', N'Vi', N'退出成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (847, N'/user/home/logout', N'Th', N'退出成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (848, N'/user/Reg/index', N'zh-CN', N'会员邮箱', N'会员邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (849, N'/user/Reg/index', N'zh-TW', N'会员邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (850, N'/user/Reg/index', N'en-US', N'会员邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (851, N'/user/Reg/index', N'Ms', N'会员邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (852, N'/user/Reg/index', N'Vi', N'会员邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (853, N'/user/Reg/index', N'Th', N'会员邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (854, N'/user/Reg/index', N'zh-CN', N'会员编号', N'会员编号')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (855, N'/user/Reg/index', N'zh-TW', N'会员编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (856, N'/user/Reg/index', N'en-US', N'会员编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (857, N'/user/Reg/index', N'Ms', N'会员编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (858, N'/user/Reg/index', N'Vi', N'会员编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (859, N'/user/Reg/index', N'Th', N'会员编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (860, N'/user/Reg/index', N'zh-CN', N'姓名', N'姓名')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (861, N'/user/Reg/index', N'zh-TW', N'姓名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (862, N'/user/Reg/index', N'en-US', N'姓名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (863, N'/user/Reg/index', N'Ms', N'姓名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (864, N'/user/Reg/index', N'Vi', N'姓名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (865, N'/user/Reg/index', N'Th', N'姓名', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (866, N'/user/Reg/index', N'zh-CN', N'推荐人邮箱', N'推荐人邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (867, N'/user/Reg/index', N'zh-TW', N'推荐人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (868, N'/user/Reg/index', N'en-US', N'推荐人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (869, N'/user/Reg/index', N'Ms', N'推荐人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (870, N'/user/Reg/index', N'Vi', N'推荐人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (871, N'/user/Reg/index', N'Th', N'推荐人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (872, N'/user/Reg/index', N'zh-CN', N'经理编号', N'经理编号')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (873, N'/user/Reg/index', N'zh-TW', N'经理编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (874, N'/user/Reg/index', N'en-US', N'经理编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (875, N'/user/Reg/index', N'Ms', N'经理编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (876, N'/user/Reg/index', N'Vi', N'经理编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (877, N'/user/Reg/index', N'Th', N'经理编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (878, N'/user/Reg/index', N'zh-CN', N'确认登录密码', N'确认登录密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (879, N'/user/Reg/index', N'zh-TW', N'确认登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (880, N'/user/Reg/index', N'en-US', N'确认登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (881, N'/user/Reg/index', N'Ms', N'确认登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (882, N'/user/Reg/index', N'Vi', N'确认登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (883, N'/user/Reg/index', N'Th', N'确认登录密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (884, N'/user/Reg/index', N'zh-CN', N'二级密码', N'二级密码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (885, N'/user/Reg/index', N'zh-TW', N'二级密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (886, N'/user/Reg/index', N'en-US', N'二级密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (887, N'/user/Reg/index', N'Ms', N'二级密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (888, N'/user/Reg/index', N'Vi', N'二级密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (889, N'/user/Reg/index', N'Th', N'二级密码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (890, N'/user/Reg/Index', N'zh-CN', N'抱赚您填写的信息有误： <br />请填写邮箱<br />会员编号<br />登录密码、二级密码<br />经理不存在 <br />请核实后重新提交！', N'抱赚您填写的信息有误： <br />请填写邮箱<br />会员编号<br />登录密码、二级密码<br />经理不存在 <br />请核实后重新提交！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (891, N'/user/Reg/Index', N'zh-TW', N'抱赚您填写的信息有误： <br />请填写邮箱<br />会员编号<br />登录密码、二级密码<br />经理不存在 <br />请核实后重新提交！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (892, N'/user/Reg/Index', N'en-US', N'抱赚您填写的信息有误： <br />请填写邮箱<br />会员编号<br />登录密码、二级密码<br />经理不存在 <br />请核实后重新提交！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (893, N'/user/Reg/Index', N'Ms', N'抱赚您填写的信息有误： <br />请填写邮箱<br />会员编号<br />登录密码、二级密码<br />经理不存在 <br />请核实后重新提交！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (894, N'/user/Reg/Index', N'Vi', N'抱赚您填写的信息有误： <br />请填写邮箱<br />会员编号<br />登录密码、二级密码<br />经理不存在 <br />请核实后重新提交！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (895, N'/user/Reg/Index', N'Th', N'抱赚您填写的信息有误： <br />请填写邮箱<br />会员编号<br />登录密码、二级密码<br />经理不存在 <br />请核实后重新提交！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (896, N'/User/Home', N'zh-CN', N'oemsys415@163.com', N'oemsys415@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (897, N'/User/Home', N'zh-TW', N'oemsys415@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (898, N'/User/Home', N'en-US', N'oemsys415@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (899, N'/User/Home', N'Ms', N'oemsys415@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (900, N'/User/Home', N'Vi', N'oemsys415@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (901, N'/User/Home', N'Th', N'oemsys415@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (902, N'/user/agent/applyagent', N'zh-CN', N'您没达到条件升经理！', N'您没达到条件升经理！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (903, N'/user/agent/applyagent', N'zh-TW', N'您没达到条件升经理！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (904, N'/user/agent/applyagent', N'en-US', N'您没达到条件升经理！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (905, N'/user/agent/applyagent', N'Ms', N'您没达到条件升经理！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (906, N'/user/agent/applyagent', N'Vi', N'您没达到条件升经理！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (907, N'/user/agent/applyagent', N'Th', N'您没达到条件升经理！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (908, N'/User/Home', N'zh-CN', N'oemsys945@163.com', N'oemsys945@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (909, N'/User/Home', N'zh-TW', N'oemsys945@163.com', N'')
GO
print 'Processed 900 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (910, N'/User/Home', N'en-US', N'oemsys945@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (911, N'/User/Home', N'Ms', N'oemsys945@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (912, N'/User/Home', N'Vi', N'oemsys945@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (913, N'/User/Home', N'Th', N'oemsys945@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (914, N'/user/user/QrCode', N'zh-CN', N'登陆邮箱', N'登陆邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (915, N'/user/user/QrCode', N'zh-TW', N'登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (916, N'/user/user/QrCode', N'en-US', N'登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (917, N'/user/user/QrCode', N'Ms', N'登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (918, N'/user/user/QrCode', N'Vi', N'登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (919, N'/user/user/QrCode', N'Th', N'登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (920, N'/user/user/QrCode', N'zh-CN', N'输入您的登陆邮箱', N'输入您的登陆邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (921, N'/user/user/QrCode', N'zh-TW', N'输入您的登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (922, N'/user/user/QrCode', N'en-US', N'输入您的登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (923, N'/user/user/QrCode', N'Ms', N'输入您的登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (924, N'/user/user/QrCode', N'Vi', N'输入您的登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (925, N'/user/user/QrCode', N'Th', N'输入您的登陆邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (926, N'/user/user/QrCode', N'zh-CN', N'确认登录邮箱', N'确认登录邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (927, N'/user/user/QrCode', N'zh-TW', N'确认登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (928, N'/user/user/QrCode', N'en-US', N'确认登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (929, N'/user/user/QrCode', N'Ms', N'确认登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (930, N'/user/user/QrCode', N'Vi', N'确认登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (931, N'/user/user/QrCode', N'Th', N'确认登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (932, N'/user/user/QrCode', N'zh-CN', N'介绍人邮箱', N'介绍人邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (933, N'/user/user/QrCode', N'zh-TW', N'介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (934, N'/user/user/QrCode', N'en-US', N'介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (935, N'/user/user/QrCode', N'Ms', N'介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (936, N'/user/user/QrCode', N'Vi', N'介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (937, N'/user/user/QrCode', N'Th', N'介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (938, N'/user/user/QrCode', N'zh-CN', N'输入介绍人邮箱', N'输入介绍人邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (939, N'/user/user/QrCode', N'zh-TW', N'输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (940, N'/user/user/QrCode', N'en-US', N'输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (941, N'/user/user/QrCode', N'Ms', N'输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (942, N'/user/user/QrCode', N'Vi', N'输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (943, N'/user/user/QrCode', N'Th', N'输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (944, N'/user/user/QrCode', N'zh-CN', N'确认介绍人邮箱', N'确认介绍人邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (945, N'/user/user/QrCode', N'zh-TW', N'确认介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (946, N'/user/user/QrCode', N'en-US', N'确认介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (947, N'/user/user/QrCode', N'Ms', N'确认介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (948, N'/user/user/QrCode', N'Vi', N'确认介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (949, N'/user/user/QrCode', N'Th', N'确认介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (950, N'/user/user/QrCode', N'zh-CN', N'重复输入介绍人邮箱', N'重复输入介绍人邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (951, N'/user/user/QrCode', N'zh-TW', N'重复输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (952, N'/user/user/QrCode', N'en-US', N'重复输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (953, N'/user/user/QrCode', N'Ms', N'重复输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (954, N'/user/user/QrCode', N'Vi', N'重复输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (955, N'/user/user/QrCode', N'Th', N'重复输入介绍人邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (956, N'/User/Home', N'zh-CN', N'oemsys062@163.com', N'oemsys062@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (957, N'/User/Home', N'zh-TW', N'oemsys062@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (958, N'/User/Home', N'en-US', N'oemsys062@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (959, N'/User/Home', N'Ms', N'oemsys062@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (960, N'/User/Home', N'Vi', N'oemsys062@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (961, N'/User/Home', N'Th', N'oemsys062@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (962, N'/user/Reg/index', N'zh-CN', N'登录邮箱', N'登录邮箱')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (963, N'/user/Reg/index', N'zh-TW', N'登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (964, N'/user/Reg/index', N'en-US', N'登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (965, N'/user/Reg/index', N'Ms', N'登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (966, N'/user/Reg/index', N'Vi', N'登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (967, N'/user/Reg/index', N'Th', N'登录邮箱', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (968, N'/user/Reg/index', N'zh-CN', N'昵称', N'昵称')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (969, N'/user/Reg/index', N'zh-TW', N'昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (970, N'/user/Reg/index', N'en-US', N'昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (971, N'/user/Reg/index', N'Ms', N'昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (972, N'/user/Reg/index', N'Vi', N'昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (973, N'/user/Reg/index', N'Th', N'昵称', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (974, N'/User/home/index', N'zh-CN', N'zsl448@163.com', N'zsl448@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (975, N'/User/home/index', N'zh-TW', N'zsl448@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (976, N'/User/home/index', N'en-US', N'zsl448@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (977, N'/User/home/index', N'Ms', N'zsl448@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (978, N'/User/home/index', N'Vi', N'zsl448@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (979, N'/User/home/index', N'Th', N'zsl448@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (980, N'/User/Home', N'zh-CN', N'oemsys623@163.com', N'oemsys623@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (981, N'/User/Home', N'zh-TW', N'oemsys623@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (982, N'/User/Home', N'en-US', N'oemsys623@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (983, N'/User/Home', N'Ms', N'oemsys623@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (984, N'/User/Home', N'Vi', N'oemsys623@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (985, N'/User/Home', N'Th', N'oemsys623@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (986, N'/User/Home', N'zh-CN', N'编号', N'编号')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (987, N'/User/Home', N'zh-TW', N'编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (988, N'/User/Home', N'en-US', N'编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (989, N'/User/Home', N'Ms', N'编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (990, N'/User/Home', N'Vi', N'编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (991, N'/User/Home', N'Th', N'编号', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (992, N'/user/home', N'zh-CN', N'', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (993, N'/user/home', N'zh-TW', N'', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (994, N'/user/home', N'en-US', N'', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (995, N'/user/home', N'Ms', N'', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (996, N'/user/home', N'Vi', N'', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (997, N'/user/home', N'Th', N'', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (998, N'/user/home/_VerifyPay', N'zh-CN', N'确认收款', N'确认收款')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (999, N'/user/home/_VerifyPay', N'zh-TW', N'确认收款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1000, N'/user/home/_VerifyPay', N'en-US', N'确认收款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1001, N'/user/home/_VerifyPay', N'Ms', N'确认收款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1002, N'/user/home/_VerifyPay', N'Vi', N'确认收款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1003, N'/user/home/_VerifyPay', N'Th', N'确认收款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1004, N'/user/home/_VerifyPay', N'zh-CN', N'假的汇款单', N'假的汇款单')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1005, N'/user/home/_VerifyPay', N'zh-TW', N'假的汇款单', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1006, N'/user/home/_VerifyPay', N'en-US', N'假的汇款单', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1007, N'/user/home/_VerifyPay', N'Ms', N'假的汇款单', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1008, N'/user/home/_VerifyPay', N'Vi', N'假的汇款单', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1009, N'/user/home/_VerifyPay', N'Th', N'假的汇款单', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1010, N'/user/home/FinshPay', N'zh-CN', N'确认成功', N'确认成功')
GO
print 'Processed 1000 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1011, N'/user/home/FinshPay', N'zh-TW', N'确认成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1012, N'/user/home/FinshPay', N'en-US', N'确认成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1013, N'/user/home/FinshPay', N'Ms', N'确认成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1014, N'/user/home/FinshPay', N'Vi', N'确认成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1015, N'/user/home/FinshPay', N'Th', N'确认成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1016, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'可出售', N'可出售')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1017, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'可出售', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1018, N'/user/home/_SubmitAcceptHelp', N'en-US', N'可出售', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1019, N'/user/home/_SubmitAcceptHelp', N'Ms', N'可出售', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1020, N'/user/home/_SubmitAcceptHelp', N'Vi', N'可出售', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1021, N'/user/home/_SubmitAcceptHelp', N'Th', N'可出售', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1022, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N'输入', N'输入')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1023, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N'输入', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1024, N'/user/home/_SubmitAcceptHelp', N'en-US', N'输入', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1025, N'/user/home/_SubmitAcceptHelp', N'Ms', N'输入', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1026, N'/user/home/_SubmitAcceptHelp', N'Vi', N'输入', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1027, N'/user/home/_SubmitAcceptHelp', N'Th', N'输入', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1028, N'/User/Home/AcceptHelp', N'zh-CN', N'请选择付款方式！', N'请选择付款方式！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1029, N'/User/Home/AcceptHelp', N'zh-TW', N'请选择付款方式！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1030, N'/User/Home/AcceptHelp', N'en-US', N'请选择付款方式！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1031, N'/User/Home/AcceptHelp', N'Ms', N'请选择付款方式！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1032, N'/User/Home/AcceptHelp', N'Vi', N'请选择付款方式！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1033, N'/User/Home/AcceptHelp', N'Th', N'请选择付款方式！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1034, N'/User/Home/AcceptHelp', N'zh-CN', N'对不起，你有一单提供帮助没有确认成功，无法接受帮助！', N'对不起，你有一单提供帮助没有确认成功，无法接受帮助！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1035, N'/User/Home/AcceptHelp', N'zh-TW', N'对不起，你有一单提供帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1036, N'/User/Home/AcceptHelp', N'en-US', N'对不起，你有一单提供帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1037, N'/User/Home/AcceptHelp', N'Ms', N'对不起，你有一单提供帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1038, N'/User/Home/AcceptHelp', N'Vi', N'对不起，你有一单提供帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1039, N'/User/Home/AcceptHelp', N'Th', N'对不起，你有一单提供帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1040, N'/User/Home/SupplyHelp', N'zh-CN', N'对不起，你有一单接受帮助 没有确认成功，无法提供帮助！', N'对不起，你有一单接受帮助 没有确认成功，无法提供帮助！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1041, N'/User/Home/SupplyHelp', N'zh-TW', N'对不起，你有一单接受帮助 没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1042, N'/User/Home/SupplyHelp', N'en-US', N'对不起，你有一单接受帮助 没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1043, N'/User/Home/SupplyHelp', N'Ms', N'对不起，你有一单接受帮助 没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1044, N'/User/Home/SupplyHelp', N'Vi', N'对不起，你有一单接受帮助 没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1045, N'/User/Home/SupplyHelp', N'Th', N'对不起，你有一单接受帮助 没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1046, N'/user/user/add', N'zh-CN', N'身份证号码', N'身份证号码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1047, N'/user/user/add', N'zh-TW', N'身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1048, N'/user/user/add', N'en-US', N'身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1049, N'/user/user/add', N'Ms', N'身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1050, N'/user/user/add', N'Vi', N'身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1051, N'/user/user/add', N'Th', N'身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1052, N'/user/user/add', N'zh-CN', N'输入身份证号码', N'输入身份证号码')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1053, N'/user/user/add', N'zh-TW', N'输入身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1054, N'/user/user/add', N'en-US', N'输入身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1055, N'/user/user/add', N'Ms', N'输入身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1056, N'/user/user/add', N'Vi', N'输入身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1057, N'/user/user/add', N'Th', N'输入身份证号码', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1058, N'/User/Home', N'zh-CN', N'oemsys881@163.com', N'oemsys881@163.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1059, N'/User/Home', N'zh-TW', N'oemsys881@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1060, N'/User/Home', N'en-US', N'oemsys881@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1061, N'/User/Home', N'Ms', N'oemsys881@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1062, N'/User/Home', N'Vi', N'oemsys881@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1063, N'/User/Home', N'Th', N'oemsys881@163.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1064, N'/User/Home/AcceptHelp', N'zh-CN', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法接受帮助！', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法接受帮助！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1065, N'/User/Home/AcceptHelp', N'zh-TW', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1066, N'/User/Home/AcceptHelp', N'en-US', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1067, N'/User/Home/AcceptHelp', N'Ms', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1068, N'/User/Home/AcceptHelp', N'Vi', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1069, N'/User/Home/AcceptHelp', N'Th', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法接受帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1070, N'/user/finance/wallet', N'zh-CN', N'钱包记录', N'钱包记录')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1071, N'/user/finance/wallet', N'zh-TW', N'钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1072, N'/user/finance/wallet', N'en-US', N'钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1073, N'/user/finance/wallet', N'Ms', N'钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1074, N'/user/finance/wallet', N'Vi', N'钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1075, N'/user/finance/wallet', N'Th', N'钱包记录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1076, N'/User/home/index', N'zh-CN', N'46826958@qq.com', N'46826958@qq.com')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1077, N'/User/home/index', N'zh-TW', N'46826958@qq.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1078, N'/User/home/index', N'en-US', N'46826958@qq.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1079, N'/User/home/index', N'Ms', N'46826958@qq.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1080, N'/User/home/index', N'Vi', N'46826958@qq.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1081, N'/User/home/index', N'Th', N'46826958@qq.com', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1082, N'/user/login/logins', N'zh-CN', N'用户名不存在', N'用户名不存在')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1083, N'/user/login/logins', N'zh-TW', N'用户名不存在', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1084, N'/user/login/logins', N'en-US', N'用户名不存在', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1085, N'/user/login/logins', N'Ms', N'用户名不存在', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1086, N'/user/login/logins', N'Vi', N'用户名不存在', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1087, N'/user/login/logins', N'Th', N'用户名不存在', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1088, N'/user/login/logins', N'zh-CN', N'用户名或密码不能为空', N'用户名或密码不能为空')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1089, N'/user/login/logins', N'zh-TW', N'用户名或密码不能为空', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1090, N'/user/login/logins', N'en-US', N'用户名或密码不能为空', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1091, N'/user/login/logins', N'Ms', N'用户名或密码不能为空', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1092, N'/user/login/logins', N'Vi', N'用户名或密码不能为空', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1093, N'/user/login/logins', N'Th', N'用户名或密码不能为空', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1094, N'/user/home/_SubmitSupplyHelp', N'zh-CN', N'警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1095, N'/user/home/_SubmitSupplyHelp', N'zh-TW', N'警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1096, N'/user/home/_SubmitSupplyHelp', N'en-US', N'警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1097, N'/user/home/_SubmitSupplyHelp', N'Ms', N'警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1098, N'/user/home/_SubmitSupplyHelp', N'Vi', N'警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1099, N'/user/home/_SubmitSupplyHelp', N'Th', N'警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1100, N'/user/login/logins', N'zh-CN', N'登录错误', N'登录错误')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1101, N'/user/login/logins', N'zh-TW', N'登录错误', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1102, N'/user/login/logins', N'en-US', N'登录错误', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1103, N'/user/login/logins', N'Ms', N'登录错误', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1104, N'/user/login/logins', N'Vi', N'登录错误', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1105, N'/user/login/logins', N'Th', N'登录错误', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1106, N'/user/login/logins', N'zh-CN', N'JN1229', N'JN1229')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1107, N'/user/login/logins', N'zh-TW', N'JN1229', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1108, N'/user/login/logins', N'en-US', N'JN1229', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1109, N'/user/login/logins', N'Ms', N'JN1229', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1110, N'/user/login/logins', N'Vi', N'JN1229', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1111, N'/user/login/logins', N'Th', N'JN1229', N'')
GO
print 'Processed 1100 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1112, N'/user/login/logins', N'zh-CN', N'用户不存在！', N'用户不存在！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1113, N'/user/login/logins', N'zh-TW', N'用户不存在！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1114, N'/user/login/logins', N'en-US', N'用户不存在！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1115, N'/user/login/logins', N'Ms', N'用户不存在！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1116, N'/user/login/logins', N'Vi', N'用户不存在！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1117, N'/user/login/logins', N'Th', N'用户不存在！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1118, N'/user/home/_SubmitAcceptHelp', N'zh-CN', N' 警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N' 警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1119, N'/user/home/_SubmitAcceptHelp', N'zh-TW', N' 警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1120, N'/user/home/_SubmitAcceptHelp', N'en-US', N' 警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1121, N'/user/home/_SubmitAcceptHelp', N'Ms', N' 警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1122, N'/user/home/_SubmitAcceptHelp', N'Vi', N' 警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1123, N'/user/home/_SubmitAcceptHelp', N'Th', N' 警告，我已完全了解所有风险。我决定参与JN1229,尊重JN1229文化与传统。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1124, N'/User/Home/SupplyHelp', N'zh-CN', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法提供帮助！', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法提供帮助！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1125, N'/User/Home/SupplyHelp', N'zh-TW', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1126, N'/User/Home/SupplyHelp', N'en-US', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1127, N'/User/Home/SupplyHelp', N'Ms', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1128, N'/User/Home/SupplyHelp', N'Vi', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1129, N'/User/Home/SupplyHelp', N'Th', N'对不起，你有一单提供帮助或接受帮助没有确认成功，无法提供帮助！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1130, N'/User/Home/AcceptHelp', N'zh-CN', N'请充输入接受帮助金额！', N'请充输入接受帮助金额！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1131, N'/User/Home/AcceptHelp', N'zh-TW', N'请充输入接受帮助金额！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1132, N'/User/Home/AcceptHelp', N'en-US', N'请充输入接受帮助金额！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1133, N'/User/Home/AcceptHelp', N'Ms', N'请充输入接受帮助金额！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1134, N'/User/Home/AcceptHelp', N'Vi', N'请充输入接受帮助金额！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1135, N'/User/Home/AcceptHelp', N'Th', N'请充输入接受帮助金额！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1136, N'/user/home/ConfirmPay', N'zh-CN', N'请您上传凭证！', N'请您上传凭证！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1137, N'/user/home/ConfirmPay', N'zh-TW', N'请您上传凭证！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1138, N'/user/home/ConfirmPay', N'en-US', N'请您上传凭证！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1139, N'/user/home/ConfirmPay', N'Ms', N'请您上传凭证！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1140, N'/user/home/ConfirmPay', N'Vi', N'请您上传凭证！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1141, N'/user/home/ConfirmPay', N'Th', N'请您上传凭证！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1142, N'/User/Home/AcceptHelp', N'zh-CN', N'接受金额需在1000~32000之间！', N'接受金额需在1000~32000之间！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1143, N'/User/Home/AcceptHelp', N'zh-TW', N'接受金额需在1000~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1144, N'/User/Home/AcceptHelp', N'en-US', N'接受金额需在1000~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1145, N'/User/Home/AcceptHelp', N'Ms', N'接受金额需在1000~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1146, N'/User/Home/AcceptHelp', N'Vi', N'接受金额需在1000~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1147, N'/User/Home/AcceptHelp', N'Th', N'接受金额需在1000~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1148, N'/user/login', N'zh-CN', N'Establishing secure connection..', N'Establishing secure connection..')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1149, N'/user/login', N'zh-TW', N'Establishing secure connection..', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1150, N'/user/login', N'en-US', N'Establishing secure connection..', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1151, N'/user/login', N'Ms', N'Establishing secure connection..', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1152, N'/user/login', N'Vi', N'Establishing secure connection..', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1153, N'/user/login', N'Th', N'Establishing secure connection..', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1154, N'/user/login', N'zh-CN', N'Establishing secure connection...', N'Establishing secure connection...')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1155, N'/user/login', N'zh-TW', N'Establishing secure connection...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1156, N'/user/login', N'en-US', N'Establishing secure connection...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1157, N'/user/login', N'Ms', N'Establishing secure connection...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1158, N'/user/login', N'Vi', N'Establishing secure connection...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1159, N'/user/login', N'Th', N'Establishing secure connection...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1160, N'/User/Home', N'zh-CN', N'剩余时间', N'剩余时间')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1161, N'/User/Home', N'zh-TW', N'剩余时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1162, N'/User/Home', N'en-US', N'剩余时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1163, N'/User/Home', N'Ms', N'剩余时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1164, N'/User/Home', N'Vi', N'剩余时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1165, N'/User/Home', N'Th', N'剩余时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1166, N'/user/home/_ConfirmPay', N'zh-CN', N'拒绝付款', N'拒绝付款')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1167, N'/user/home/_ConfirmPay', N'zh-TW', N'拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1168, N'/user/home/_ConfirmPay', N'en-US', N'拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1169, N'/user/home/_ConfirmPay', N'Ms', N'拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1170, N'/user/home/_ConfirmPay', N'Vi', N'拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1171, N'/user/home/_ConfirmPay', N'Th', N'拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1172, N'/user/home/_ConfirmPay', N'zh-CN', N'确认1', N'确认1')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1173, N'/user/home/_ConfirmPay', N'zh-TW', N'确认1', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1174, N'/user/home/_ConfirmPay', N'en-US', N'确认1', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1175, N'/user/home/_ConfirmPay', N'Ms', N'确认1', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1176, N'/user/home/_ConfirmPay', N'Vi', N'确认1', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1177, N'/user/home/_ConfirmPay', N'Th', N'确认1', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1178, N'/user/home/RefusePay', N'zh-CN', N'当前订单状态不可拒绝付款', N'当前订单状态不可拒绝付款')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1179, N'/user/home/RefusePay', N'zh-TW', N'当前订单状态不可拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1180, N'/user/home/RefusePay', N'en-US', N'当前订单状态不可拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1181, N'/user/home/RefusePay', N'Ms', N'当前订单状态不可拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1182, N'/user/home/RefusePay', N'Vi', N'当前订单状态不可拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1183, N'/user/home/RefusePay', N'Th', N'当前订单状态不可拒绝付款', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1184, N'/User/Home/AcceptHelp', N'zh-CN', N'你的余额不足，请充值！', N'你的余额不足，请充值！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1185, N'/User/Home/AcceptHelp', N'zh-TW', N'你的余额不足，请充值！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1186, N'/User/Home/AcceptHelp', N'en-US', N'你的余额不足，请充值！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1187, N'/User/Home/AcceptHelp', N'Ms', N'你的余额不足，请充值！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1188, N'/User/Home/AcceptHelp', N'Vi', N'你的余额不足，请充值！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1189, N'/User/Home/AcceptHelp', N'Th', N'你的余额不足，请充值！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1190, N'/user/home/DelayedPay', N'zh-CN', N'非法操作', N'非法操作')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1191, N'/user/home/DelayedPay', N'zh-TW', N'非法操作', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1192, N'/user/home/DelayedPay', N'en-US', N'非法操作', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1193, N'/user/home/DelayedPay', N'Ms', N'非法操作', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1194, N'/user/home/DelayedPay', N'Vi', N'非法操作', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1195, N'/user/home/DelayedPay', N'Th', N'非法操作', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1196, N'/User/Home/AcceptHelp', N'zh-CN', N'接受金额需在100~32000之间！', N'接受金额需在100~32000之间！')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1197, N'/User/Home/AcceptHelp', N'zh-TW', N'接受金额需在100~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1198, N'/User/Home/AcceptHelp', N'en-US', N'接受金额需在100~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1199, N'/User/Home/AcceptHelp', N'Ms', N'接受金额需在100~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1200, N'/User/Home/AcceptHelp', N'Vi', N'接受金额需在100~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1201, N'/User/Home/AcceptHelp', N'Th', N'接受金额需在100~32000之间！', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1202, N'/', N'zh-CN', N'官网', N'官网')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1203, N'/', N'zh-TW', N'官网', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1204, N'/', N'en-US', N'官网', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1205, N'/', N'Ms', N'官网', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1206, N'/', N'Vi', N'官网', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1207, N'/', N'Th', N'官网', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1208, N'/', N'zh-CN', N'中文', N'中文')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1209, N'/', N'zh-TW', N'中文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1210, N'/', N'en-US', N'中文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1211, N'/', N'Ms', N'中文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1212, N'/', N'Vi', N'中文', N'')
GO
print 'Processed 1200 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1213, N'/', N'Th', N'中文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1214, N'/', N'zh-CN', N'英文', N'英文')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1215, N'/', N'zh-TW', N'英文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1216, N'/', N'en-US', N'英文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1217, N'/', N'Ms', N'英文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1218, N'/', N'Vi', N'英文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1219, N'/', N'Th', N'英文', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1220, N'/', N'zh-CN', N'双子星', N'双子星')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1221, N'/', N'zh-TW', N'双子星', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1222, N'/', N'en-US', N'双子星', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1223, N'/', N'Ms', N'双子星', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1224, N'/', N'Vi', N'双子星', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1225, N'/', N'Th', N'双子星', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1226, N'/', N'zh-CN', N'是采用目前全球最前沿的金融投资理念''众筹+模式''', N'是采用目前全球最前沿的金融投资理念''众筹+模式''')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1227, N'/', N'zh-TW', N'是采用目前全球最前沿的金融投资理念''众筹+模式''', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1228, N'/', N'en-US', N'是采用目前全球最前沿的金融投资理念''众筹+模式''', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1229, N'/', N'Ms', N'是采用目前全球最前沿的金融投资理念''众筹+模式''', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1230, N'/', N'Vi', N'是采用目前全球最前沿的金融投资理念''众筹+模式''', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1231, N'/', N'Th', N'是采用目前全球最前沿的金融投资理念''众筹+模式''', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1232, N'/', N'zh-CN', N'结合虚拟币的交易平台形式，创造出来当今最前端的双币循环交易平台', N'结合虚拟币的交易平台形式，创造出来当今最前端的双币循环交易平台')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1233, N'/', N'zh-TW', N'结合虚拟币的交易平台形式，创造出来当今最前端的双币循环交易平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1234, N'/', N'en-US', N'结合虚拟币的交易平台形式，创造出来当今最前端的双币循环交易平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1235, N'/', N'Ms', N'结合虚拟币的交易平台形式，创造出来当今最前端的双币循环交易平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1236, N'/', N'Vi', N'结合虚拟币的交易平台形式，创造出来当今最前端的双币循环交易平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1237, N'/', N'Th', N'结合虚拟币的交易平台形式，创造出来当今最前端的双币循环交易平台', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1238, N'/', N'zh-CN', N'根据世界银行发布的最新众筹报告，世界银行预测到2025年，世界众筹规模将达到3000亿美元，中国众筹规模将达到500亿美元，将成为全球最大的众筹市场。', N'根据世界银行发布的最新众筹报告，世界银行预测到2025年，世界众筹规模将达到3000亿美元，中国众筹规模将达到500亿美元，将成为全球最大的众筹市场。')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1239, N'/', N'zh-TW', N'根据世界银行发布的最新众筹报告，世界银行预测到2025年，世界众筹规模将达到3000亿美元，中国众筹规模将达到500亿美元，将成为全球最大的众筹市场。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1240, N'/', N'en-US', N'根据世界银行发布的最新众筹报告，世界银行预测到2025年，世界众筹规模将达到3000亿美元，中国众筹规模将达到500亿美元，将成为全球最大的众筹市场。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1241, N'/', N'Ms', N'根据世界银行发布的最新众筹报告，世界银行预测到2025年，世界众筹规模将达到3000亿美元，中国众筹规模将达到500亿美元，将成为全球最大的众筹市场。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1242, N'/', N'Vi', N'根据世界银行发布的最新众筹报告，世界银行预测到2025年，世界众筹规模将达到3000亿美元，中国众筹规模将达到500亿美元，将成为全球最大的众筹市场。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1243, N'/', N'Th', N'根据世界银行发布的最新众筹报告，世界银行预测到2025年，世界众筹规模将达到3000亿美元，中国众筹规模将达到500亿美元，将成为全球最大的众筹市场。', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1244, N'/', N'zh-CN', N'Double Star里有两种币，X币和H币。根据市场行情和价格走势资金在双币间循环流通，一笔资金双向投资双层收益，从而收益最大化', N'Double Star里有两种币，X币和H币。根据市场行情和价格走势资金在双币间循环流通，一笔资金双向投资双层收益，从而收益最大化')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1245, N'/', N'zh-TW', N'Double Star里有两种币，X币和H币。根据市场行情和价格走势资金在双币间循环流通，一笔资金双向投资双层收益，从而收益最大化', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1246, N'/', N'en-US', N'Double Star里有两种币，X币和H币。根据市场行情和价格走势资金在双币间循环流通，一笔资金双向投资双层收益，从而收益最大化', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1247, N'/', N'Ms', N'Double Star里有两种币，X币和H币。根据市场行情和价格走势资金在双币间循环流通，一笔资金双向投资双层收益，从而收益最大化', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1248, N'/', N'Vi', N'Double Star里有两种币，X币和H币。根据市场行情和价格走势资金在双币间循环流通，一笔资金双向投资双层收益，从而收益最大化', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1249, N'/', N'Th', N'Double Star里有两种币，X币和H币。根据市场行情和价格走势资金在双币间循环流通，一笔资金双向投资双层收益，从而收益最大化', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1250, N'/', N'zh-CN', N'通往', N'通往')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1251, N'/', N'zh-TW', N'通往', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1252, N'/', N'en-US', N'通往', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1253, N'/', N'Ms', N'通往', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1254, N'/', N'Vi', N'通往', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1255, N'/', N'Th', N'通往', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1256, N'/', N'zh-CN', N'财富成功', N'财富成功')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1257, N'/', N'zh-TW', N'财富成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1258, N'/', N'en-US', N'财富成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1259, N'/', N'Ms', N'财富成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1260, N'/', N'Vi', N'财富成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1261, N'/', N'Th', N'财富成功', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1262, N'/', N'zh-CN', N'之路', N'之路')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1263, N'/', N'zh-TW', N'之路', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1264, N'/', N'en-US', N'之路', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1265, N'/', N'Ms', N'之路', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1266, N'/', N'Vi', N'之路', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1267, N'/', N'Th', N'之路', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1268, N'/', N'zh-CN', N'现在登录', N'现在登录')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1269, N'/', N'zh-TW', N'现在登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1270, N'/', N'en-US', N'现在登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1271, N'/', N'Ms', N'现在登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1272, N'/', N'Vi', N'现在登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1273, N'/', N'Th', N'现在登录', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1274, N'/', N'zh-CN', N'立即注册', N'立即注册')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1275, N'/', N'zh-TW', N'立即注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1276, N'/', N'en-US', N'立即注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1277, N'/', N'Ms', N'立即注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1278, N'/', N'Vi', N'立即注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1279, N'/', N'Th', N'立即注册', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1280, N'/', N'zh-CN', N'双子星网站', N'双子星网站')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1281, N'/', N'zh-TW', N'双子星网站', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1282, N'/', N'en-US', N'双子星网站', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1283, N'/', N'Ms', N'双子星网站', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1284, N'/', N'Vi', N'双子星网站', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1285, N'/', N'Th', N'双子星网站', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1286, N'/UserCenter/Home/Index', N'zh-CN', N'配对时间', N'配对时间')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1287, N'/UserCenter/Home/Index', N'zh-TW', N'配对时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1288, N'/UserCenter/Home/Index', N'en-US', N'配对时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1289, N'/UserCenter/Home/Index', N'Ms', N'配对时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1290, N'/UserCenter/Home/Index', N'Vi', N'配对时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1291, N'/UserCenter/Home/Index', N'Th', N'配对时间', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1292, N'/UserCenter/Home/Index', N'zh-CN', N'留言板', N'留言板')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1293, N'/UserCenter/Home/Index', N'zh-TW', N'留言板', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1294, N'/UserCenter/Home/Index', N'en-US', N'留言板', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1295, N'/UserCenter/Home/Index', N'Ms', N'留言板', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1296, N'/UserCenter/Home/Index', N'Vi', N'留言板', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1297, N'/UserCenter/Home/Index', N'Th', N'留言板', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1298, N'/UserCenter/Home/Index', N'zh-CN', N'详细信息', N'详细信息')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1299, N'/UserCenter/Home/Index', N'zh-TW', N'详细信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1300, N'/UserCenter/Home/Index', N'en-US', N'详细信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1301, N'/UserCenter/Home/Index', N'Ms', N'详细信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1302, N'/UserCenter/Home/Index', N'Vi', N'详细信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1303, N'/UserCenter/Home/Index', N'Th', N'详细信息', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1304, N'/UserCenter/Home/Index', N'zh-CN', N'详细资料', N'详细资料')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1305, N'/UserCenter/Home/Index', N'zh-TW', N'详细资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1306, N'/UserCenter/Home/Index', N'en-US', N'详细资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1307, N'/UserCenter/Home/Index', N'Ms', N'详细资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1308, N'/UserCenter/Home/Index', N'Vi', N'详细资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1309, N'/UserCenter/Home/Index', N'Th', N'详细资料', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1310, N'/UserCenter/Home/Index', N'zh-CN', N'正在拼命处理中,请稍候...', N'正在拼命处理中,请稍候...')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1311, N'/UserCenter/Home/Index', N'zh-TW', N'正在拼命处理中,请稍候...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1312, N'/UserCenter/Home/Index', N'en-US', N'正在拼命处理中,请稍候...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1313, N'/UserCenter/Home/Index', N'Ms', N'正在拼命处理中,请稍候...', N'')
GO
print 'Processed 1300 total records'
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1314, N'/UserCenter/Home/Index', N'Vi', N'正在拼命处理中,请稍候...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1315, N'/UserCenter/Home/Index', N'Th', N'正在拼命处理中,请稍候...', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1316, N'/UserCenter/Home/_SubmitAcceptHelp', N'zh-CN', N'领导钱包', N'领导钱包')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1317, N'/UserCenter/Home/_SubmitAcceptHelp', N'zh-TW', N'领导钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1318, N'/UserCenter/Home/_SubmitAcceptHelp', N'en-US', N'领导钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1319, N'/UserCenter/Home/_SubmitAcceptHelp', N'Ms', N'领导钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1320, N'/UserCenter/Home/_SubmitAcceptHelp', N'Vi', N'领导钱包', N'')
INSERT [dbo].[Language] ([ID], [Location], [LanguageName], [Name], [Value]) VALUES (1321, N'/UserCenter/Home/_SubmitAcceptHelp', N'Th', N'领导钱包', N'')
SET IDENTITY_INSERT [dbo].[Language] OFF
/****** Object:  StoredProcedure [dbo].[p_BackupDB]    Script Date: 12/27/2018 22:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[p_BackupDB]
        @DBNAME SYSNAME='',       --要备份的数据库名称,不指定则备份当前数据库
        @BKPATH NVARCHAR(260)='', --备份文件的存放目录,不指定则使用SQL默认的备份目录
        @BKFNAME NVARCHAR(260)='',--备份文件名,文件名中可以用\DBNAME\代表数据库名,\DATE\代表日期,\TIME\代表时间
        @BKTYPE NVARCHAR(10)='DB',--备份类型:'DB'备份数据库,'DF' 差异备份,'LOG' 日志备份
        @APPENDFILE BIT=1         --追加/覆盖备份文件
    AS
    BEGIN

 
        DECLARE @SQL VARCHAR(8000)
 
        IF ISNULL(@DBNAME,'')=''  SET @DBNAME=DB_NAME()--当前数据库
        IF ISNULL(@BKPATH,'')=''  SET @BKPATH=dbo.f_GetDBPath(NULL)
        IF ISNULL(@BKFNAME,'')='' SET @BKFNAME='\DBNAME\_\DATE\_\TIME\.BAK'
 
        SET @BKFNAME=REPLACE(REPLACE(REPLACE(@BKFNAME,'\DBNAME\',@DBNAME)
        ,'\DATE\',CONVERT(VARCHAR,GETDATE(),112))
        ,'\TIME\',REPLACE(CONVERT(VARCHAR,GETDATE(),108),':',''))
 
        SET @SQL='BACKUP '+CASE @BKTYPE WHEN 'LOG' THEN 'LOG ' ELSE 'DATABASE ' END
        +'['+@DBNAME+']'
        +' TO DISK='''+@BKPATH+@BKFNAME
        +''' WITH '+CASE @BKTYPE WHEN 'DF' THEN 'DIFFERENTIAL,' ELSE '' END
        +CASE @APPENDFILE WHEN 1 THEN 'NOINIT' ELSE 'INIT' END
 
        PRINT @SQL
        EXEC(@SQL)
 
        --IF @@ERROR=0
        --BEGIN
        --   PRINT '备份日志'
        --   INSERT INTO dbo.DataBackup(SysUserName,BackFileName,UploadName,CreateTime) VALUES
        --   (@DBNAME,@BKFNAME,@BKPATH+@BKFNAME,GETDATE())
        --END
 
    END
GO
/****** Object:  StoredProcedure [dbo].[cccccccccc]    Script Date: 12/27/2018 22:49:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[cccccccccc]
AS
BEGIN
SELECT     表说明 = isnull(f.value, '')
FROM sysobjects d
        inner join sys.extended_properties f on d.id = f.major_id and f.minor_id = 0
WHERE     (d.name = 'Transfer' and d.xtype = 'U' and d.name <> 'dtproperties')
END
GO
/****** Object:  Table [dbo].[BonusDetail]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BonusDetail](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FromUID] [int] NULL,
	[FromUserName] [nvarchar](50) NULL,
	[BonusID] [int] NOT NULL,
	[BonusName] [nvarchar](50) NOT NULL,
	[BonusMoney] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[IsBalance] [bit] NOT NULL,
	[BalanceTime] [datetime] NULL,
	[CreateTime] [datetime] NOT NULL,
	[Period] [int] NULL,
	[SupplyNo] [nvarchar](50) NULL,
	[IsEffective] [bit] NULL,
	[EffectiveTime] [datetime] NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate] [datetime] NULL,
	[ReserveBoolean] [bit] NULL,
	[ReserveDecamal] [decimal](18, 2) NULL,
 CONSTRAINT [PK_BonusDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金来自用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'FromUID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金来自用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'FromUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'BonusID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'BonusName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'BonusMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否结算' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'IsBalance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'BalanceTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'结算期数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'Period'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'提供帮助单号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'SupplyNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否解冻' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'IsEffective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'解冻时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'EffectiveTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'ReserveStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'ReserveStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'ReserveInt1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'ReserveInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'ReserveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'ReserveBoolean'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail', @level2type=N'COLUMN',@level2name=N'ReserveDecamal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖金明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'BonusDetail'
GO
SET IDENTITY_INSERT [dbo].[BonusDetail] ON
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (1, 1, N'1', NULL, NULL, 1102, N'利息', CAST(50.00 AS Decimal(18, 2)), N'来算订单【S0010001】【2018-12-25】的利息', 0, CAST(0x0000A9C100BD6A24 AS DateTime), CAST(0x0000A9C100BD6A24 AS DateTime), 14, N'S0010001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (2, 3, N'aaa001', 3, N'aaa001', 2001, N'确认收款获得', CAST(200.00 AS Decimal(18, 2)), N'确认收款时获得，来自匹配单：R0287427', 0, CAST(0x0000A9C1017E0EB1 AS DateTime), CAST(0x0000A9C1017E0EB1 AS DateTime), 0, N'S0010005', 0, CAST(0x0000A9C1017E0E9E AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (3, 4, N'bbb001', 4, N'bbb001', 2001, N'确认收款获得', CAST(200.00 AS Decimal(18, 2)), N'确认收款时获得，来自匹配单：R1547277', 0, CAST(0x0000A9C1017FA2FD AS DateTime), CAST(0x0000A9C1017FA2FD AS DateTime), 0, N'S0010003', 0, CAST(0x0000A9C1017FA2FD AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (4, 1, N'1', NULL, NULL, 1102, N'利息', CAST(50.00 AS Decimal(18, 2)), N'来算订单【S0010001】【2018/12/25】的利息', 0, CAST(0x0000A9C1017FC62A AS DateTime), CAST(0x0000A9C1017FC62A AS DateTime), 15, N'S0010001', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (5, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C1017FC63C AS DateTime), CAST(0x0000A9C1017FC63C AS DateTime), 1, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (6, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1017FC659 AS DateTime), CAST(0x0000A9C1017FC659 AS DateTime), 1, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (7, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C1017FF52F AS DateTime), CAST(0x0000A9C1017FF52F AS DateTime), 2, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (8, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1017FF547 AS DateTime), CAST(0x0000A9C1017FF547 AS DateTime), 2, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (9, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C1018012A5 AS DateTime), CAST(0x0000A9C1018012A5 AS DateTime), 3, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (10, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1018012BD AS DateTime), CAST(0x0000A9C1018012BD AS DateTime), 3, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (11, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C10180208B AS DateTime), CAST(0x0000A9C10180208B AS DateTime), 4, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (12, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1018020A7 AS DateTime), CAST(0x0000A9C1018020A7 AS DateTime), 4, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (13, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C1018027C7 AS DateTime), CAST(0x0000A9C1018027C7 AS DateTime), 5, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (14, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1018027E3 AS DateTime), CAST(0x0000A9C1018027E3 AS DateTime), 5, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (15, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C101811629 AS DateTime), CAST(0x0000A9C10181162E AS DateTime), 6, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (16, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1018116B1 AS DateTime), CAST(0x0000A9C1018116B1 AS DateTime), 6, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (17, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C10181539D AS DateTime), CAST(0x0000A9C10181539D AS DateTime), 7, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (18, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1018153B4 AS DateTime), CAST(0x0000A9C1018153B4 AS DateTime), 7, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (19, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C1018179A9 AS DateTime), CAST(0x0000A9C1018179A9 AS DateTime), 8, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (20, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C1018179B7 AS DateTime), CAST(0x0000A9C1018179B7 AS DateTime), 8, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (21, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C10183D906 AS DateTime), CAST(0x0000A9C10183D906 AS DateTime), 9, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (22, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C10183D99C AS DateTime), CAST(0x0000A9C10183D99C AS DateTime), 9, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (23, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C101840420 AS DateTime), CAST(0x0000A9C101840420 AS DateTime), 10, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (24, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C10184043C AS DateTime), CAST(0x0000A9C10184043C AS DateTime), 10, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (25, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C101841FE2 AS DateTime), CAST(0x0000A9C101841FE2 AS DateTime), 11, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (26, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C101841FFA AS DateTime), CAST(0x0000A9C101841FFA AS DateTime), 11, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (27, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C10184A61E AS DateTime), CAST(0x0000A9C10184A61E AS DateTime), 12, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (28, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C10184A631 AS DateTime), CAST(0x0000A9C10184A631 AS DateTime), 12, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (29, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C10184B763 AS DateTime), CAST(0x0000A9C10184B763 AS DateTime), 13, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (30, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C10184B77F AS DateTime), CAST(0x0000A9C10184B77F AS DateTime), 13, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (31, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C101857F1E AS DateTime), CAST(0x0000A9C101857F1E AS DateTime), 14, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (32, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C101857F35 AS DateTime), CAST(0x0000A9C101857F35 AS DateTime), 14, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (33, 4, N'bbb001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010003】【2018/12/25】的利息', 0, CAST(0x0000A9C10185907A AS DateTime), CAST(0x0000A9C10185907A AS DateTime), 15, N'S0010003', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[BonusDetail] ([ID], [UID], [UserName], [FromUID], [FromUserName], [BonusID], [BonusName], [BonusMoney], [Description], [IsBalance], [BalanceTime], [CreateTime], [Period], [SupplyNo], [IsEffective], [EffectiveTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate], [ReserveBoolean], [ReserveDecamal]) VALUES (34, 3, N'aaa001', NULL, NULL, 1102, N'利息', CAST(10.00 AS Decimal(18, 2)), N'来算订单【S0010005】【2018/12/25】的利息', 0, CAST(0x0000A9C10185908C AS DateTime), CAST(0x0000A9C10185908C AS DateTime), 15, N'S0010005', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[BonusDetail] OFF
/****** Object:  Table [dbo].[AdminUser]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminUser](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AdminName] [nvarchar](50) NOT NULL,
	[RealName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NOT NULL,
	[Password2] [nvarchar](50) NULL,
	[LastLoginIP] [nvarchar](50) NULL,
	[LastLoginTime] [datetime] NULL,
	[RoleID] [int] NOT NULL,
	[IsPassed] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后登录IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminUser', @level2type=N'COLUMN',@level2name=N'LastLoginIP'
GO
SET IDENTITY_INSERT [dbo].[AdminUser] ON
INSERT [dbo].[AdminUser] ([ID], [AdminName], [RealName], [Phone], [Password], [Password2], [LastLoginIP], [LastLoginTime], [RoleID], [IsPassed], [CreateTime]) VALUES (1, N'admin', N'鲁振东', N'13902887082', N'6456C7FAC445F3C1C3E7F4405159D80E', N'6456C7FAC445F3C1C3E7F4405159D80E', N'58.211.252.194', CAST(0x0000A9C300EC6A9D AS DateTime), 0, 1, CAST(0x0000A41700000000 AS DateTime))
INSERT [dbo].[AdminUser] ([ID], [AdminName], [RealName], [Phone], [Password], [Password2], [LastLoginIP], [LastLoginTime], [RoleID], [IsPassed], [CreateTime]) VALUES (2, N'baobaoyouli', NULL, NULL, N'6456C7FAC445F3C1C3E7F4405159D80E', N'111111', N'::1', CAST(0x0000A66A00FF2C07 AS DateTime), 1, 1, CAST(0x0000A66A00FEC766 AS DateTime))
INSERT [dbo].[AdminUser] ([ID], [AdminName], [RealName], [Phone], [Password], [Password2], [LastLoginIP], [LastLoginTime], [RoleID], [IsPassed], [CreateTime]) VALUES (3, N'赵本山', N'山本赵', N'987654321', N'E8C0420AB9586B19E74C9C146CABF3ED', N'3221', NULL, NULL, 1, 1, CAST(0x0000A83900F5832E AS DateTime))
INSERT [dbo].[AdminUser] ([ID], [AdminName], [RealName], [Phone], [Password], [Password2], [LastLoginIP], [LastLoginTime], [RoleID], [IsPassed], [CreateTime]) VALUES (4, N'888999', N'赵本山', N'987654321', N'113618581792A406096C42D259A49A7A', N'3221', NULL, NULL, 1, 1, CAST(0x0000A83900F66A4C AS DateTime))
SET IDENTITY_INSERT [dbo].[AdminUser] OFF
/****** Object:  Table [dbo].[AdminRole]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminRole](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[AuthorityIds] [nvarchar](max) NULL,
 CONSTRAINT [PK_AdminRole] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'角色名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRole', @level2type=N'COLUMN',@level2name=N'RoleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRole', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员角色表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminRole'
GO
SET IDENTITY_INSERT [dbo].[AdminRole] ON
INSERT [dbo].[AdminRole] ([ID], [RoleName], [Remark], [AuthorityIds]) VALUES (1, N'匹配员', N'匹配员', NULL)
SET IDENTITY_INSERT [dbo].[AdminRole] OFF
/****** Object:  Table [dbo].[AdminAuthority]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminAuthority](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[ControllerName] [nvarchar](50) NOT NULL,
	[ActionName] [nvarchar](50) NOT NULL,
	[Remark] [nvarchar](250) NULL,
	[LastUpdateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AdminAuthority] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminAuthority', @level2type=N'COLUMN',@level2name=N'Name'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'控制器名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminAuthority', @level2type=N'COLUMN',@level2name=N'ControllerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminAuthority', @level2type=N'COLUMN',@level2name=N'ActionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminAuthority', @level2type=N'COLUMN',@level2name=N'Remark'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员权限表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AdminAuthority'
GO
SET IDENTITY_INSERT [dbo].[AdminAuthority] ON
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1722, N'配置角色权限', N'adminuser', N'authority', N'', CAST(0x0000A60F009CAFFF AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1723, N'管理员管理', N'adminuser', N'index', N'', CAST(0x0000A60F009F5174 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1724, N'角色管理', N'adminuser', N'role', N'', CAST(0x0000A60F009F564E AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1725, N'初始参数设置', N'sysparam', N'index', N'', CAST(0x0000A60F009F783F AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1726, N'未使用活码列表', N'pincode', N'unuse', N'', CAST(0x0000A610011619D9 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1727, N'被冻结的会员', N'sysparam', N'language', N'', CAST(0x0000A61001172A23 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1728, N'修改运行设置', N'sysparam', N'syssetting', N'', CAST(0x0000A610011F7D60 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1729, N'数据库备份与恢复', N'dbmanage', N'index', N'', CAST(0x0000A610012D6D78 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1730, N'写邮件', N'mail', N'write', N'', CAST(0x0000A610012D71CD AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1731, N'已使用PIN码列表', N'pincode', N'used', N'', CAST(0x0000A610012E394B AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1732, N'系统设置', N'develop', N'setting', N'', CAST(0x0000A610012E5D5E AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1733, N'主题', N'develop', N'theme', N'', CAST(0x0000A610012F117F AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1734, N'匹配管理', N'market', N'pplist', N'', CAST(0x0000A610012F56CF AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1735, N'派送PIN码', N'pincode', N'delivery', N'', CAST(0x0000A610012F5F8C AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1736, N'会员推荐图谱', N'user', N'treeview', N'', CAST(0x0000A610012FC840 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1737, N'赠送电子币', N'finance', N'delivery', N'', CAST(0x0000A610013050A7 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1738, N'修改管理员', N'adminuser', N'modify', N'', CAST(0x0000A61100A6F2A2 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1739, N'删除管理员', N'adminuser', N'delete', N'', CAST(0x0000A61100AD6317 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1740, N'编辑会员资料', N'user', N'modify', N'', CAST(0x0000A61300A86B0F AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1741, N'发布公告', N'notice', N'modify', N'', CAST(0x0000A61400C2219D AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1742, N'已匹配数据', N'market', N'matchdlist', N'', CAST(0x0000A615012778CA AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1743, N'初始参数设置', N'sysparam', N'sysparam', N'', CAST(0x0000A6150132DBAF AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1744, N'被冻结的会员', N'user', N'lock', N'', CAST(0x0000A6150164BA89 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1745, N'手动分红', N'settlement', N'manualbalance', N'', CAST(0x0000A61600A84395 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1746, N'清空数据库', N'dbmanage', N'dbclear', N'', CAST(0x0000A616010196AC AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1747, N'备份数据库', N'dbmanage', N'backup', N'', CAST(0x0000A61601035FFE AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1748, N'恢复数据库', N'dbmanage', N'restore', N'', CAST(0x0000A61601049D0E AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1749, N'修改密码', N'home', N'changepassword', N'', CAST(0x0000A616011C021C AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1750, N'全额匹配管理', N'market', N'pplist2', N'', CAST(0x0000A61800A3A8A7 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1751, N'收件箱', N'mail', N'inbox', N'', CAST(0x0000A61800A7B821 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1752, N'发件箱', N'mail', N'sent', N'', CAST(0x0000A61800A7B8F1 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1753, N'退出系统', N'home', N'logout', N'', CAST(0x0000A62D011D4B62 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1754, N'公告列表', N'notice', N'index', N'', CAST(0x0000A62F01882E5E AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1755, N'查看邮件：111', N'mail', N'submailcontent', N'', CAST(0x0000A63E00F38955 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1756, N'指定一个经理', N'agent', N'delivery', N'', CAST(0x0000A64100B2B827 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1757, N'商务中心列表', N'agent', N'index', N'', CAST(0x0000A64100B2BDCD AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1758, N'待审核的商务中心', N'agent', N'unpassed', N'', CAST(0x0000A64900A6AB8B AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1759, N'发布商品', N'shop', N'modify', N'', CAST(0x0000A64900B7C7A3 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1760, N'添加店铺', N'shop', N'modifyshop', N'', CAST(0x0000A64900B7F71E AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1761, N'商品管理', N'shop', N'product', N'', CAST(0x0000A64900B81AB6 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1762, N'店铺列表', N'shop', N'shoplist', N'', CAST(0x0000A64900B82E0B AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1763, N'店铺销售统计', N'shop', N'shopstatistics', N'', CAST(0x0000A64900B8316C AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1764, N'下架商品管理', N'shop', N'offsales', N'', CAST(0x0000A64900BD4AD8 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1765, N'订单管理', N'shop', N'order', N'', CAST(0x0000A64900C216C9 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1766, N'订单发货成功！', N'shop', N'dodeliver', N'', CAST(0x0000A64900C23DF2 AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1767, N'隐藏成功', N'market', N'hide', N'', CAST(0x0000A66A00A1F56F AS DateTime))
INSERT [dbo].[AdminAuthority] ([ID], [Name], [ControllerName], [ActionName], [Remark], [LastUpdateTime]) VALUES (1768, N'删除会员“4125”', N'user', N'delete', N'', CAST(0x0000A8410104B535 AS DateTime))
SET IDENTITY_INSERT [dbo].[AdminAuthority] OFF
/****** Object:  Table [dbo].[ActLog]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Platform] [nvarchar](50) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[Source] [nvarchar](250) NULL,
	[Location] [nvarchar](250) NULL,
	[ActContent] [nvarchar](max) NULL,
	[PacketFile] [nvarchar](max) NULL,
	[IP] [nvarchar](50) NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_ActLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平台(用户,管理员)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'Platform'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员ID/管理员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名/管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来路' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'Source'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'行为内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'ActContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户/管理员行为日志' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'ActLog'
GO
SET IDENTITY_INSERT [dbo].[ActLog] ON
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (1, N'后台', 1, N'admin', N'', N'dbmanage/dbclear', N'清空数据库', N'', N'::1', CAST(0x0000A9C1009BE4D1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (2, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'::1', CAST(0x0000A9C1009BEC80 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (3, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'::1', CAST(0x0000A9C1009BFB70 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (4, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'::1', CAST(0x0000A9C1009C1258 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (5, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'::1', CAST(0x0000A9C1009C36A9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (6, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'::1', CAST(0x0000A9C1009C8FA2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (7, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'::1', CAST(0x0000A9C1009CEDE4 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (8, N'后台', 1, N'admin', N'', N'http://localhost:4160/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'::1', CAST(0x0000A9C100A4BA99 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (9, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A4DD11 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (10, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A4F8A4 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (11, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A54EF1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (12, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A660D7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (13, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A71780 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (14, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A7226C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (15, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A7486B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (16, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100A8E555 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (17, N'后台', 1, N'admin', N'', N'http://localhost:4160/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'::1', CAST(0x0000A9C100AE29F2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (18, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100AE482C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (19, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100AE4BC5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (20, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100AE9767 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (21, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'::1', CAST(0x0000A9C100B60F5C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (22, N'后台', 1, N'admin', N'', N'http://localhost:4160/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'::1', CAST(0x0000A9C100B9BA7E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (23, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100BA17E8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (24, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100BA1C68 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (25, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100BA2F1D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (26, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100BA3248 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (27, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100BA6E4B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (28, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100BA84EF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (29, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'::1', CAST(0x0000A9C100BC4DB8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (30, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'::1', CAST(0x0000A9C100BCBAE1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (31, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C100BD3F3F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (32, N'后台', 1, N'admin', N'', N'http://localhost:4160/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'::1', CAST(0x0000A9C100BD4F22 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (33, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'::1', CAST(0x0000A9C100BD57F7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (34, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'::1', CAST(0x0000A9C100BD6FC7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (35, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'::1', CAST(0x0000A9C100BEFC52 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (36, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'::1', CAST(0x0000A9C100BF13A8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (37, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'::1', CAST(0x0000A9C100BF1C0A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (38, N'后台', 1, N'admin', N'', N'http://localhost:4160/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'::1', CAST(0x0000A9C100C7EFB8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (39, N'后台', 1, N'admin', N'', N'http://117.18.4.19/adminCenter/Login', N'管理员“admin”登录成功！', NULL, N'180.139.203.68', CAST(0x0000A9C101031D04 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (40, N'后台', 1, N'admin', N'', N'agent/index', N'商务中心列表', N'', N'180.139.203.68', CAST(0x0000A9C101034F51 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (41, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C10105374A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (42, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C10105B10A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (43, N'后台', 1, N'admin', N'', N'sysparam/syssetting', N'修改运行设置', N'', N'180.139.203.68', CAST(0x0000A9C101062A1B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (44, N'后台', 1, N'admin', N'', N'sysparam/syssetting', N'修改运行设置', N'', N'180.139.203.68', CAST(0x0000A9C101064ACF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (45, N'后台', 1, N'admin', N'', N'home/logout', N'退出系统', N'', N'180.139.203.68', CAST(0x0000A9C101083DA9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (46, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'117.136.19.96', CAST(0x0000A9C10145BC29 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (47, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'117.136.19.96', CAST(0x0000A9C10146FF16 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (48, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'182.97.86.58', CAST(0x0000A9C1014930B0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (49, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'182.97.86.58', CAST(0x0000A9C10149EF52 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (50, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'182.97.86.58', CAST(0x0000A9C1014A840A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (51, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'182.97.86.58', CAST(0x0000A9C1014AC982 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (52, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'182.97.86.58', CAST(0x0000A9C1014C6770 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (53, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'117.181.78.227', CAST(0x0000A9C1015B7AA9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (54, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'117.136.66.111', CAST(0x0000A9C1015F965D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (55, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C101662E85 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (56, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C101667D83 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (57, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C101668550 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (58, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C1016685E6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (59, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10166A727 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (60, N'后台', 1, N'admin', N'', N'develop/setting', N'系统设置', N'', N'218.90.141.10', CAST(0x0000A9C101672944 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (61, N'后台', 1, N'admin', N'', N'develop/setting', N'系统设置', N'', N'218.90.141.10', CAST(0x0000A9C101673550 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (62, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101678738 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (63, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10167AEE5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (64, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10167C606 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (65, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10167D6A6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (66, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C10168288D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (67, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10168377E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (68, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101683C70 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (69, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101687778 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (70, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101689F2F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (71, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10168A5E3 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (72, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10168C663 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (73, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10168DD63 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (74, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10168FBA7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (75, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10168FF39 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (76, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10169091D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (77, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1016918E1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (78, N'后台', 1, N'admin', N'', N'develop/setting', N'系统设置', N'', N'218.90.141.10', CAST(0x0000A9C1016945A6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (79, N'后台', 1, N'admin', N'', N'develop/theme', N'会员平台主题', N'', N'218.90.141.10', CAST(0x0000A9C101695ED3 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (80, N'后台', 1, N'admin', N'', N'develop/theme', N'会员平台主题', N'', N'218.90.141.10', CAST(0x0000A9C101698762 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (81, N'后台', 1, N'admin', N'', N'develop/setting', N'系统设置', N'', N'218.90.141.10', CAST(0x0000A9C10169A3AC AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (82, N'后台', 1, N'admin', N'', N'user/modify', N'编辑会员资料', N'', N'218.90.141.10', CAST(0x0000A9C1016A7091 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (83, N'后台', 1, N'admin', N'', N'user/modify', N'编辑会员资料', N'', N'218.90.141.10', CAST(0x0000A9C1016A793A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (84, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C1016ABC93 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (85, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C1016BF14A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (86, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C1016C69FE AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (87, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C1016CC956 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (88, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C1016D8102 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (89, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C1016DE90D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (90, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C1016F3D1D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (91, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1016F6D40 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (92, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C10170A5BD AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (93, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'218.90.141.10', CAST(0x0000A9C1017103BF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (94, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'218.90.141.10', CAST(0x0000A9C101710C97 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (95, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101737930 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (96, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101737D4A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (97, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017399B1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (98, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10173ABED AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (99, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10173BB41 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (100, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10173CF3B AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (101, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10173D960 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (102, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10173F035 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (103, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101740E2E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (104, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017411B2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (105, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101741503 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (106, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017417AB AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (107, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017419F9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (108, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101741D1B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (109, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10174241E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (110, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10174292C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (111, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101743075 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (112, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017438B7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (113, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101743A75 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (114, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101743E77 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (115, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C10174A5A5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (116, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10174BAA1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (117, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10174BCC6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (118, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10174C309 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (119, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10174E505 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (120, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101751AB0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (121, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101753610 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (122, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101757EE7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (123, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101759034 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (124, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10175957A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (125, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101759B27 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (126, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10175A3ED AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (127, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C10175B56E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (128, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C101764C54 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (129, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C1017698F5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (130, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101778591 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (131, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101778C32 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (132, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017792A8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (133, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017795C5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (134, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10177C4EB AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (135, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10177CECF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (136, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10177D21A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (137, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10177E397 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (138, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10177E6F1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (139, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10178343B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (140, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1017838C5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (141, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10178405F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (142, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C101789306 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (143, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C10178AA14 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (144, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C10178EDEF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (145, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C10178F49E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (146, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C101793AFC AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (147, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C10179703C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (148, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C1017979AE AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (149, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'218.90.141.10', CAST(0x0000A9C10179A18B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (150, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1017A677B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (151, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1017AA157 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (152, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1017AB07C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (153, N'会员', 3, N'aaa001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“aaa001”登录成功！', NULL, N'223.104.4.108', CAST(0x0000A9C1017CA9E0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (154, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C1017D6AE3 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (155, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C1017D8216 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (156, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C1017D95B2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (157, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'218.90.141.10', CAST(0x0000A9C1017DE821 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (158, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1017E8985 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (159, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1017E8BB7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (160, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1017E8E2B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (161, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'218.90.141.10', CAST(0x0000A9C1017EA3E7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (162, N'会员', 4, N'bbb001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“bbb001”登录成功！', NULL, N'223.104.4.108', CAST(0x0000A9C1017EFB8F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (163, N'会员', 5, N'ccc001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“ccc001”登录成功！', NULL, N'223.104.4.108', CAST(0x0000A9C1017F8A29 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (164, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C1017FC08F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (165, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C1017FF160 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (166, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101800CF8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (167, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101801B20 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (168, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C1018025A2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (169, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101802F69 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (170, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10180328B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (171, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10180399C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (172, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C10180E26A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (173, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C10180F9BA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (174, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'218.90.141.10', CAST(0x0000A9C1018101C8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (175, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101811222 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (176, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101814FAD AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (177, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C101817171 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (178, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10181762A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (179, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C1018185B6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (180, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10181F00A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (181, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C10181F0A0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (182, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'218.90.141.10', CAST(0x0000A9C10181F567 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (183, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10181F62C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (184, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C10183B344 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (185, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'218.90.141.10', CAST(0x0000A9C10183C4BC AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (186, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10183D37E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (187, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10183F806 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (188, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101841962 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (189, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C1018432B5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (190, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10184AED6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (191, N'后台', 1, N'admin', N'', N'http://117.18.4.19/adminCenter/Login', N'管理员“admin”登录成功！', NULL, N'180.139.203.68', CAST(0x0000A9C10184B5FA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (192, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C10184C015 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (193, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C10184C598 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (194, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C10184CF85 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (195, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C101850CB6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (196, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C10185416E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (197, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'218.90.141.10', CAST(0x0000A9C1018554F7 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (198, N'后台', 1, N'admin', N'', N'sysparam/syssetting', N'修改运行设置', N'', N'180.139.203.68', CAST(0x0000A9C1018570B5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (199, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101857C3E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (200, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101858CB9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (201, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101859B92 AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (202, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C10185EE64 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (203, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C101860791 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (204, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'218.90.141.10', CAST(0x0000A9C101862215 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (205, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C101862ED8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (206, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C1018656DF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (207, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'218.90.141.10', CAST(0x0000A9C101866FCA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (208, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'218.90.141.10', CAST(0x0000A9C1018672FA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (209, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'218.90.141.10', CAST(0x0000A9C1018674EB AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (210, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'218.90.141.10', CAST(0x0000A9C101868F44 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (211, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'180.139.203.68', CAST(0x0000A9C1018A34B8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (212, N'后台', 1, N'admin', N'', N'sysparam/syssetting', N'修改运行设置', N'', N'180.139.203.68', CAST(0x0000A9C1018A8F81 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (213, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'180.139.203.68', CAST(0x0000A9C2008336D1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (214, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C20083A17E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (215, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C20083AB33 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (216, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C20085D7B6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (217, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C20085DD9B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (218, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'180.139.203.68', CAST(0x0000A9C200860E13 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (219, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'180.139.203.68', CAST(0x0000A9C20086DD63 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (220, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'180.139.203.68', CAST(0x0000A9C20086EA18 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (221, N'会员', 3, N'aaa001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“aaa001”登录成功！', NULL, N'117.136.66.64', CAST(0x0000A9C200A7A6B9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (222, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'223.104.145.183', CAST(0x0000A9C200B77FA0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (223, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'223.104.145.183', CAST(0x0000A9C200B7AE85 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (224, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'223.104.145.183', CAST(0x0000A9C200B90EAB AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (225, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.211.252.194', CAST(0x0000A9C200CC9F68 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (226, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.211.252.194', CAST(0x0000A9C200CCEA30 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (227, N'会员', 3, N'aaa001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“aaa001”登录成功！', NULL, N'58.211.252.194', CAST(0x0000A9C200CD5FEC AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (228, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.211.252.194', CAST(0x0000A9C200D10DFC AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (229, N'后台', 1, N'admin', N'', N'notice/index', N'公告列表', N'', N'58.211.252.194', CAST(0x0000A9C200D23B85 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (230, N'后台', 1, N'admin', N'', N'adminuser/modify', N'修改管理员', N'', N'58.211.252.194', CAST(0x0000A9C200D24470 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (231, N'后台', 1, N'admin', N'', N'home/changepassword', N'修改密码', N'', N'58.211.252.194', CAST(0x0000A9C200D3BE5E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (232, N'后台', 1, N'admin', N'', N'dbmanage/index', N'数据库备份与恢复', N'', N'58.211.252.194', CAST(0x0000A9C200D44417 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (233, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.211.252.194', CAST(0x0000A9C200D4672C AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (234, N'后台', 1, N'admin', N'', N'home/logout', N'退出系统', N'', N'58.211.252.194', CAST(0x0000A9C200D4763E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (235, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.211.252.194', CAST(0x0000A9C200D4F00B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (236, N'后台', 1, N'admin', N'', N'notice/index', N'公告列表', N'', N'58.211.252.194', CAST(0x0000A9C200D507AF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (237, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'58.211.252.194', CAST(0x0000A9C200D50D99 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (238, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C200DDEE9D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (239, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'58.243.250.190', CAST(0x0000A9C200DE9FB2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (240, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200DF5EB6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (241, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C200DFA49A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (242, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'58.243.250.190', CAST(0x0000A9C200E167C1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (243, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C200E25734 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (244, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'58.243.250.190', CAST(0x0000A9C200E264CF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (245, N'后台', 1, N'admin', N'', N'user/treeview', N'会员推荐图谱', N'', N'58.243.250.190', CAST(0x0000A9C200E28193 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (246, N'后台', 1, N'admin', N'', N'user/treeview', N'会员推荐图谱', N'', N'58.243.250.190', CAST(0x0000A9C200E28A4A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (247, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'58.243.250.190', CAST(0x0000A9C200E29F46 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (248, N'后台', 1, N'admin', N'', N'user/modify', N'编辑会员资料', N'', N'58.243.250.190', CAST(0x0000A9C200E4BF0F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (249, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C200E4E8F4 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (250, N'后台', 1, N'admin', N'', N'develop/setting', N'系统设置', N'', N'58.243.250.190', CAST(0x0000A9C200E52B83 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (251, N'后台', 1, N'admin', N'', N'mail/write', N'写邮件', N'', N'58.243.250.190', CAST(0x0000A9C200E544E9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (252, N'后台', 1, N'admin', N'', N'mail/write', N'写邮件', N'', N'58.243.250.190', CAST(0x0000A9C200E54AC5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (253, N'后台', 1, N'admin', N'', N'mail/write', N'写邮件', N'', N'58.243.250.190', CAST(0x0000A9C200E54BA1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (254, N'后台', 1, N'admin', N'', N'home/changepassword', N'修改密码', N'', N'58.243.250.190', CAST(0x0000A9C200E56F1E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (255, N'后台', 1, N'admin', N'', N'home/changepassword', N'修改密码', N'', N'58.243.250.190', CAST(0x0000A9C200E56FD4 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (256, N'后台', 1, N'admin', N'', N'home/changepassword', N'修改密码', N'', N'58.243.250.190', CAST(0x0000A9C200E570E0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (257, N'后台', 1, N'admin', N'', N'home/changepassword', N'修改密码', N'', N'58.243.250.190', CAST(0x0000A9C200E580EF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (258, N'后台', 1, N'admin', N'', N'home/logout', N'退出系统', N'', N'58.243.250.190', CAST(0x0000A9C200E58A24 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (259, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C200E5A53E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (260, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C200E62D53 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (261, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200E6521D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (262, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200E6851B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (263, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200E69AB2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (264, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200E6E3F9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (265, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'58.243.250.190', CAST(0x0000A9C200E78B88 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (266, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200E7CE21 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (267, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C200E7E5EA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (268, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'58.243.250.190', CAST(0x0000A9C200E8079B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (269, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C200E94225 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (270, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200E973EE AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (271, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200E99F95 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (272, N'会员', 3, N'aaa001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“aaa001”登录成功！', NULL, N'58.211.252.194', CAST(0x0000A9C200EA7816 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (273, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200EB9ECB AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (274, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C200EC2EC1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (275, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'58.243.250.190', CAST(0x0000A9C200ECE509 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (276, N'后台', 1, N'admin', N'', N'dbmanage/index', N'数据库备份与恢复', N'', N'58.243.250.190', CAST(0x0000A9C200ED0DFA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (277, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200ED6B37 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (278, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C200EDD7E8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (279, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C200EE5E3B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (280, N'后台', 1, N'admin', N'', N'market/pplist2', N'全额匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C200EE7AA1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (281, N'会员', 7, N'abc123', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“abc123”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C200EF2451 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (282, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C200F0D9F4 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (283, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C200F295BF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (284, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200F343DD AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (285, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200F3452A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (286, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C200F35055 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (287, N'后台', 1, N'admin', N'', N'market/pplist2', N'全额匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C200F35754 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (288, N'后台', 1, N'admin', N'', N'notice/index', N'公告列表', N'', N'58.243.250.190', CAST(0x0000A9C200F38B88 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (289, N'后台', 1, N'admin', N'', N'develop/theme', N'会员平台主题', N'', N'58.243.250.190', CAST(0x0000A9C200F3A005 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (290, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C200F3D2FF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (291, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C200F3E778 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (292, N'后台', 1, N'admin', N'', N'develop/setting', N'系统设置', N'', N'58.243.250.190', CAST(0x0000A9C200F45953 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (293, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C200F61BDF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (294, N'后台', 1, N'admin', N'', N'user/modify', N'新增初始会员', N'', N'58.243.250.190', CAST(0x0000A9C200F665AE AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (295, N'后台', 1, N'admin', N'', N'notice/modify', N'发布公告', N'', N'58.243.250.190', CAST(0x0000A9C200F7A494 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (296, N'后台', 1, N'admin', N'', N'notice/index', N'公告列表', N'', N'58.243.250.190', CAST(0x0000A9C200F7B11F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (297, N'后台', 1, N'admin', N'', N'develop/theme', N'会员平台主题', N'', N'58.243.250.190', CAST(0x0000A9C200F8048B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (298, N'后台', 1, N'admin', N'', N'develop/theme', N'会员平台主题', N'', N'58.243.250.190', CAST(0x0000A9C200F8A65F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (299, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C200FB3183 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (300, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C200FB44C2 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (301, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C200FC0EED AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (302, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C200FD7F63 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (303, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C200FF5B8E AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (304, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C201033F06 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (305, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C201034B70 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (306, N'后台', 1, N'admin', N'', N'market/pplist2', N'全额匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C201034F86 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (307, N'后台', 1, N'admin', N'', N'market/pplist2', N'全额匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C201038394 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (308, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'58.243.250.190', CAST(0x0000A9C20103D8DF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (309, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'58.243.250.190', CAST(0x0000A9C201056928 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (310, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C20105F4AA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (311, N'后台', 1, N'admin', N'', N'finance/delivery', N'赠送电子币', N'', N'58.243.250.190', CAST(0x0000A9C201068EB6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (312, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C201071C45 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (313, N'后台', 1, N'admin', N'', N'market/pplist2', N'全额匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C201073214 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (314, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C201073E12 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (315, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C201076416 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (316, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C201097A9B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (317, N'后台', 1, N'admin', N'', N'market/pplist2', N'全额匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C2010980D0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (318, N'后台', 1, N'admin', N'', N'market/pplist2', N'全额匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C20109CE40 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (319, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C2010B1416 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (320, N'后台', 1, N'admin', N'', N'user/lock', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C2010B1E73 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (321, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C2010D91C5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (322, N'后台', 1, N'admin', N'', N'settlement/manualbalance', N'手动分红', N'', N'58.243.250.190', CAST(0x0000A9C2010DC693 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (323, N'后台', 1, N'admin', N'', N'adminuser/modify', N'修改管理员', N'', N'58.243.250.190', CAST(0x0000A9C2010DED69 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (324, N'后台', 1, N'admin', N'', N'adminuser/index', N'管理员管理', N'', N'58.243.250.190', CAST(0x0000A9C2010E048A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (325, N'后台', 1, N'admin', N'', N'adminuser/modify', N'修改管理员', N'', N'58.243.250.190', CAST(0x0000A9C2010E27C5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (326, N'后台', 1, N'admin', N'', N'notice/modify', N'发布公告', N'', N'58.243.250.190', CAST(0x0000A9C2010E5692 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (327, N'后台', 1, N'admin', N'', N'notice/index', N'公告列表', N'', N'58.243.250.190', CAST(0x0000A9C2010E6C53 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (328, N'后台', 1, N'admin', N'', N'adminuser/modify', N'修改管理员', N'', N'58.243.250.190', CAST(0x0000A9C201124243 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (329, N'后台', 1, N'admin', N'', N'dbmanage/index', N'数据库备份与恢复', N'', N'58.243.250.190', CAST(0x0000A9C201124B25 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (330, N'后台', 1, N'admin', N'', N'home/logout', N'退出系统', N'', N'58.243.250.190', CAST(0x0000A9C2011258C9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (331, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.243.250.190', CAST(0x0000A9C201127339 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (332, N'后台', 1, N'admin', N'', N'mail/write', N'写邮件', N'', N'58.243.250.190', CAST(0x0000A9C20112BF6A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (333, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'58.243.250.190', CAST(0x0000A9C20112D0D4 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (334, N'后台', 1, N'admin', N'', N'sysparam/language', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C201140E34 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (335, N'后台', 1, N'admin', N'', N'sysparam/language', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C2011416A1 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (336, N'后台', 1, N'admin', N'', N'sysparam/language', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C201143C17 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (337, N'后台', 1, N'admin', N'', N'sysparam/language', N'被冻结的会员', N'', N'58.243.250.190', CAST(0x0000A9C20114671A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (338, N'后台', 1, N'admin', N'', N'develop/setting', N'系统设置', N'', N'58.243.250.190', CAST(0x0000A9C201152C5D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (339, N'后台', 1, N'admin', N'', N'develop/theme', N'会员平台主题', N'', N'58.243.250.190', CAST(0x0000A9C2011543C3 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (340, N'后台', 1, N'admin', N'', N'market/pplist', N'预付单匹配管理', N'', N'58.243.250.190', CAST(0x0000A9C2011561F0 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (341, N'后台', 1, N'admin', N'', N'market/matchdlist', N'已匹配数据', N'', N'58.243.250.190', CAST(0x0000A9C20116FE41 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (342, N'后台', 1, N'admin', N'', N'http://localhost:4160/adminCenter/Login', N'管理员“admin”登录成功！', NULL, N'::1', CAST(0x0000A9C201401332 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (343, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C201404BF6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (344, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C2014071D3 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (345, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'::1', CAST(0x0000A9C2014081F6 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (346, N'会员', 3, N'aaa001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“aaa001”登录成功！', NULL, N'211.138.116.58', CAST(0x0000A9C2016585FA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (347, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'211.138.116.58', CAST(0x0000A9C20181980F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (348, N'后台', 1, N'admin', N'', N'http://117.18.4.19/admincenter/login', N'管理员“admin”登录成功！', NULL, N'60.190.3.198', CAST(0x0000A9C201821793 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (349, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'60.190.3.198', CAST(0x0000A9C20182D6F5 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (350, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C2018339DF AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (351, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C2018357EB AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (352, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C201835DDE AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (353, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C201839217 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (354, N'后台', 1, N'admin', N'', N'http://localhost:4160/adminCenter/Login', N'管理员“admin”登录成功！', NULL, N'::1', CAST(0x0000A9C20189B790 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (355, N'后台', 1, N'admin', N'', N'http://117.18.4.19/adminCenter/Login', N'管理员“admin”登录成功！', NULL, N'180.139.201.32', CAST(0x0000A9C30001DF6B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (356, N'后台', 1, N'admin', N'', N'sysparam/syssetting', N'修改运行设置', N'', N'180.139.201.32', CAST(0x0000A9C300028FA9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (357, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'180.139.201.32', CAST(0x0000A9C30002A19A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (358, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'60.190.3.198', CAST(0x0000A9C3004E04CA AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (359, N'会员', 3, N'aaa001', N'', N'http://117.18.4.19/UserCenter/Login', N'会员“aaa001”登录成功！', NULL, N'58.211.252.194', CAST(0x0000A9C30075E561 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (360, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'112.17.243.102', CAST(0x0000A9C300B433A9 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (361, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'112.17.243.102', CAST(0x0000A9C300B45327 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (362, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'112.17.243.102', CAST(0x0000A9C300B47D6F AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (363, N'后台', 1, N'admin', N'', N'http://117.18.4.19/admincenter/login', N'管理员“admin”登录成功！', NULL, N'60.190.3.198', CAST(0x0000A9C300C0041A AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (364, N'后台', 1, N'admin', N'', N'http://117.18.4.19/admincenter/login', N'管理员“admin”登录成功！', NULL, N'60.190.3.198', CAST(0x0000A9C300C02CD3 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (365, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C04B18 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (366, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C053AE AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (367, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C05B01 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (368, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C0687B AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (369, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C0ADF4 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (370, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C1F0F8 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (371, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C20505 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (372, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300C25907 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (373, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'60.190.3.198', CAST(0x0000A9C300CC2BED AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (374, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300CC435D AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (375, N'后台', 1, N'admin', N'', N'sysparam/sysparam', N'初始参数设置', N'', N'60.190.3.198', CAST(0x0000A9C300CC4F10 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (376, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'60.190.3.198', CAST(0x0000A9C300D51FEE AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (377, N'后台', 1, N'admin', N'', N'http://117.18.4.19/AdminCenter/Login', N'管理员“admin”登录成功！', NULL, N'58.211.252.194', CAST(0x0000A9C300EC6879 AS DateTime))
INSERT [dbo].[ActLog] ([ID], [Platform], [UID], [UserName], [Source], [Location], [ActContent], [PacketFile], [IP], [CreateTime]) VALUES (378, N'后台', 1, N'admin', N'', N'home/logout', N'退出系统', N'', N'58.211.252.194', CAST(0x0000A9C300EC9F38 AS DateTime))
SET IDENTITY_INSERT [dbo].[ActLog] OFF
/****** Object:  Table [dbo].[AcceptHelp]    Script Date: 12/27/2018 22:49:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AcceptHelp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AcceptNo] [nvarchar](50) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[CoinID] [int] NOT NULL,
	[CoinName] [nvarchar](50) NOT NULL,
	[AcceptAmount] [decimal](18, 2) NOT NULL,
	[ExchangeAmount] [decimal](18, 2) NOT NULL,
	[HaveMatchingAmount] [decimal](18, 2) NOT NULL,
	[UseSupplyNo] [nvarchar](250) NULL,
	[Status] [int] NOT NULL,
	[PayWay] [nvarchar](50) NULL,
	[IsTop] [bit] NOT NULL,
	[IsRepeatQueuing] [bit] NOT NULL,
	[EndTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[RepeatQueuingTime] [datetime] NULL,
	[ReserveStr1] [nvarchar](50) NULL,
	[ReserveStr2] [nvarchar](50) NULL,
	[ReserveInt1] [int] NULL,
	[ReserveInt2] [int] NULL,
	[ReserveDate1] [datetime] NULL,
	[ReserveDate2] [datetime] NULL,
	[ReserveBoolean1] [bit] NULL,
	[ReserveBoolean2] [bit] NULL,
	[ReserveDecamal1] [decimal](18, 2) NULL,
	[ReserveDecamal2] [decimal](18, 2) NULL,
	[CancelTime] [datetime] NULL,
	[CancelReason] [nvarchar](50) NULL,
	[AllDealTime] [datetime] NULL,
	[OrderType] [int] NULL,
	[OrderMoney] [decimal](18, 2) NULL,
 CONSTRAINT [PK_MarketPutIn] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受帮助编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'AcceptNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种ID（钱包）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'CoinID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种（钱包）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'CoinName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受帮助金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'AcceptAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受帮助汇率金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ExchangeAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'已匹配金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'HaveMatchingAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接供帮助的单号集合' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'UseSupplyNo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1未匹配,2部分匹配,3全部匹配' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'付款方式' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'PayWay'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否置顶' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'IsTop'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否已经重复排队' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'IsRepeatQueuing'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'到期时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'重复排队时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'RepeatQueuingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveStr1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveStr2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveInt1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveInt2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveDate1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveDate2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveBoolean1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveBoolean2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveDecamal1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'预留自段' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'ReserveDecamal2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'取消时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'CancelTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'全部成交时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'AllDealTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'订单类型（0预定金,1全额单）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AcceptHelp', @level2type=N'COLUMN',@level2name=N'OrderType'
GO
SET IDENTITY_INSERT [dbo].[AcceptHelp] ON
INSERT [dbo].[AcceptHelp] ([ID], [AcceptNo], [UID], [UserName], [CoinID], [CoinName], [AcceptAmount], [ExchangeAmount], [HaveMatchingAmount], [UseSupplyNo], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [CreateTime], [RepeatQueuingTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [CancelTime], [CancelReason], [AllDealTime], [OrderType], [OrderMoney]) VALUES (1, N'A0010001', 2, N'2', 2001, N'收益钱包', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, 2, N'银行支付', 0, 0, CAST(0x0000A9C10121D43A AS DateTime), CAST(0x0000A9C100BEF3BA AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AcceptHelp] ([ID], [AcceptNo], [UID], [UserName], [CoinID], [CoinName], [AcceptAmount], [ExchangeAmount], [HaveMatchingAmount], [UseSupplyNo], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [CreateTime], [RepeatQueuingTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [CancelTime], [CancelReason], [AllDealTime], [OrderType], [OrderMoney]) VALUES (2, N'A0010002', 5, N'ccc001', 2001, N'收益钱包', CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), CAST(1000.00 AS Decimal(18, 2)), NULL, 3, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C2005196C2 AS DateTime), CAST(0x0000A9C1017A3842 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AcceptHelp] ([ID], [AcceptNo], [UID], [UserName], [CoinID], [CoinName], [AcceptAmount], [ExchangeAmount], [HaveMatchingAmount], [UseSupplyNo], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [CreateTime], [RepeatQueuingTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [CancelTime], [CancelReason], [AllDealTime], [OrderType], [OrderMoney]) VALUES (3, N'A0010003', 6, N'ddd001', 2001, N'收益钱包', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), NULL, 4, N'银行支付,支付宝', 0, 0, CAST(0x0000A9C20051B8B5 AS DateTime), CAST(0x0000A9C1017A5A35 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[AcceptHelp] ([ID], [AcceptNo], [UID], [UserName], [CoinID], [CoinName], [AcceptAmount], [ExchangeAmount], [HaveMatchingAmount], [UseSupplyNo], [Status], [PayWay], [IsTop], [IsRepeatQueuing], [EndTime], [CreateTime], [RepeatQueuingTime], [ReserveStr1], [ReserveStr2], [ReserveInt1], [ReserveInt2], [ReserveDate1], [ReserveDate2], [ReserveBoolean1], [ReserveBoolean2], [ReserveDecamal1], [ReserveDecamal2], [CancelTime], [CancelReason], [AllDealTime], [OrderType], [OrderMoney]) VALUES (4, N'A0010004', 7, N'abc123', 2002, N'动态钱包', CAST(5600.00 AS Decimal(18, 2)), CAST(5600.00 AS Decimal(18, 2)), CAST(800.00 AS Decimal(18, 2)), NULL, 2, N'银行支付,支付宝', 1, 0, CAST(0x0000A9C20168B78F AS DateTime), CAST(0x0000A9C20105D70F AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[AcceptHelp] OFF
/****** Object:  Table [dbo].[WarningLog]    Script Date: 12/27/2018 22:49:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WarningLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Platform] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[WarningMsg] [nvarchar](250) NULL,
	[WarningLevel] [nvarchar](50) NULL,
	[ResultMsg] [nvarchar](250) NULL,
	[Location] [nvarchar](250) NULL,
	[IP] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_WarningLog] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平台' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'Platform'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'WarningMsg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'警告级别(普通,严重,特别严重)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'WarningLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'处理结果' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'ResultMsg'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'访问地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'IP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WarningLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
SET IDENTITY_INSERT [dbo].[WarningLog] ON
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (1, N'后台', N'10001', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/3', N'183.245.232.20', CAST(0x0000A830013B7837 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (2, N'后台', N'10001', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/3', N'183.245.232.20', CAST(0x0000A830013BD7BD AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (3, N'后台', N'a123456', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/10', N'59.63.248.73', CAST(0x0000A833015645AD AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (4, N'后台', N'a123456', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/10', N'59.63.248.73', CAST(0x0000A8330158020A AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (5, N'后台', N'13887526223', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/9', N'59.63.248.73', CAST(0x0000A83301592F0B AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (6, N'后台', N'9988', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/13', N'59.63.248.73', CAST(0x0000A8370171F73B AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (7, N'后台', N'9988', N'由管理员“admin”修改会员资料,涉及改动信息：　姓名变更：哈哈哈哈哈 => 哈哈', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/13', N'59.63.248.73', CAST(0x0000A83701760610 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (8, N'后台', N'123456789', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/7', N'59.63.248.73', CAST(0x0000A837017D3A98 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (9, N'后台', N'1234567890', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/8', N'59.63.248.73', CAST(0x0000A83800C1EA70 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (10, N'后台', N'fan2996', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/6', N'59.63.248.75', CAST(0x0000A83900C6DA0A AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (11, N'后台', N'8899', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/12', N'59.63.248.75', CAST(0x0000A83900CAFC7B AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (12, N'后台', N'888', N'由管理员“admin”修改会员资料,涉及改动信息：　银行卡变更：6228480553698412985 => 62284805536984129854', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/11', N'59.63.248.75', CAST(0x0000A83900D2541D AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (13, N'后台', N'10001', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/3', N'59.63.248.75', CAST(0x0000A83900D9CD3C AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (14, N'后台', N'10001', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/3', N'59.63.248.75', CAST(0x0000A83900DA3071 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (15, N'后台', N'a123456', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/10', N'59.63.248.75', CAST(0x0000A83900EAE004 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (16, N'后台', N'13567381997', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/4', N'59.63.248.75', CAST(0x0000A83A011D5768 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (17, N'后台', N'6666', N'由管理员“admin”修改会员资料,涉及改动信息：　银行卡变更：5678932164895953 => 5678932164895953WR', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/14', N'59.63.248.75', CAST(0x0000A83A012A61AD AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (18, N'后台', N'13567381997', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://117.18.5.176/AdminCenter/User/Modify/4', N'59.63.248.75', CAST(0x0000A83A0146D41C AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (19, N'后台', N'abc888', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://www.priceyyy168.com/AdminCenter/User/Modify/3', N'59.63.248.75', CAST(0x0000A83B00C3D0C6 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (20, N'后台', N'88888', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/6', N'60.222.62.166', CAST(0x0000A83E00A137E3 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (21, N'后台', N'15582909888', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/35', N'60.222.62.166', CAST(0x0000A84000CDC687 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (22, N'后台', N'88888', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/6', N'60.222.62.166', CAST(0x0000A840013B34F3 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (23, N'后台', N'abc888', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/3', N'60.222.62.166', CAST(0x0000A840013B75AD AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (24, N'会员', N'88888', N'会员自主修改资料，验证成功', N'一般', N'通过', N'http://huafeishangbiao.com/usercenter/user/modify', N'60.222.62.166', CAST(0x0000A840013E0032 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (25, N'会员', N'abc888', N'会员自主修改资料，验证成功', N'一般', N'通过', N'http://huafeishangbiao.com/usercenter/user/modify', N'60.222.62.166', CAST(0x0000A840013E92C1 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (26, N'会员', N'88888', N'会员自主修改资料，验证成功', N'一般', N'通过', N'http://huafeishangbiao.com/usercenter/user/modify', N'60.222.62.166', CAST(0x0000A840013EE79F AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (27, N'后台', N'2996', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/46', N'59.63.248.75', CAST(0x0000A84100ED0A8B AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (28, N'会员', N'fan008', N'会员自主修改资料，验证成功,涉及改动信息：　银行卡变更：623668143004296900 => 6236681430004296900', N'一般', N'通过', N'http://huafeishangbiao.com/usercenter/user/modify', N'59.63.248.75', CAST(0x0000A841013C0B83 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (29, N'后台', N'9598', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/44', N'59.63.248.75', CAST(0x0000A84401055035 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (30, N'会员', N'yjs1982', N'会员自主修改资料，验证成功,涉及改动信息：　支付宝变更：18889158079@qq.com => 18889158079', N'一般', N'通过', N'http://huafeishangbiao.com/usercenter/user/modify', N'111.29.118.217', CAST(0x0000A844011644BE AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (31, N'后台', N'9598', N'由管理员“admin”修改会员资料,涉及改动信息：手机变更：13838979598 => 17183577525　支付宝变更：13838979598 => 99999999999999999999', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/44', N'59.63.248.72', CAST(0x0000A84501097F85 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (32, N'后台', N'abc888', N'由管理员“admin”修改会员资料,涉及改动信息：手机变更：17183577525 => 13866889999　姓名变更：何展 => 人可', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/3', N'59.63.248.72', CAST(0x0000A845010CADD9 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (33, N'后台', N'lqy66', N'由管理员“admin”修改会员资料', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/42', N'59.63.248.73', CAST(0x0000A8490137318C AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (34, N'后台', N'abc888', N'由管理员“admin”修改会员资料,涉及改动信息：手机变更：13866889999 => 13567381997　姓名变更：人可 => 何展', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/3', N'59.63.248.73', CAST(0x0000A84A00C1C528 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (35, N'后台', N'9598', N'由管理员“admin”修改会员资料,涉及改动信息：手机变更：17183577525 => 13838979598　支付宝变更：99999999999999999999 => 13838979598', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/44', N'59.63.248.73', CAST(0x0000A84A00C44C58 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (36, N'会员', N'5912', N'会员自主修改资料，验证成功,涉及改动信息：　支付宝变更：13698915912 => 13687526779　银行卡变更：13698915912 => 6228480158165031770', N'一般', N'通过', N'http://huafeishangbiao.com/usercenter/user/modify', N'111.29.116.36', CAST(0x0000A84A00C8A267 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (37, N'会员', N'fan2633', N'会员自主修改资料，验证成功,涉及改动信息：　支付宝变更：1425395916 => 18368332996　银行卡变更：6236681430003240578 => 6228480349130855175', N'一般', N'通过', N'http://huafeishangbiao.com/usercenter/user/modify', N'59.63.248.73', CAST(0x0000A84B00E2F8D2 AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (38, N'后台', N'wcf66', N'由管理员“admin”修改会员资料,涉及改动信息：手机变更：1375837313 => 13758373133', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/71', N'59.63.248.73', CAST(0x0000A84B00F9F24C AS DateTime))
INSERT [dbo].[WarningLog] ([ID], [Platform], [UserName], [WarningMsg], [WarningLevel], [ResultMsg], [Location], [IP], [CreateTime]) VALUES (39, N'后台', N'chr11', N'由管理员“admin”修改会员资料,涉及改动信息：手机变更：15125415901 => 15757372698', N'一般', N'通过', N'http://huafeishangbiao.com/AdminCenter/User/Modify/84', N'59.63.248.73', CAST(0x0000A84B00FA29DA AS DateTime))
SET IDENTITY_INSERT [dbo].[WarningLog] OFF
/****** Object:  Table [dbo].[WalletLog]    Script Date: 12/27/2018 22:49:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WalletLog](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UID] [int] NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[CoinID] [int] NOT NULL,
	[CoinName] [nvarchar](50) NOT NULL,
	[ChangeMoney] [decimal](18, 2) NOT NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_AccountDetail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'UID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'UserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'CoinID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'币种名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'CoinName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'ChangeMoney'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'余额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'Balance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'描述' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'变更时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'帐户明细表' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'WalletLog'
GO
SET IDENTITY_INSERT [dbo].[WalletLog] ON
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (1, 1, N'1', 2003, N'排单币钱包', CAST(1000000.00 AS Decimal(18, 2)), CAST(1000000.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C1009C2897 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (2, 2, N'2', 2001, N'收益钱包', CAST(10000000000.00 AS Decimal(18, 2)), CAST(10000000000.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C1009C5C5B AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (3, 1, N'1', 2003, N'排单币钱包', CAST(-500.00 AS Decimal(18, 2)), CAST(999500.00 AS Decimal(18, 2)), N'来自提供订单【S0010001】扣除', CAST(0x0000A9C1009C7B41 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (4, 2, N'2', 2001, N'收益钱包', CAST(-5000.00 AS Decimal(18, 2)), CAST(9999995000.00 AS Decimal(18, 2)), N'接受帮助订单“A0010001”扣除', CAST(0x0000A9C100BEF3F6 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (5, 3, N'aaa001', 2004, N'激活币钱包', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C1016F58DF AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (6, 3, N'aaa001', 2003, N'排单币钱包', CAST(500.00 AS Decimal(18, 2)), CAST(500.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C1017669D3 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (7, 4, N'bbb001', 2003, N'排单币钱包', CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C10176AB73 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (8, 1, N'1', 2003, N'排单币钱包', CAST(-2000.00 AS Decimal(18, 2)), CAST(997500.00 AS Decimal(18, 2)), N'向会员【bbb001】转账2000个', CAST(0x0000A9C101774490 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (9, 4, N'bbb001', 2003, N'排单币钱包', CAST(2000.00 AS Decimal(18, 2)), CAST(2010.00 AS Decimal(18, 2)), N'会员【1】向你转账2000个', CAST(0x0000A9C1017744E9 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (10, 4, N'bbb001', 2003, N'排单币钱包', CAST(-100.00 AS Decimal(18, 2)), CAST(1910.00 AS Decimal(18, 2)), N'来自提供订单【S0010003】扣除', CAST(0x0000A9C1017774FA AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (11, 3, N'aaa001', 2003, N'排单币钱包', CAST(-100.00 AS Decimal(18, 2)), CAST(400.00 AS Decimal(18, 2)), N'来自提供订单【S0010005】扣除', CAST(0x0000A9C10178DB76 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (12, 5, N'ccc001', 2001, N'收益钱包', CAST(20000.00 AS Decimal(18, 2)), CAST(20000.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C101799814 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (13, 6, N'ddd001', 2001, N'收益钱包', CAST(8000.00 AS Decimal(18, 2)), CAST(8000.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C10179B7AA AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (14, 5, N'ccc001', 2001, N'收益钱包', CAST(-1000.00 AS Decimal(18, 2)), CAST(19000.00 AS Decimal(18, 2)), N'接受帮助订单“A0010002”扣除', CAST(0x0000A9C1017A388D AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (15, 6, N'ddd001', 2001, N'收益钱包', CAST(-5000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), N'接受帮助订单“A0010003”扣除', CAST(0x0000A9C1017A5A47 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (16, 3, N'aaa001', 2003, N'排单币钱包', CAST(501.00 AS Decimal(18, 2)), CAST(901.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C200D554B3 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (17, 7, N'abc123', 2001, N'收益钱包', CAST(20.00 AS Decimal(18, 2)), CAST(20.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C200E83232 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (18, 7, N'abc123', 2001, N'收益钱包', CAST(20.00 AS Decimal(18, 2)), CAST(40.00 AS Decimal(18, 2)), N'ZH：系统派送', CAST(0x0000A9C200E83460 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (19, 7, N'abc123', 2001, N'收益钱包', CAST(5000.00 AS Decimal(18, 2)), CAST(5040.00 AS Decimal(18, 2)), N'ZH：系统派送1', CAST(0x0000A9C20103F6D8 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (20, 7, N'abc123', 2002, N'动态钱包', CAST(5600.00 AS Decimal(18, 2)), CAST(5600.00 AS Decimal(18, 2)), N'ZH：系统派送1', CAST(0x0000A9C201059011 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (21, 7, N'abc123', 2002, N'动态钱包', CAST(-5600.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'接受帮助订单“A0010004”扣除', CAST(0x0000A9C20105D76C AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (22, 7, N'abc123', 2003, N'排单币钱包', CAST(5000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), N'ZH：系统派送1', CAST(0x0000A9C20106AEA0 AS DateTime))
INSERT [dbo].[WalletLog] ([ID], [UID], [UserName], [CoinID], [CoinName], [ChangeMoney], [Balance], [Description], [CreateTime]) VALUES (23, 7, N'abc123', 2003, N'排单币钱包', CAST(-10.00 AS Decimal(18, 2)), CAST(4990.00 AS Decimal(18, 2)), N'来自提供订单【S0010007】扣除', CAST(0x0000A9C2010707F7 AS DateTime))
SET IDENTITY_INSERT [dbo].[WalletLog] OFF
/****** Object:  View [dbo].[View_UserStatistics]    Script Date: 12/27/2018 22:49:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[View_UserStatistics]
AS
SELECT     jstime, UID, SUM(tjj) AS tjj, SUM(jthl) AS jthl, SUM(ldfh) AS ldfh, SUM(dpj) AS dpj, SUM(dsj) AS dsj, SUM(jcj) AS jcj, SUM(jt) AS jt, SUM(tjj) + SUM(jthl) + SUM(ldfh) + SUM(dpj) + SUM(dsj) + SUM(jcj) 
                      + SUM(jt) AS total
FROM         (SELECT     CONVERT(varchar(20), BalanceTime, 23) AS jstime, UID, ISNULL(SUM(BonusMoney), 0) AS tjj, 0 AS jthl, 0 AS ldfh, 0 AS dpj, 0 AS dsj, 0 AS jcj, 0 AS jt
                       FROM          dbo.BonusDetail
                       WHERE      (IsBalance = 1) AND (BonusName = '推荐奖')
                       GROUP BY CONVERT(varchar(20), BalanceTime, 23), UID
                       UNION
                       SELECT     CONVERT(varchar(20), BalanceTime, 23) AS jstime, UID, 0 AS tjj, ISNULL(SUM(BonusMoney), 0) AS jthl, 0 AS ldfh, 0 AS dpj, 0 AS dsj, 0 AS jcj, 0 AS jt
                       FROM         dbo.BonusDetail AS BonusDetail_4
                       WHERE     (IsBalance = 1) AND (BonusName = '理财红利金')
                       GROUP BY CONVERT(varchar(20), BalanceTime, 23), UID
                       UNION
                       SELECT     CONVERT(varchar(20), BalanceTime, 23) AS jstime, UID, 0 AS tjj, 0 AS jthl, ISNULL(SUM(BonusMoney), 0) AS ldfh, 0 AS dpj, 0 AS dsj, 0 AS jcj, 0 AS jt
                       FROM         dbo.BonusDetail AS BonusDetail_5
                       WHERE     (IsBalance = 1) AND (BonusName = '领导分红奖')
                       GROUP BY CONVERT(varchar(20), BalanceTime, 23), UID
                       UNION
                       SELECT     CONVERT(varchar(20), BalanceTime, 23) AS jstime, UID, 0 AS tjj, 0 AS jthl, 0 AS ldfh, ISNULL(SUM(BonusMoney), 0) AS dpj, 0 AS dsj, 0 AS jcj, 0 AS jt
                       FROM         dbo.BonusDetail AS BonusDetail_6
                       WHERE     (IsBalance = 1) AND (BonusName = '对碰奖')
                       GROUP BY CONVERT(varchar(20), BalanceTime, 23), UID
                       UNION
                       SELECT     CONVERT(varchar(20), BalanceTime, 23) AS jstime, UID, 0 AS tjj, 0 AS jthl, 0 AS ldfh, 0 AS dpj, ISNULL(SUM(BonusMoney), 0) AS dsj, 0 AS jcj, 0 AS jt
                       FROM         dbo.BonusDetail AS BonusDetail_3
                       WHERE     (IsBalance = 1) AND (BonusName = '代数奖')
                       GROUP BY CONVERT(varchar(20), BalanceTime, 23), UID
                       UNION
                       SELECT     CONVERT(varchar(20), BalanceTime, 23) AS jstime, UID, 0 AS tjj, 0 AS jthl, 0 AS ldfh, 0 AS dpj, 0 AS dsj, ISNULL(SUM(BonusMoney), 0) AS jcj, 0 AS jt
                       FROM         dbo.BonusDetail AS BonusDetail_2
                       WHERE     (IsBalance = 1) AND (BonusName = '绩差奖')
                       GROUP BY CONVERT(varchar(20), BalanceTime, 23), UID
                       UNION
                       SELECT     CONVERT(varchar(20), BalanceTime, 23) AS jstime, UID, 0 AS tjj, 0 AS jthl, 0 AS ldfh, 0 AS dpj, 0 AS dsj, 0 AS jcj, ISNULL(SUM(BonusMoney), 0) AS jt
                       FROM         dbo.BonusDetail AS BonusDetail_1
                       WHERE     (IsBalance = 1) AND (BonusName = '报单津贴')
                       GROUP BY CONVERT(varchar(20), BalanceTime, 23), UID) AS tb
WHERE     (DATEDIFF(d, jstime, GETDATE()) >= 0)
GROUP BY jstime, UID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[21] 4[10] 2[50] 3) )"
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
         Top = -384
         Left = 0
      End
      Begin Tables = 
         Begin Table = "tb"
            Begin Extent = 
               Top = 390
               Left = 38
               Bottom = 510
               Right = 196
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UserStatistics'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'View_UserStatistics'
GO
/****** Object:  Default [DF_Message_isRed]    Script Date: 12/27/2018 22:49:02 ******/
ALTER TABLE [dbo].[Message] ADD  CONSTRAINT [DF_Message_isRed]  DEFAULT ((0)) FOR [IsRead]
GO
/****** Object:  Default [DF_SysLog_CreateTime]    Script Date: 12/27/2018 22:49:02 ******/
ALTER TABLE [dbo].[SysLog] ADD  CONSTRAINT [DF_SysLog_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_SysParam_CreateTime]    Script Date: 12/27/2018 22:49:02 ******/
ALTER TABLE [dbo].[SysParam] ADD  CONSTRAINT [DF_SysParam_CreateTime]  DEFAULT (getdate()) FOR [LastUpdateTime]
GO
