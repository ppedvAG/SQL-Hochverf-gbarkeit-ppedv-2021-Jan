--FÜr Cluster


ALTER SERVER CONFIGURATION SET FAILOVER CLUSTER PROPERTY FailureConditionLevel = 0;  

--Für AVG
ALTER AVAILABILITY GROUP AG1 SET (FAILURE_CONDITION_LEVEL = 5);  
ALTER AVAILABILITY GROUP AG1 SET (HEALTH_CHECK_TIMEOUT = 60000);  


/*

Transact-SQL Value	Level	Automatic Is Failover Initiated When…
1	One	On server down. The SQL Server service stops because of a failover or restart.
2	Two	On server unresponsive. Any condition of lower value is satisfied, the SQL Server service is connected to the cluster and the health check timeout threshold is exceeded, or the current primary replica is in a failed state.
3	Three	On critical server error. Any condition of lower value is satisfied or an internal critical server error occurs.

This is the default level.
4	Four	On moderate server error. Any condition of lower value is satisfied or a moderate Server error occurs.
5	Five	On any qualified failure condi

*/