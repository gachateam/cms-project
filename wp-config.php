<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'e=txNO((?0WnYAvMl!);E]GrJ#Uo`OE-D(cF3x5>9Xn1[:O_]7f-U/;{eVfOrG7`' );
define( 'SECURE_AUTH_KEY',  'zG,YR*R:U`mOZ@H+a{77Ik:d7F_JvlE.;2UO}YTVAc_fO]I2y8xTvw{!`&,&NIw8' );
define( 'LOGGED_IN_KEY',    'r-pwF;.{!@Qb<$|Rn2 RUjBR-iL>k?`L:?4E)<)$A+kd>m0.F67pTrZ^;F`riu=/' );
define( 'NONCE_KEY',        '%~_Y-4;$AEpOei,.zU74Ga]sVAserM(7,(nzv=kV@@ib}}D)[fbght^`3OI5(dC8' );
define( 'AUTH_SALT',        'LuDx_eF?3).%LtX`50iq9[lq)hHxzH^mR_!0q~e7!A#P]3G]4*;:)Z;l$SdQ_3pm' );
define( 'SECURE_AUTH_SALT', '0Z$aB Em3~(5&X=sS/)V<`WGG O(Y.Vm8>~zhJF`;_u2y-f^r^:0Jkhz#v][AB2e' );
define( 'LOGGED_IN_SALT',   '>]2<^j_Kc8(qV)vnFw[r:|M2M,rP=sK-jv5]~?Ud~YK1$-24j$MH1]swg{y$Yr8g' );
define( 'NONCE_SALT',       'Ot)xzf&0zjmSMT[^H:]z%mG7.%+?;OpF^! -mr,DW~[Shq/pZHv96<yi /Up45c/' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
