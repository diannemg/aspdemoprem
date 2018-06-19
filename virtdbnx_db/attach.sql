USE [master];
GO
CREATE DATABASE [virtdbnxContext-bff95038-b338-486a-a297-086e669f9798] 
   ON (FILENAME = '/var/opt/mssql/sqldata/udb/virtdbnxContext-bff95038-b338-486a-a297-086e669f9798.mdf'),
   (FILENAME = '/var/opt/mssql/sqldata/udb/virtdbnxContext-bff95038-b338-486a-a297-086e669f9798_log.ldf') 
for ATTACH;
GO