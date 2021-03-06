SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[message]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[message](
	[messageID] [int] IDENTITY(1,1) NOT NULL,
	[messageFrom] [varchar](50) NOT NULL,
	[messageTo] [varchar](50) NOT NULL,
	[messageTime] [datetime] NOT NULL,
	[messageTitle] [varchar](40) NOT NULL,
	[messageContent] [text] NOT NULL,
	[messageState] [char](1) NOT NULL,
 CONSTRAINT [PK_message] PRIMARY KEY CLUSTERED 
(
	[messageID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[column]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[column](
	[columnID] [varchar](4) NOT NULL,
	[columnName] [varchar](30) NOT NULL,
 CONSTRAINT [PK_column] PRIMARY KEY CLUSTERED 
(
	[columnID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[state]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[state](
	[stateID] [char](2) NOT NULL,
	[stateText] [varchar](20) NOT NULL,
 CONSTRAINT [PK_state] PRIMARY KEY CLUSTERED 
(
	[stateID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[author]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[author](
	[authorID] [varchar](20) NOT NULL,
	[authorPwd] [varchar](20) NOT NULL,
	[authorName] [varchar](10) NOT NULL,
	[authorSex] [varchar](2) NOT NULL,
	[authorBirth] [varchar](10) NULL,
	[authorRegion] [varchar](16) NULL,
	[authorAddress] [varchar](100) NOT NULL,
	[authorPost] [varchar](6) NOT NULL,
	[authorJob] [varchar](20) NULL,
	[authorCompany] [varchar](50) NOT NULL,
	[authorDegree] [varchar](10) NULL,
	[authorMajor] [varchar](20) NULL,
	[authorTitle] [varchar](20) NULL,
	[authorMail] [varchar](100) NOT NULL,
	[authorPhone] [varchar](15) NOT NULL,
	[authorInfo] [text] NULL,
 CONSTRAINT [PK_author] PRIMARY KEY CLUSTERED 
(
	[authorID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[admin]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[admin](
	[adminID] [varchar](20) NOT NULL,
	[adminPwd] [varchar](20) NOT NULL,
 CONSTRAINT [PK_admin] PRIMARY KEY CLUSTERED 
(
	[adminID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[document]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[document](
	[docID] [int] IDENTITY(1,1) NOT NULL,
	[docTime] [datetime] NOT NULL,
	[docTitle] [varchar](200) NOT NULL,
	[docTitleEn] [varchar](400) NULL,
	[docAbstract] [varchar](400) NOT NULL,
	[docAbstractEn] [varchar](2000) NULL,
	[docKeywords] [varchar](200) NOT NULL,
	[docKeywordsEn] [varchar](200) NULL,
	[docLetters] [int] NOT NULL,
	[docAuthor] [text] NULL,
	[docColumnID] [varchar](4) NOT NULL,
	[authorID] [varchar](20) NOT NULL,
	[docState] [char](2) NOT NULL,
	[docReason] [text] NULL,
 CONSTRAINT [PK_document] PRIMARY KEY CLUSTERED 
(
	[docID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[editor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[editor](
	[editorID] [varchar](20) NOT NULL,
	[editorPwd] [varchar](20) NOT NULL,
	[editorName] [varchar](10) NULL,
	[editorSex] [varchar](2) NULL,
	[editorColumn] [varchar](4) NULL,
	[editorPhone] [varchar](15) NULL,
	[editorMail] [varchar](50) NULL,
	[editorAddress] [varchar](100) NULL,
	[editorInfo] [text] NULL,
 CONSTRAINT [PK_editor] PRIMARY KEY CLUSTERED 
(
	[editorID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[expert]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[expert](
	[expertID] [varchar](20) NOT NULL,
	[expertPwd] [varchar](20) NOT NULL,
	[expertName] [varchar](10) NOT NULL,
	[expertSex] [varchar](2) NULL,
	[expertColumn] [varchar](4) NULL,
	[expertPhone] [varchar](15) NULL,
	[expertMail] [varchar](50) NULL,
	[expertAddress] [varchar](100) NULL,
	[expertInfo] [text] NULL,
 CONSTRAINT [PK_expert] PRIMARY KEY CLUSTERED 
(
	[expertID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[assess]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[assess](
	[assessID] [int] IDENTITY(1,1) NOT NULL,
	[docID] [int] NOT NULL,
	[expertID] [varchar](20) NOT NULL,
	[assessment] [text] NULL,
	[docToTime] [datetime] NULL,
 CONSTRAINT [PK_assess] PRIMARY KEY CLUSTERED 
(
	[assessID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[attach]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[attach](
	[attachID] [int] IDENTITY(1,1) NOT NULL,
	[attachFilename] [varchar](100) NOT NULL,
	[attachName] [varchar](50) NOT NULL,
	[docID] [int] NULL,
 CONSTRAINT [PK_attach] PRIMARY KEY CLUSTERED 
(
	[attachID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[board]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[board](
	[boardID] [int] IDENTITY(1,1) NOT NULL,
	[docID] [int] NOT NULL,
	[boardRank] [varchar](20) NULL,
	[boardMoney] [varchar](4) NULL,
	[boardState] [varchar](6) NULL,
 CONSTRAINT [PK_board] PRIMARY KEY CLUSTERED 
(
	[boardID] ASC
)WITH (PAD_INDEX  = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_document_author]') AND parent_object_id = OBJECT_ID(N'[dbo].[document]'))
ALTER TABLE [dbo].[document]  WITH CHECK ADD  CONSTRAINT [FK_document_author] FOREIGN KEY([authorID])
REFERENCES [dbo].[author] ([authorID])
GO
ALTER TABLE [dbo].[document] CHECK CONSTRAINT [FK_document_author]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_document_column]') AND parent_object_id = OBJECT_ID(N'[dbo].[document]'))
ALTER TABLE [dbo].[document]  WITH CHECK ADD  CONSTRAINT [FK_document_column] FOREIGN KEY([docColumnID])
REFERENCES [dbo].[column] ([columnID])
GO
ALTER TABLE [dbo].[document] CHECK CONSTRAINT [FK_document_column]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_document_state]') AND parent_object_id = OBJECT_ID(N'[dbo].[document]'))
ALTER TABLE [dbo].[document]  WITH CHECK ADD  CONSTRAINT [FK_document_state] FOREIGN KEY([docState])
REFERENCES [dbo].[state] ([stateID])
GO
ALTER TABLE [dbo].[document] CHECK CONSTRAINT [FK_document_state]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_editor_column]') AND parent_object_id = OBJECT_ID(N'[dbo].[editor]'))
ALTER TABLE [dbo].[editor]  WITH CHECK ADD  CONSTRAINT [FK_editor_column] FOREIGN KEY([editorColumn])
REFERENCES [dbo].[column] ([columnID])
GO
ALTER TABLE [dbo].[editor] CHECK CONSTRAINT [FK_editor_column]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_expert_column]') AND parent_object_id = OBJECT_ID(N'[dbo].[expert]'))
ALTER TABLE [dbo].[expert]  WITH CHECK ADD  CONSTRAINT [FK_expert_column] FOREIGN KEY([expertColumn])
REFERENCES [dbo].[column] ([columnID])
GO
ALTER TABLE [dbo].[expert] CHECK CONSTRAINT [FK_expert_column]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_assess_document]') AND parent_object_id = OBJECT_ID(N'[dbo].[assess]'))
ALTER TABLE [dbo].[assess]  WITH CHECK ADD  CONSTRAINT [FK_assess_document] FOREIGN KEY([docID])
REFERENCES [dbo].[document] ([docID])
GO
ALTER TABLE [dbo].[assess] CHECK CONSTRAINT [FK_assess_document]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_assess_expert]') AND parent_object_id = OBJECT_ID(N'[dbo].[assess]'))
ALTER TABLE [dbo].[assess]  WITH CHECK ADD  CONSTRAINT [FK_assess_expert] FOREIGN KEY([expertID])
REFERENCES [dbo].[expert] ([expertID])
GO
ALTER TABLE [dbo].[assess] CHECK CONSTRAINT [FK_assess_expert]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_attach_document]') AND parent_object_id = OBJECT_ID(N'[dbo].[attach]'))
ALTER TABLE [dbo].[attach]  WITH CHECK ADD  CONSTRAINT [FK_attach_document] FOREIGN KEY([docID])
REFERENCES [dbo].[document] ([docID])
GO
ALTER TABLE [dbo].[attach] CHECK CONSTRAINT [FK_attach_document]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_board_document]') AND parent_object_id = OBJECT_ID(N'[dbo].[board]'))
ALTER TABLE [dbo].[board]  WITH CHECK ADD  CONSTRAINT [FK_board_document] FOREIGN KEY([docID])
REFERENCES [dbo].[document] ([docID])
GO
ALTER TABLE [dbo].[board] CHECK CONSTRAINT [FK_board_document]
