#! /bin/bash
docker-compose exec mariadb sh -c 'mysql -uroot -p"$MARIADB_ROOT_PASSWORD" $MARIADB_DATABASE'
