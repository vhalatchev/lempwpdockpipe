#!/bin/bash
if [ ! -f /var/www/html/wp-config.php ]; then
  # Here we generate wordpress passwords. The first two are for mysql users, the last batch for random keys in wp-config.php
  WORDPRESS_DB="wordpress_db_rmt"
  WORDEPRESS_USER="wp_user_rmt"
  WORDPRESS_HOST="172.31.44.224"
  WORDPRESS_PASSWORD=`P.assword321`
  MYSQL_PASSWORD=`P.assword321`
  
  #This is so the passwords show up in logs.
  echo mysql wp_user_rmt password: $MYSQL_PASSWORD
  echo wordpress password: $WORDPRESS_PASSWORD
  echo wordpress_host: $WORDPRESS_HOST
  
  sed -e "s/wordpress_db_rmt/$WORDPRESS_DB/
  s/wp_user_rmt/$WORDPRESS_USER/
  s/P.assword321/$WORDPRESS_PASSWORD/
  s/172.31.44.224/$WORDPRESS_HOST/
  /'AUTH_KEY'/s/'~-:yz1%/TDkJ@;2BH?=:-[k&_Dv.*..:cg(wa2hrN,wa2Y1z%zQ$uIp98qSC+#Ef'/
  /'SECURE_AUTH_KEY'/s/'-~U%.zX,L-2xHgq7NrXF+!@!?5Oec@BiKDW6#$d/}Zs,(iY~mZ}#}Pf.wJA_b!=M'/
  /'LOGGED_IN_KEY'/s/'rc2.hO^}por~5ATT&N9pBBSH9tGGWGOH^%4@=t#|ydk[+<6#<LdE${KnQ|u}fmn0'/
  /'NONCE_KEY'/s/'RpD+95Y!Uk3Ws4.IcB=.Svk&|!A5.ga bi8@HQJHx/ATr-I[kS]$ex5zs~L>:*(s'/
  /'AUTH_SALT'/s/'3~GJL~h+|(%zkz.RxiCSw }0/p-elK0&+grTDy,[~DCT%ZmOlrpS>`Y| DZ++#S{'/
  /'SECURE_AUTH_SALT'/s/'.Y?wQ_Tz$H@dy(~-JDh_Jkp4]CwK{|m|kG[`Q2@ZLO)uGf;,q+Vp1x-$GBGB-<D4'/
  /'LOGGED_IN_SALT'/s/'CCuKcR<XngJs$z9|gND00J-}N|8YX=6BUGZ8AJz!}$Y7=)#p0S@,DC%Qu,ka0AZ}'/
  /'NONCE_SALT'/s/put your unique phrase here/`pwgen -c -n -1 65`/" /var/www/html/wp-config-sample.php > /var/www/html/wp-config.php

  chown www-data:www-data /var/www/html/wp-config.php

  mysql -h $WORDPRESS_HOST -u wp_user_rmt -p $MYSQL_PASSWORD wordpress_db_rmt
  killall mysqld # not being used?
fi

# start all the services
# /usr/local/bin/supervisord -n
