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
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=1q2w3e4r@#$" -p 1433:1433 --name sqlserver -h sqlserver_host -d mcr.microsoft.com/mssql/server:2019-latest
```

- ### postresql (user=postgres)

```docker
docker pull postgres
docker run --name some-postgres -e POSTGRES_PASSWORD=psql -p 5432:5432 -d postgres
```

# Apache 🪶

_**folder_to_expose_on_server**_ Must be changed to the path to folder with the files which will run on the server

- ### server

```docker
docker pull httpd
docker run -dit --name apache-server -p 8080:80 -v folder_to_expose_on_server/:/usr/local/apache2/htdocs/ httpd
```

- ### php

```docker
docker pull php:8.0-apache
docker run -dit --name php-apache -p 8080:80 -v folder_to_expose_on_server:/var/www/html php:8.0-apache
```
