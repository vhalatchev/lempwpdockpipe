#!/bin/bash
  /usr/bin/mysqld_safe &
  sleep 10s
  #mysql_install_db
  #sleep 5
  #/usr/bin/mysql -uroot
  #/bin/bash
  
  WORDPRESS_PASSWORD=`P.assword321`
  MYSQL_ROOT_PASSWORD=`A.dmin123`
  WORDPRESS_HOST="172.31.40.30"
  
  echo mysql root password: $MYSQL_ROOT_PASSWORD
  echo wordpress password: $WORDPRESS_PASSWORD
  echo wordpress host: $WORDPRESS_HOST
  
  
  mysqladmin -u root password $MYSQL_ROOT_PASSWORD
  mysql -u root -p $MYSQL_ROOT_PASSWORD -e "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY '$MYSQL_ROOT_PASSWORD' WITH GRANT OPTION; FLUSH PRIVILEGES;"
  mysql -u root -p $MYSQL_ROOT_PASSWORD -e "CREATE DATABASE wordpress_db_rmt; GRANT ALL PRIVILEGES ON wordpress_db_rmt.* TO 'wp_user_rmt'@'172.31.40.30' IDENTIFIED BY '$WORDPRESS_PASSWORD'; FLUSH PRIVILEGES;"
  mysql -h $WORDPRESS_HOST -u wp_user_rmt -p $WORDPRESS_PASSWORD wordpress_db_rmt
  killall mysqld
