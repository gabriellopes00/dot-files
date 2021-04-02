# running mysql with docker (user=root)

docker pull mysql
docker run -p 3310:3306 --name mysql-container -e MYSQL_ROOT_PASSWORD=asdf -e MYSQL_DATABASE=test -d mysql

# running mongodb with docker

docker pull mongo
docker run -d --name mongodb -p 27017:27017 -e AUTH=no mongo

# running sqlserver with docker

docker pull mcr.microsoft.com/mssql/server
docker run --name sqlserver -e "ACCEPT_EULA=Y" -e
"MSSQL_SA_PASSWORD=1q2w3e4r@#$" -p 1433:1433 -d mcr.microsoft.com/mssql/server

# running postresql with docker (user=postgres)

docker pull postgres
docker run --name some-postgres -e POSTGRES_PASSWORD=psql -p 5432:5432 -d postgres
