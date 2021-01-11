--Diagnose 
ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG ON; 

ALTER SERVER CONFIGURATION SET DIAGNOSTICS LOG OFF;  

ALTER SERVER CONFIGURATION  
SET DIAGNOSTICS LOG PATH = 'C:\_logs';  

ALTER SERVER CONFIGURATION   
SET DIAGNOSTICS LOG MAX_SIZE = 10 MB;  


!!md c:\Logs

EXEC sp_server_diagnostics;
/*

Ebene	Bedingung	und Beschreibung
0	Kein automatischer Failover oder Neustart	
	Gibt an, dass bei einer Fehlerbedingung nicht automatisch ein Failover oder Neustart ausgelöst wird. 
	Diese Ebene ist nur für die Systemwartung vorgesehen.

1	Failover oder Neustart bei Serverausfall	
	Gibt an, dass ein Neustart oder ein Failover des Server ausgelöst wird, 
	wenn die folgende Bedingung zutrifft:

	SQL Server-Dienst ist ausgefallen.

2	Failover oder Neustart bei nicht reagierendem Server	
	Gibt an, dass ein Neustart oder ein Failover des Server ausgelöst wird, 
	wenn eine der folgenden Bedingungen zutrifft:

	SQL Server-Dienst ist ausgefallen.

	SQL Server-Instanz reagiert nicht 
	(die Ressourcen-DLL kann von sp_server_diagnostics keine Daten innerhalb der 
	durch die HealthCheckTimeout-Einstellungen vorgegebenen Zeit empfangen).

3*	Failover oder Neustart bei wichtigen Serverfehlern	
	Gibt an, dass ein Neustart oder ein Failover des Server ausgelöst wird, wenn eine der folgenden Bedingungen zutrifft:

	SQL Server-Dienst ist ausgefallen.

	SQL Server-Instanz reagiert nicht 
		(die Ressourcen-DLL kann von sp_server_diagnostics keine Daten innerhalb der durch die 
		HealthCheckTimeout-Einstellungen vorgegebenen Zeit empfangen).

		Gespeicherte Systemprozedur sp_server_diagnostics gibt einen Systemfehler zurück.

4	Failover oder Neustart auf mittelschweren Serverfehlern	Gibt an, 
	dass ein Neustart oder ein Failover des Server ausgelöst wird, wenn eine der folgenden Bedingungen zutrifft:

	SQL Server-Dienst ist ausgefallen.

	SQL Server-Instanz reagiert nicht 
	(die Ressourcen-DLL kann von sp_server_diagnostics keine Daten innerhalb der durch die 
	HealthCheckTimeout-Einstellungen vorgegebenen Zeit empfangen).

	Gespeicherte Systemprozedur sp_server_diagnostics gibt einen Systemfehler zurück.

	Gespeicherte Systemprozedur sp_server_diagnostics gibt einen Ressourcenfehler zurück.

5	Failover oder Neustart bei qualifizierten Fehlerbedingungen	

	Gibt an, dass ein Neustart oder ein Failover des Server ausgelöst wird, wenn eine der folgenden Bedingungen zutrifft:

	SQL Server-Dienst ist ausgefallen.

	SQL Server-Instanz reagiert nicht 
	(die Ressourcen-DLL kann von sp_server_diagnostics keine Daten innerhalb der durch die
	HealthCheckTimeout-Einstellungen vorgegebenen Zeit empfangen).

	Gespeicherte Systemprozedur sp_server_diagnostics gibt einen Systemfehler zurück.

	Gespeicherte Systemprozedur sp_server_diagnostics gibt einen Ressourcenfehler zurück.

	Gespeicherte Systemprozedur sp_server_diagnostics gibt Fehler bei der Abfrageverarbeitung zurück.
*/