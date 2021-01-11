-- Auf Prinzipal
CREATE ENDPOINT Endpoint_Mirroring
    STATE=STARTED 
    AS TCP (LISTENER_PORT=7022) 
    FOR DATABASE_MIRRORING (ROLE=PARTNER)
GO
--plus Login
USE master ;
GO

CREATE LOGIN [Somedomain\witnessuser] FROM WINDOWS ;
GO
-- Grant connect permissions on endpoint to login account of witness.
GRANT CONNECT ON ENDPOINT::Endpoint_Mirroring TO [Somedomain\witnessuser];
GO




-- Spiegelserver
CREATE ENDPOINT Endpoint_Mirroring
    STATE=STARTED 
    AS TCP (LISTENER_PORT=7022) 
    FOR DATABASE_MIRRORING (ROLE=ALL)
GO
--Partners under same domain user; login already exists in master.
--Create a login for the witness server instance,
--which is running as Somedomain\witnessuser:
USE master ;
GO
CREATE LOGIN [Somedomain\witnessuser] FROM WINDOWS ;
GO
--Grant connect permissions on endpoint to login account of witness.
GRANT CONNECT ON ENDPOINT::Endpoint_Mirroring TO [Somedomain\witnessuser];
GO



-- Auf Zeuge
CREATE ENDPOINT Endpoint_Mirroring
    STATE=STARTED 
    AS TCP (LISTENER_PORT=7022) 
    FOR DATABASE_MIRRORING (ROLE=WITNESS)
GO
--Create a login for the partner server instances,
--which are both running as Mydomain\dbousername:
USE master ;
GO
CREATE LOGIN [Mydomain\dbousername] FROM WINDOWS ;
GO
--Grant connect permissions on endpoint to login account of partners.
GRANT CONNECT ON ENDPOINT::Endpoint_Mirroring TO [Mydomain\dbousername];
GO



-- Einrichten der Zugriffsberechtigung
--Login für Partner

USE master ;
GO
CREATE LOGIN [MYDOMAIN\dbousername] FROM WINDOWS ;
GO
--Grant connect permissions on endpoint to login account 
--of partners
GRANT CONNECT ON ENDPOINT::Endpoint_Mirroring TO [MYDOMAIN\dbousername];
GO

-- Anmeldungen für den Zeugen für jede Instanz
--Create a login for the witness server instance,
--which is running as SOMEDOMAIN\witnessuser:
USE master ;
GO
CREATE LOGIN [SOMEDOMAIN\witnessuser] FROM WINDOWS ;
GO
--Grant connect permissions on endpoint to login account 
--of partners
GRANT CONNECT ON ENDPOINT::Endpoint_Mirroring TO [SOMEDOMAIN\witnessuser];
GO