CREATE DATABASE IF NOT EXISTS `aspnet_carsdex`;
USE `aspnet_carsdex`;

-- __EFMigrationsHistory
CREATE TABLE `__EFMigrationsHistory` (
  `MigrationId` VARCHAR(150) NOT NULL,
  `ProductVersion` VARCHAR(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
);

-- AspNetRoles
CREATE TABLE `AspNetRoles` (
  `Id` VARCHAR(450) NOT NULL,
  `Name` VARCHAR(256),
  `NormalizedName` VARCHAR(256),
  `ConcurrencyStamp` TEXT,
  PRIMARY KEY (`Id`)
);

-- AspNetRoleClaims
CREATE TABLE `AspNetRoleClaims` (
  `Id` INT AUTO_INCREMENT NOT NULL,
  `RoleId` VARCHAR(450) NOT NULL,
  `ClaimType` TEXT,
  `ClaimValue` TEXT,
  PRIMARY KEY (`Id`),
  INDEX (`RoleId`)
);

-- AspNetUsers
CREATE TABLE `AspNetUsers` (
  `Id` VARCHAR(450) NOT NULL,
  `UserName` VARCHAR(256),
  `NormalizedUserName` VARCHAR(256),
  `Email` VARCHAR(256),
  `NormalizedEmail` VARCHAR(256),
  `EmailConfirmed` BOOLEAN NOT NULL,
  `PasswordHash` TEXT,
  `SecurityStamp` TEXT,
  `ConcurrencyStamp` TEXT,
  `PhoneNumber` TEXT,
  `PhoneNumberConfirmed` BOOLEAN NOT NULL,
  `TwoFactorEnabled` BOOLEAN NOT NULL,
  `LockoutEnd` DATETIME,
  `LockoutEnabled` BOOLEAN NOT NULL,
  `AccessFailedCount` INT NOT NULL,
  PRIMARY KEY (`Id`)
);

-- AspNetUserClaims
CREATE TABLE `AspNetUserClaims` (
  `Id` INT AUTO_INCREMENT NOT NULL,
  `UserId` VARCHAR(450) NOT NULL,
  `ClaimType` TEXT,
  `ClaimValue` TEXT,
  PRIMARY KEY (`Id`),
  INDEX (`UserId`)
);

-- AspNetUserLogins
CREATE TABLE `AspNetUserLogins` (
  `LoginProvider` VARCHAR(450) NOT NULL,
  `ProviderKey` VARCHAR(450) NOT NULL,
  `ProviderDisplayName` TEXT,
  `UserId` VARCHAR(450) NOT NULL,
  PRIMARY KEY (`LoginProvider`, `ProviderKey`),
  INDEX (`UserId`)
);

-- AspNetUserRoles
CREATE TABLE `AspNetUserRoles` (
  `UserId` VARCHAR(450) NOT NULL,
  `RoleId` VARCHAR(450) NOT NULL,
  PRIMARY KEY (`UserId`, `RoleId`),
  INDEX (`RoleId`)
);

-- AspNetUserTokens
CREATE TABLE `AspNetUserTokens` (
  `UserId` VARCHAR(450) NOT NULL,
  `LoginProvider` VARCHAR(450) NOT NULL,
  `Name` VARCHAR(450) NOT NULL,
  `Value` TEXT,
  PRIMARY KEY (`UserId`, `LoginProvider`, `Name`)
);

-- Indexes (you can add others similarly)
CREATE UNIQUE INDEX `RoleNameIndex` ON `AspNetRoles` (`NormalizedName`);
CREATE INDEX `EmailIndex` ON `AspNetUsers` (`NormalizedEmail`);
CREATE UNIQUE INDEX `UserNameIndex` ON `AspNetUsers` (`NormalizedUserName`);
