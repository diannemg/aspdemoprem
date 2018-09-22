#!/bin/bash
#wait for the SQL Server to come up
sleep 10
#run TSQL attach.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P My_P@ssw0rd! -d master -Q "USE [master];CREATE DATABASE [virtdbnxContext-bff95038-b338-486a-a297-086e669f9798] ON (FILENAME = '/var/opt/mssql/sqldata/udb/virtdbnxContext-bff95038-b338-486a-a297-086e669f9798.mdf'),(FILENAME = '/var/opt/mssql/sqldata/udb/virtdbnxContext-bff95038-b338-486a-a297-086e669f9798_log.ldf') for ATTACH;"
#Keep Alive
while true; do sleep 1; done
