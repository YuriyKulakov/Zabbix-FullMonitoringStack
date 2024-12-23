# Полный стек мониторинга Zabbix + Grafana 

- [Official Zabbix Dockerfiles](https://github.com/zabbix/zabbix-docker)
- [Zabbix plugin for Grafana dashboard](https://github.com/grafana/grafana-zabbix)

Этот docker-compose разворачивает полный стек для организации корпаротивной ситемы мониторинга.

- **Postgresql:**                16.2
- **Zabbix Server:**             7.0.3
- **Zabbix Frontend NGINX:**     7.0.3
- **Zabbix Agent:**              7.0.3
- **Grafana:**                   11.2.0

## Инструкция 

### Клонируем репозиторий
```
git clone https://github.com/YuriyKulakov/zabbix-docker-stack.git
cd zabbix-docker
```

### Правим настроики в файле `.env`

### Запускаем docker-compose:
```
docker-compose up -d
```

Первый запуск может длится примерно 1-2  минуты.

### Zabbix `localhost:8080`
default user password 
- **login:** Admin
- **password:** zabbix


**Zabbix server** - Host / change use connect from DNS `zabbix-agent`

### Grafana `localhost:3000` 

default user password (change `grafana/grafana.ini` auth.anonymous enabled)
- **login:** admin
- **password:** 12345

Test data source

`Grafana -> Connections -> Data sources -> zabbix -> Test`

### Debug
```
docker-compose logs --tail=1 -f
```
