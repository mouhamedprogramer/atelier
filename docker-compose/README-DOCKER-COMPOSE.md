# JHipster generated Docker-Compose configuration

## Usage

Launch all your infrastructure by running: `docker compose up -d`.

## Configured Docker services

### Service registry and configuration server:

- [Consul](http://localhost:8500)

### Applications and dependencies:

- edt (microservice application)
- edt's mysql database
- gateway (gateway application)
- gateway's postgresql database
- gir (microservice application)
- gir's postgresql database
- gp (microservice application)
- gp's postgresql database

### Additional Services:

- [Prometheus server](http://localhost:9090)
- [Prometheus Alertmanager](http://localhost:9093)
- [Grafana](http://localhost:3000)
- [Keycloak server](http://localhost:9080)
