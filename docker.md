# Run database with docker 🐋

- ### mysql (user=root)

```docker
docker pull mysql
docker run -p 3310:3306 --name mysql-container -e MYSQL_ROOT_PASSWORD=asdf -e MYSQL_DATABASE=test -d mysql
```

- ### mongodb

```docker
docker pull mongo
docker run -d --name mongodb -p 27017:27017 -e AUTH=no mongo
```

- ### sqlserver (user=sa)

```docker
docker pull mcr.microsoft.com/mssql/server:2019-latest
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=1q2w3e4r@#$" -p 1433:1433
--name sqlserver -h sqlserver_host -d mcr.microsoft.com/mssql/server:2019-latest
```

- ### postresql (user=postgres)

```docker
docker pull postgres
docker run --name some-postgres -e POSTGRES_PASSWORD=psql -p 5432:5432 -d postgres
```
