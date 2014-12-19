﻿
CREATE TABLE [MeDriAnchor].[DBServerType] (
    [DBServerTypeID]                  SMALLINT       IDENTITY (1, 1) NOT NULL,
    [DBServerType]                    NVARCHAR (100) NOT NULL,
    [DBServerConnectionString]        NVARCHAR (500) NULL,
    [DBServerConnectionStringTrusted] NVARCHAR (500) NULL,
    [Metadata_ID]                     BIGINT         NULL,
    CONSTRAINT [PK_DBServerType] PRIMARY KEY CLUSTERED ([DBServerTypeID] ASC) ON [MeDriAnchor_Current],
    CONSTRAINT [FK_DBServerType_Metadata] FOREIGN KEY ([Metadata_ID]) REFERENCES [MeDriAnchor].[Metadata] ([Metadata_ID])
);






GO
CREATE TRIGGER [MeDriAnchor].[atrDBServerType_Update]
GO
CREATE TRIGGER [MeDriAnchor].[atrDBServerType_Insert]
GO
CREATE TRIGGER [MeDriAnchor].[atrDBServerType_Delete]