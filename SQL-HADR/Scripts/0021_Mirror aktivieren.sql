--Spiegel

use master

--auf Spiegel
ALTER DATABASE Spiegelei 
    SET PARTNER = 
    'TCP://hv-SQL1.training.local:5022'
GO

--auf Prinzipal
ALTER DATABASE AdventureWorks 
    SET PARTNER = 'TCP://PARTNERHOST5.COM:7022'
GO


--auf Prinzipal Zeuge festlegen
ALTER DATABASE AdventureWorks 
    SET WITNESS = 
    'TCP://WITNESSHOST4.COM:7022'
GO