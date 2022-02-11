To start MySQL and check that data has been added successfully, from you project’s directory run on a terminal:

``` bash
$ docker-compose up -d mysql

$ docker exec -it mysql bash

:/# mysql -udbuser -pchangeme

mysql> use books;
mysql> show tables;
```

useful links: [synchronize elasticsearch with mysql](https://towardsdatascience.com/how-to-synchronize-elasticsearch-with-mysql-ed32fc57b339)