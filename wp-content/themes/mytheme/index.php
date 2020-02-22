<!DOCTYPE html>
<html>

<head>
    <meta charset="<?php bloginfo( 'charset' ); ?>">
    <title>
        <?php echo wp_get_document_title(); ?>
    </title>

    <link rel="stylesheet" href="<?php echo get_stylesheet_uri(); ?>" type="text/css" />

    <?php wp_head(); ?>
</head>

<body>
<header class="header">
    <h1><?php bloginfo( 'name' ); ?></h1>
    <h2><?php bloginfo( 'description' ); ?></h2>
</header>

<div class="middle">
    <?php
    // циклы вывода записей
    // если записи найдены
    if (have_posts()) {
        while (have_posts()) {
            the_post();

            if (is_single()) {
                echo '<h1>'. get_the_title() .'</h3>';
                echo get_the_content();
            } else {
                echo '<h3>' . get_the_title() . '</h3>';
            }

            the_content();
        }
    } else {
        echo '<p>Записей нет...</p>';
    }
    ?>
</div>

<!--<p>Кодировка: --><?php ////bloginfo('charset'); ?><!-- </p>-->

<footer class="footer">
    <?php echo date('Y') ?> © Я и компания моя
</footer>

<?php wp_footer(); ?>
</body>

</html>