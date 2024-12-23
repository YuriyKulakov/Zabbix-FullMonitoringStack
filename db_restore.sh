#!/bin/sh
# RUN AFTER UPGRADING POSTGRES IMAGE.

docker-compose up -d postgres
docker cp pgdump.sql postgres:./
docker-compose exec -T postgres psql -U zabbix zabbix < pgdump.sql
docker-compose down
