# keycloak-jdbc-ping
keycloak Dockerfile(jdbc-ping, postgres)

## quickstart
```console
$ docker run --name postgres -e POSTGRES_DATABASE=keycloak -e POSTGRES_USER=keycloak -e POSTGRES_PASSWORD=password -e POSTGRES_ROOT_PASSWORD=password -d postgres

$ docker run -dP --name keycloak --link postgres:postgres -e POSTGRES_DATABASE=keycloak -e POSTGRES_USER=keycloak -e POSTGRES_PASSWORD=password moremagic/keycloak-jdbc-ping
```
