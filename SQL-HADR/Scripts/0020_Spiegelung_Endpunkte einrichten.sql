--SELECT GETDATE()

--> Siehe registrierte Server
--Abfrage auf beiden Servern

--Login für SQL Dienstkonto, da dies verwendet wird, wenn man kein dediziertes Konto angegeben hat...
CREATE LOGIN [schulung\svcSQL] FROM WINDOWS 

--Zugriffsrechte auf Spiegelungsendpunkt geben
GRANT CONNECT ON ENDPOINT::Spiegelung TO [schulung\svcSQL]



USE [master]
GO
CREATE LOGIN [Maxi] WITH PASSWORD=N'123',
 DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO


SELECT * FROM sys.dm_db_mirroring_connections

SELECT * FROM sys.databases

