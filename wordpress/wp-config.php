<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db_rmt' );

/** Database username */
define( 'DB_USER', 'wp_user_rmt' );

/** Database password */
define( 'DB_PASSWORD', 'P.assword321' );

/** Database hostname */
define( 'DB_HOST', '172.31.44.224' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/** The filesystem method for Wordpress*/
define( 'FS_METHOD', 'direct' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '~-:yz1%/TDkJ@;2BH?=:-[k&_Dv.*..:cg(wa2hrN,wa2Y1z%zQ$uIp98qSC+#Ef');
define('SECURE_AUTH_KEY',  '-~U%.zX,L-2xHgq7NrXF+!@!?5Oec@BiKDW6#$d/}Zs,(iY~mZ}#}Pf.wJA_b!=M');
define('LOGGED_IN_KEY',    'rc2.hO^}por~5ATT&N9pBBSH9tGGWGOH^%4@=t#|ydk[+<6#<LdE${KnQ|u}fmn0');
define('NONCE_KEY',        'RpD+95Y!Uk3Ws4.IcB=.Svk&|!A5.ga bi8@HQJHx/ATr-I[kS]$ex5zs~L>:*(s');
define('AUTH_SALT',        '3~GJL~h+|(%zkz.RxiCSw }0/p-elK0&+grTDy,[~DCT%ZmOlrpS>`Y| DZ++#S{');
define('SECURE_AUTH_SALT', '.Y?wQ_Tz$H@dy(~-JDh_Jkp4]CwK{|m|kG[`Q2@ZLO)uGf;,q+Vp1x-$GBGB-<D4');
define('LOGGED_IN_SALT',   'CCuKcR<XngJs$z9|gND00J-}N|8YX=6BUGZ8AJz!}$Y7=)#p0S@,DC%Qu,ka0AZ}');
define('NONCE_SALT',       '2=+/+-I@wb{dK1-R*-so^{`T*Ubt)Kc5d@3G2-8d-RE[kYLR$]xYox__L_@85rbx');
/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
