<?php
// ** Réglages MySQL - Vous pouvez obtenir ces informations auprès de votre hébergeur ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'wordpress' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'asibille' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '1' );

/** Adresse de l'hébergement MySQL. */
define( 'DB_HOST', 'mariadb' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8' );

/** Type de collation de la base de données. N'y touchez que si vous savez ce que vous faites. */
define( 'DB_COLLATE', '' );

/**#@+
 * Clés uniques d'authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Vous pouvez modifier ces phrases à n'importe quel moment, afin d'invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 */
define( 'AUTH_KEY',         'mettez ici votre phrase unique' );
define( 'SECURE_AUTH_KEY',  'mettez ici votre phrase unique' );
define( 'LOGGED_IN_KEY',    'mettez ici votre phrase unique' );
define( 'NONCE_KEY',        'mettez ici votre phrase unique' );
define( 'AUTH_SALT',        'mettez ici votre phrase unique' );
define( 'SECURE_AUTH_SALT', 'mettez ici votre phrase unique' );
define( 'LOGGED_IN_SALT',   'mettez ici votre phrase unique' );
define( 'NONCE_SALT',       'mettez ici votre phrase unique' );

/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N'utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés!
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguement de WordPress.
 *
 * En mettant la valeur suivante à "true", vous activez l'affichage des
 * notifications d'erreurs pendant votre phase de développement.
 * Il est fortement recommandé aux développeurs d'utiliser WP_DEBUG
 * dans leur environnement de développement.
 *
 * Pour obtenir des informations sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, consultez le Codex :
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* C'est tout, ne touchez pas à ce qui suit ! Bon blogging ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', dirname( FILE ) . '/' );
}
    
/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once( ABSPATH . 'wp-settings.php' );