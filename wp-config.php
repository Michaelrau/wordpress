<?php
/** Enable W3 Total Cache */
define('WP_CACHE', true); // Added by W3 Total Cache

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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '.j!p@o4^OWgAj;ccL%F,7JKI0W?ccQIeXaH?G?T j=OT|)4eSq{cH>DsG/xH[#4N');
define('SECURE_AUTH_KEY',  '<aps !mo?JKI|oB#[mcl=0G&4MLU,j<Oo,4[@L@,l(GdTjY|pi7-Hw/(]{~eG8Hh');
define('LOGGED_IN_KEY',    '|z,>:Wv{^amRD;y0r88SKJ(b)Jo<|H@<,xiA{G$!xBq7m?CN+&[yMM_i(* ,ih6k');
define('NONCE_KEY',        'cp+--s?DK%n %D.Ax~^T40RadIr*=K9mk]c;)oF2K8I)-Ln7f$:JPW>-WiM6l<-}');
define('AUTH_SALT',        'o%qm7Wr;GO^Mm)>:&I}KG_UI:TMmuP<wH~?M+Tsi9w$#;qr$fhR!X,.At#~Ld]}4');
define('SECURE_AUTH_SALT', '-8KIX/cH!5hx9&|*3qm7G3H&]z(p)!QY2Q~zYDuZ+eE&D+^ei8x X-[X(|i+hym|');
define('LOGGED_IN_SALT',   'P/oeP!:)46?hqpN mQ>d9;$,n-zCc`q-GF8)bdUR@a&]-POPrWz6Bb?*!d5ZtTcf');
define('NONCE_SALT',       'u|u<`FWfd3%uFuu+0KDQ9UA>N5e~l4E_[90X6N3j~{NNP{xN,_qAVTRrbAWUsjz:');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');

define('FS_METHOD', 'direct');
define( 'FS_CHMOD_DIR', ( 0755 & ~ umask() ) );
define( 'FS_CHMOD_FILE', ( 0644 & ~ umask() ) );