/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [fanfueled]    Script Date: 10/30/2012 17:24:17 ******/
CREATE LOGIN [fanfueled] WITH PASSWORD=N'-"wn(¨l:9ÍúAa-¥Wï_×Ê¾ø^ìÝ', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO

EXEC sys.sp_addsrvrolemember @loginame = N'fanfueled', @rolename = N'sysadmin'
GO

ALTER LOGIN [fanfueled] DISABLE
GO


CREATE USER [FightFleet] FOR LOGIN [FightFleet] WITH DEFAULT_SCHEMA=[dbo]
GO


