#!/bin/bash
#wait for the SQL Server to come up
sleep 10
#run TSQL attach.sql
#/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P My_P@ssw0rd! -d master -Q "USE [master];CREATE DATABASE [virtdbnxContext] ON (FILENAME = '/var/opt/mssql/sqldata/udb/virtdbnxContext.mdf'),(FILENAME = '/var/opt/mssql/sqldata/udb/virtdbnxContext_log.ldf') for ATTACH;"
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P My_P@ssw0rd! -d master -Q "USE [master];CREATE DATABASE [virtdbnxContext] CONTAINMENT = NONE ON PRIMARY ( NAME = N'virtdbnxContext', FILENAME = N'/var/opt/mssql/sqldata/udb/virtdbnxContext.mdf', SIZE = 10GB , MAXSIZE = UNLIMITED, FILEGROWTH = 5056KB ) LOG ON ( NAME = N'virtdbnxContext_log', FILENAME = N'/var/opt/mssql/sqldata/udb/virtdbnxContext_log.ldf' , SIZE = 4GB , MAXSIZE = UNLIMITED, FILEGROWTH = 10%)"
#Keep Alive
while true; do sleep 1; done
