<?php
/**
 * Основные параметры WordPress.
 *
 * Скрипт для создания wp-config.php использует этот файл в процессе
 * установки. Необязательно использовать веб-интерфейс, можно
 * скопировать файл в "wp-config.php" и заполнить значения вручную.
 *
 * Этот файл содержит следующие параметры:
 *
 * * Настройки MySQL
 * * Секретные ключи
 * * Префикс таблиц базы данных
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Параметры MySQL: Эту информацию можно получить у вашего хостинг-провайдера ** //
/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wordpress' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'root' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'MoneyRoot<25>!' );

/** Имя сервера MySQL */
define( 'DB_HOST', 'localhost' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

/**#@+
 * Уникальные ключи и соли для аутентификации.
 *
 * Смените значение каждой константы на уникальную фразу.
 * Можно сгенерировать их с помощью {@link https://api.wordpress.org/secret-key/1.1/salt/ сервиса ключей на WordPress.org}
 * Можно изменить их, чтобы сделать существующие файлы cookies недействительными. Пользователям потребуется авторизоваться снова.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'dkB7T*L~TRXW~8^uxo3{Z>kKY+Y|L#R?{R`5s61z8CJgjW .$ZB$nN]*Ks-5K@Gb' );
define( 'SECURE_AUTH_KEY',  ',0[yS`0X=h?W3,xdd?;x4B<~N4Sg$D_VVW@@%im(1q;OZ4] s[DQRbNo#8[#%xlE' );
define( 'LOGGED_IN_KEY',    'Y(Yz]>m|CSoVMf<H $)X;]M|J}sSZAS8rAXKCo|Fg;b;F,{3tgTO|[o,u >;g-{,' );
define( 'NONCE_KEY',        'c3rUE-^S+WngN?Gp!1}3N+1]mnQK?2tZ:`cFoHPTey:rcQBzwbc:^|C{HS,;[F0L' );
define( 'AUTH_SALT',        'M#0/4{miN1mj{8,80Tv<MuP7a@*H`#dfD-iMI50B^S/r+QD6:91j^Mq=PDHM{1&?' );
define( 'SECURE_AUTH_SALT', '<l;6tdeAv_Jfw9#Y}6:N<Q,qVIO.?FUxZT&Py*^9d=4GRR#yuLL_,E-2) _)*A?%' );
define( 'LOGGED_IN_SALT',   'mQb}/7hpEiFo>8vhR5cY8(!Wh.zL5~cMk&QIi A1QSJ2gC~*OwalArl~_&+W3&?i' );
define( 'NONCE_SALT',       '_;2`E Htn@G*>2?WK[fampxBl>@|dMx4P%l+BZua~*Fq(.uvn2JgD[Gl:FjyL{rJ' );

/**#@-*/

/**
 * Префикс таблиц в базе данных WordPress.
 *
 * Можно установить несколько сайтов в одну базу данных, если использовать
 * разные префиксы. Пожалуйста, указывайте только цифры, буквы и знак подчеркивания.
 */
$table_prefix = 'wp_';

/**
 * Для разработчиков: Режим отладки WordPress.
 *
 * Измените это значение на true, чтобы включить отображение уведомлений при разработке.
 * Разработчикам плагинов и тем настоятельно рекомендуется использовать WP_DEBUG
 * в своём рабочем окружении.
 *
 * Информацию о других отладочных константах можно найти в Кодексе.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', true );

/* Это всё, дальше не редактируем. Успехов! */

/** Абсолютный путь к директории WordPress. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Инициализирует переменные WordPress и подключает файлы. */
require_once( ABSPATH . 'wp-settings.php' );

