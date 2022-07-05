set names 'utf8';
create database wordpress_db_rmt character set utf8 collate utf8_general_ci;;
create user 'wp_user_rmt'@'%' identified by 'P.assword123';
grant all on wordpress_db_rmt.* to ‘wp_user_rmt’@’%’ identified by ‘P.assword321’;
use wordpress_db_rmt;
flush privileges;
