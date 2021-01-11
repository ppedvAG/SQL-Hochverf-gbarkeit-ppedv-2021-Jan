--bei Wartung
ALTER DATABASE <database_name> SET PARTNER FAILOVER;
GO

--auf Spiegel
--zwingend
--Eventuell nicht synchronisiert

ALTER DATABASE <database_name> SET PARTNER FORCE_SERVICE_ALLOW_DATA_LOSS
--


AlwaysOn --> App DB auf selben Server wie die Applikation ... CLUSTER
