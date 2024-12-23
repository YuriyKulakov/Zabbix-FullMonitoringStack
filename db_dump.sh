#!/bin/sh
# RUN BEFORE UPGRADING POSTGRES IMAGE.
docker-compose down
 
docker-compose up -d postgres
docker-compose exec postgres pg_dumpall -U zabbix > pgdump.sql
docker-compose down
