﻿
CREATE TABLE [MeDriAnchor].[DBTable] (
    [DBTableID]           BIGINT         IDENTITY (1, 1) NOT NULL,
    [DBID]                BIGINT         NOT NULL,
    [DBTableSchema]       [sysname]      NOT NULL,
    [DBTableName]         [sysname]      NOT NULL,
    [DBTableType]         NVARCHAR (20)  NOT NULL,
    [DBTableOrder]        INT            CONSTRAINT [DF_DBTable_DBTableOrder] DEFAULT ((0)) NOT NULL,
    [DBTableAlias]        [sysname]      NULL,
    [DBTableDescription]  NVARCHAR (500) NULL,
    [IsActive]            BIT            CONSTRAINT [DF_DBTable_IsActive] DEFAULT ((1)) NOT NULL,
    [MinutesBetweenLoads] INT            CONSTRAINT [DF_DBTable_MinutesBetweenLoads] DEFAULT ((1440)) NOT NULL,
    [Metadata_ID]         BIGINT         NULL,
    CONSTRAINT [PK_DBTable] PRIMARY KEY CLUSTERED ([DBTableID] ASC) ON [MeDriAnchor_Current],
    CONSTRAINT [FK_DBTable_DB] FOREIGN KEY ([DBID]) REFERENCES [MeDriAnchor].[DB] ([DBID]),
    CONSTRAINT [FK_DBTable_Metadata] FOREIGN KEY ([Metadata_ID]) REFERENCES [MeDriAnchor].[Metadata] ([Metadata_ID])
);






GO
CREATE TRIGGER [MeDriAnchor].[atrDBTable_Update]
GO
CREATE TRIGGER [MeDriAnchor].[atrDBTable_Insert]
GO
CREATE TRIGGER [MeDriAnchor].[atrDBTable_Delete]