docker-oracle-xe-11g
============================

## Oracle XE - Dockerfile

This repository contains a **Dockerfile** to create a docker container with Oracle Express Edition 11g Release 2

This **Dockerfile** has been published as a [trusted build](https://index.docker.io/u/alexeiled/docker-oracle-xe-11g/) to the public [Docker Registry](https://index.docker.io/).


### How-To: Build this image

You will need to download Oracle XE from Oracle [site](http://www.oracle.com/technetwork/database/database-technologies/express-edition/downloads/index.html).

Then run following command to convert downloaded **rpm** package into **deb**.
```
sudo alien oracle-xe-11.2.0-1.0.x86_64.rpm
```

### How-To: Install and Use


```
docker pull alexeiled/docker-oracle-xe-11g
```

Run with 1521 and 8080 ports opened and 2GB shared memory:
```
docker run -d --shm-size=2g -p 1521:1521 -p 8080:8080 alexeiled/docker-oracle-xe-11g
```

Connect database with following setting:
```
hostname: localhost
port: 1521
sid: xe
username: system
password: oracle
```

Password for SYS
```
oracle
```

Connect to Oracle Application Express web management console with following settings:
```
url: http://localhost:8080/apex
workspace: internal
user: admin
password: oracle
```

Do not forget to change `admin` password.
