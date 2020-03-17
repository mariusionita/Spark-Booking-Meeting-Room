
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/12/2020 17:18:23
-- Generated from EDMX file: C:\Users\Marius\Desktop\Visma-Room2Meet-master\Visma Room2Meet\Room2Meet DB.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [room2meet_db];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_AspNetUsers_Building]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUsers] DROP CONSTRAINT [FK_AspNetUsers_Building];
GO
IF OBJECT_ID(N'[dbo].[FK_Booking_BookingStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK_Booking_BookingStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_Booking_Room]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK_Booking_Room];
GO
IF OBJECT_ID(N'[dbo].[FK_Booking_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Booking] DROP CONSTRAINT [FK_Booking_User];
GO
IF OBJECT_ID(N'[dbo].[FK_BookingHistory_Booking]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookingHistory] DROP CONSTRAINT [FK_BookingHistory_Booking];
GO
IF OBJECT_ID(N'[dbo].[FK_BookingHistory_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[BookingHistory] DROP CONSTRAINT [FK_BookingHistory_User];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_Log_LogType]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Log] DROP CONSTRAINT [FK_Log_LogType];
GO
IF OBJECT_ID(N'[dbo].[FK_Room_BookingStatus]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Room] DROP CONSTRAINT [FK_Room_BookingStatus];
GO
IF OBJECT_ID(N'[dbo].[FK_Room_Building]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Room] DROP CONSTRAINT [FK_Room_Building];
GO
IF OBJECT_ID(N'[dbo].[FK_RoomAsset_Asset]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoomAsset] DROP CONSTRAINT [FK_RoomAsset_Asset];
GO
IF OBJECT_ID(N'[dbo].[FK_RoomAsset_Room]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoomAsset] DROP CONSTRAINT [FK_RoomAsset_Room];
GO
IF OBJECT_ID(N'[dbo].[FK_RoomRole_AspNetRoles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoomRole] DROP CONSTRAINT [FK_RoomRole_AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[FK_RoomRole_Room]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[RoomRole] DROP CONSTRAINT [FK_RoomRole_Room];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[Asset]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asset];
GO
IF OBJECT_ID(N'[dbo].[Booking]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Booking];
GO
IF OBJECT_ID(N'[dbo].[BookingHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookingHistory];
GO
IF OBJECT_ID(N'[dbo].[BookingStatus]', 'U') IS NOT NULL
    DROP TABLE [dbo].[BookingStatus];
GO
IF OBJECT_ID(N'[dbo].[Building]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Building];
GO
IF OBJECT_ID(N'[dbo].[Log]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Log];
GO
IF OBJECT_ID(N'[dbo].[LogType]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LogType];
GO
IF OBJECT_ID(N'[dbo].[Room]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Room];
GO
IF OBJECT_ID(N'[dbo].[RoomAsset]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoomAsset];
GO
IF OBJECT_ID(N'[dbo].[RoomRole]', 'U') IS NOT NULL
    DROP TABLE [dbo].[RoomRole];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL,
    [Order] int  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL,
    [BuildingID] int  NULL,
    [Name] nvarchar(64)  NULL
);
GO

-- Creating table 'Assets'
CREATE TABLE [dbo].[Assets] (
    [AssetID] int  NOT NULL,
    [Name] nvarchar(128)  NOT NULL,
    [Description] nvarchar(512)  NOT NULL,
    [ShowAs] nvarchar(512)  NOT NULL
);
GO

-- Creating table 'Bookings'
CREATE TABLE [dbo].[Bookings] (
    [BookingID] int  NOT NULL,
    [BookingReference] nvarchar(128)  NOT NULL,
    [RoomID] int  NOT NULL,
    [AspNetUserID] nvarchar(128)  NOT NULL,
    [CreatedDate] datetime  NOT NULL,
    [StartDate] datetime  NOT NULL,
    [EndDate] datetime  NOT NULL,
    [BookingStatusID] int  NOT NULL
);
GO

-- Creating table 'BookingHistories'
CREATE TABLE [dbo].[BookingHistories] (
    [BookingHistoryID] int  NOT NULL,
    [AspNetUserID] nvarchar(128)  NOT NULL,
    [BookingID] int  NOT NULL,
    [ChangeDate] datetime  NOT NULL,
    [ChangeText] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'BookingStatuses'
CREATE TABLE [dbo].[BookingStatuses] (
    [BookingStatusID] int  NOT NULL,
    [Name] nvarchar(128)  NOT NULL,
    [Description] nvarchar(512)  NOT NULL
);
GO

-- Creating table 'Buildings'
CREATE TABLE [dbo].[Buildings] (
    [BuildingID] int  NOT NULL,
    [BuildingCode] nvarchar(32)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL,
    [Country] nvarchar(128)  NOT NULL,
    [Address] nvarchar(256)  NULL,
    [Description] nvarchar(1024)  NULL,
    [ImageUrl] nvarchar(512)  NULL,
    [OpenHour] time  NOT NULL,
    [CloseHour] time  NOT NULL
);
GO

-- Creating table 'Rooms'
CREATE TABLE [dbo].[Rooms] (
    [RoomID] int  NOT NULL,
    [BuildingID] int  NOT NULL,
    [Floor] nvarchar(16)  NOT NULL,
    [Capacity] int  NOT NULL,
    [RoomCode] nvarchar(32)  NOT NULL,
    [DefaultBookingStatusID] int  NOT NULL,
    [MaximumBookingHours] time  NULL,
    [Name] nvarchar(256)  NOT NULL,
    [Description] nvarchar(1024)  NULL,
    [ImgUrl] nvarchar(512)  NULL
);
GO

-- Creating table 'RoomAssets'
CREATE TABLE [dbo].[RoomAssets] (
    [RoomAssetID] int  NOT NULL,
    [RoomID] int  NOT NULL,
    [AssetID] int  NOT NULL,
    [Description] nvarchar(512)  NULL
);
GO

-- Creating table 'RoomRoles'
CREATE TABLE [dbo].[RoomRoles] (
    [RoomRoleID] int  NOT NULL,
    [RoomID] int  NOT NULL,
    [AspNetRoleID] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'Logs'
CREATE TABLE [dbo].[Logs] (
    [LogID] int  NOT NULL,
    [LogTypeID] int  NOT NULL,
    [DateTime] datetime  NOT NULL,
    [Location] nvarchar(256)  NOT NULL,
    [Message] nvarchar(512)  NOT NULL,
    [InnerException] nvarchar(max)  NULL,
    [Params] nvarchar(max)  NULL
);
GO

-- Creating table 'LogTypes'
CREATE TABLE [dbo].[LogTypes] (
    [LogTypeID] int  NOT NULL,
    [Name] nvarchar(128)  NOT NULL,
    [Description] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [AssetID] in table 'Assets'
ALTER TABLE [dbo].[Assets]
ADD CONSTRAINT [PK_Assets]
    PRIMARY KEY CLUSTERED ([AssetID] ASC);
GO

-- Creating primary key on [BookingID] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [PK_Bookings]
    PRIMARY KEY CLUSTERED ([BookingID] ASC);
GO

-- Creating primary key on [BookingHistoryID] in table 'BookingHistories'
ALTER TABLE [dbo].[BookingHistories]
ADD CONSTRAINT [PK_BookingHistories]
    PRIMARY KEY CLUSTERED ([BookingHistoryID] ASC);
GO

-- Creating primary key on [BookingStatusID] in table 'BookingStatuses'
ALTER TABLE [dbo].[BookingStatuses]
ADD CONSTRAINT [PK_BookingStatuses]
    PRIMARY KEY CLUSTERED ([BookingStatusID] ASC);
GO

-- Creating primary key on [BuildingID] in table 'Buildings'
ALTER TABLE [dbo].[Buildings]
ADD CONSTRAINT [PK_Buildings]
    PRIMARY KEY CLUSTERED ([BuildingID] ASC);
GO

-- Creating primary key on [RoomID] in table 'Rooms'
ALTER TABLE [dbo].[Rooms]
ADD CONSTRAINT [PK_Rooms]
    PRIMARY KEY CLUSTERED ([RoomID] ASC);
GO

-- Creating primary key on [RoomAssetID] in table 'RoomAssets'
ALTER TABLE [dbo].[RoomAssets]
ADD CONSTRAINT [PK_RoomAssets]
    PRIMARY KEY CLUSTERED ([RoomAssetID] ASC);
GO

-- Creating primary key on [RoomRoleID] in table 'RoomRoles'
ALTER TABLE [dbo].[RoomRoles]
ADD CONSTRAINT [PK_RoomRoles]
    PRIMARY KEY CLUSTERED ([RoomRoleID] ASC);
GO

-- Creating primary key on [LogID] in table 'Logs'
ALTER TABLE [dbo].[Logs]
ADD CONSTRAINT [PK_Logs]
    PRIMARY KEY CLUSTERED ([LogID] ASC);
GO

-- Creating primary key on [LogTypeID] in table 'LogTypes'
ALTER TABLE [dbo].[LogTypes]
ADD CONSTRAINT [PK_LogTypes]
    PRIMARY KEY CLUSTERED ([LogTypeID] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRole]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUser]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUser'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUser]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- Creating foreign key on [AspNetRoleID] in table 'RoomRoles'
ALTER TABLE [dbo].[RoomRoles]
ADD CONSTRAINT [FK_RoomRole_AspNetRoles]
    FOREIGN KEY ([AspNetRoleID])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomRole_AspNetRoles'
CREATE INDEX [IX_FK_RoomRole_AspNetRoles]
ON [dbo].[RoomRoles]
    ([AspNetRoleID]);
GO

-- Creating foreign key on [BuildingID] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [FK_AspNetUsers_Building]
    FOREIGN KEY ([BuildingID])
    REFERENCES [dbo].[Buildings]
        ([BuildingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUsers_Building'
CREATE INDEX [IX_FK_AspNetUsers_Building]
ON [dbo].[AspNetUsers]
    ([BuildingID]);
GO

-- Creating foreign key on [AspNetUserID] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_Booking_User]
    FOREIGN KEY ([AspNetUserID])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Booking_User'
CREATE INDEX [IX_FK_Booking_User]
ON [dbo].[Bookings]
    ([AspNetUserID]);
GO

-- Creating foreign key on [AspNetUserID] in table 'BookingHistories'
ALTER TABLE [dbo].[BookingHistories]
ADD CONSTRAINT [FK_BookingHistory_User]
    FOREIGN KEY ([AspNetUserID])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookingHistory_User'
CREATE INDEX [IX_FK_BookingHistory_User]
ON [dbo].[BookingHistories]
    ([AspNetUserID]);
GO

-- Creating foreign key on [AssetID] in table 'RoomAssets'
ALTER TABLE [dbo].[RoomAssets]
ADD CONSTRAINT [FK_RoomAsset_Asset]
    FOREIGN KEY ([AssetID])
    REFERENCES [dbo].[Assets]
        ([AssetID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomAsset_Asset'
CREATE INDEX [IX_FK_RoomAsset_Asset]
ON [dbo].[RoomAssets]
    ([AssetID]);
GO

-- Creating foreign key on [BookingStatusID] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_Booking_BookingStatus]
    FOREIGN KEY ([BookingStatusID])
    REFERENCES [dbo].[BookingStatuses]
        ([BookingStatusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Booking_BookingStatus'
CREATE INDEX [IX_FK_Booking_BookingStatus]
ON [dbo].[Bookings]
    ([BookingStatusID]);
GO

-- Creating foreign key on [RoomID] in table 'Bookings'
ALTER TABLE [dbo].[Bookings]
ADD CONSTRAINT [FK_Booking_Room]
    FOREIGN KEY ([RoomID])
    REFERENCES [dbo].[Rooms]
        ([RoomID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Booking_Room'
CREATE INDEX [IX_FK_Booking_Room]
ON [dbo].[Bookings]
    ([RoomID]);
GO

-- Creating foreign key on [BookingID] in table 'BookingHistories'
ALTER TABLE [dbo].[BookingHistories]
ADD CONSTRAINT [FK_BookingHistory_Booking]
    FOREIGN KEY ([BookingID])
    REFERENCES [dbo].[Bookings]
        ([BookingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_BookingHistory_Booking'
CREATE INDEX [IX_FK_BookingHistory_Booking]
ON [dbo].[BookingHistories]
    ([BookingID]);
GO

-- Creating foreign key on [DefaultBookingStatusID] in table 'Rooms'
ALTER TABLE [dbo].[Rooms]
ADD CONSTRAINT [FK_Room_BookingStatus]
    FOREIGN KEY ([DefaultBookingStatusID])
    REFERENCES [dbo].[BookingStatuses]
        ([BookingStatusID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Room_BookingStatus'
CREATE INDEX [IX_FK_Room_BookingStatus]
ON [dbo].[Rooms]
    ([DefaultBookingStatusID]);
GO

-- Creating foreign key on [BuildingID] in table 'Rooms'
ALTER TABLE [dbo].[Rooms]
ADD CONSTRAINT [FK_Room_Building]
    FOREIGN KEY ([BuildingID])
    REFERENCES [dbo].[Buildings]
        ([BuildingID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Room_Building'
CREATE INDEX [IX_FK_Room_Building]
ON [dbo].[Rooms]
    ([BuildingID]);
GO

-- Creating foreign key on [RoomID] in table 'RoomAssets'
ALTER TABLE [dbo].[RoomAssets]
ADD CONSTRAINT [FK_RoomAsset_Room]
    FOREIGN KEY ([RoomID])
    REFERENCES [dbo].[Rooms]
        ([RoomID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomAsset_Room'
CREATE INDEX [IX_FK_RoomAsset_Room]
ON [dbo].[RoomAssets]
    ([RoomID]);
GO

-- Creating foreign key on [RoomID] in table 'RoomRoles'
ALTER TABLE [dbo].[RoomRoles]
ADD CONSTRAINT [FK_RoomRole_Room]
    FOREIGN KEY ([RoomID])
    REFERENCES [dbo].[Rooms]
        ([RoomID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_RoomRole_Room'
CREATE INDEX [IX_FK_RoomRole_Room]
ON [dbo].[RoomRoles]
    ([RoomID]);
GO

-- Creating foreign key on [LogTypeID] in table 'Logs'
ALTER TABLE [dbo].[Logs]
ADD CONSTRAINT [FK_Log_LogType]
    FOREIGN KEY ([LogTypeID])
    REFERENCES [dbo].[LogTypes]
        ([LogTypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Log_LogType'
CREATE INDEX [IX_FK_Log_LogType]
ON [dbo].[Logs]
    ([LogTypeID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------