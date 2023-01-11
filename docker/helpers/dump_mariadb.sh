#! /bin/bash

docker-compose exec mariadb sh -c 'exec mysqldump -uroot -p"$MARIADB_ROOT_PASSWORD" $MARIADB_DATABASE -r /docker-entrypoint-initdb.d/$MARIADB_DATABASE.sql'

exit $?
