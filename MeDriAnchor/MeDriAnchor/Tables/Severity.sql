﻿
CREATE TABLE [MeDriAnchor].[Severity] (
    [SeverityID]    TINYINT      IDENTITY (1, 1) NOT NULL,
    [ServerityName] VARCHAR (20) NOT NULL,
    CONSTRAINT [PK_Severity] PRIMARY KEY CLUSTERED ([SeverityID] ASC) ON [MeDriAnchor_Current]
);






GO
CREATE TRIGGER [MeDriAnchor].[atrSeverity_Update]
GO
CREATE TRIGGER [MeDriAnchor].[atrSeverity_Insert]
GO
CREATE TRIGGER [MeDriAnchor].[atrSeverity_Delete]