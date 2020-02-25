<?php
/*
* Plugin Name: Дополнительные поля для профиля
* Description: Плагин расширяющий профиль пользователя дополнительными метаполями
* Author:      Rostislav Ruts
* Version:     Версия плагина, например 2.0
*/

register_activation_hook( __FILE__, 'my_plugin_activate' );

add_action('switch_theme', 'my_plugin_activate');
add_action( 'show_user_profile', 'extra_user_profile_fields' );
add_action( 'edit_user_profile', 'extra_user_profile_fields' );
add_action( 'user_new_form', 'extra_user_profile_fields' );

add_shortcode('users_list', 'get_all_users'); // выводит список пользователей
add_shortcode('user_profile', 'get_user_info'); // инф-ция по выбранному юзеру

/*
 * my_plugin_activate() - при активации плагина кастомных метаполей создается новая страница.
 * Это страница с инф-цией по юзеру, которого вы выберете из списка на главной странице.*/
function my_plugin_activate() {
        $new_page_title = 'User profile page';
        $new_page_content = '[user_profile]'; //шорткод для вывода инф-ции по юзеру
        $new_page_template = ''; //указывается шаблон страницы (если надо)

        $page_check = get_page_by_title($new_page_title);
        $new_page = array(
            'post_type' => 'page',
            'post_title' => $new_page_title,
            'post_content' => $new_page_content,
            'post_status' => 'publish',
            'post_author' => 1,
        );
        if(!isset($page_check->ID)){
            $new_page_id = wp_insert_post($new_page);
            if(!empty($new_page_template)){
                update_post_meta($new_page_id, '_wp_page_template', $new_page_template);
            }
        }

}

// При активации плагина выведет кастомные метаполя в админке при регистрации нового юзера или редактировании
function extra_user_profile_fields( $user ) {

    /*
     * $address, $telephone, $gender, $status - переменные для выборки данных из БД.
     * decryptUserMeta() - рассшифровка с помощью приватного ключа
    */
    $address = !is_string($user) ?  decryptUserMeta(get_user_meta( $user->ID,'address', true ))  : '';
    $telephone = !is_string($user) ? decryptUserMeta(get_user_meta( $user->ID, 'telephone', true )) : '';
    $gender = !is_string($user) ? decryptUserMeta( get_user_meta( $user->ID,'gender', true )) : '';
    $status = !is_string($user) ? decryptUserMeta( get_user_meta( $user->ID, 'status', true )) : '';
    ?>
    <h3><?php _e("Extra profile information", "blank"); ?></h3>

    <table class="form-table">
        <tr>
            <th><label for="address"><?php _e("Address"); ?></label></th>
            <td>
                <input type="text" name="address" id="address" value="<?php echo $address; ?>" class="regular-text" required/><br />
                <span class="description"><?php _e("Please enter your address."); ?></span>
            </td>
        </tr>
        <tr>
            <th><label for="telephone"><?php _e("Telephone"); ?></label></th>
            <td>
                <input type="text" name="telephone" id="telephone" value="<?php echo $telephone; ?>" class="regular-text" required/><br />
                <span class="description"><?php _e("Please enter your telephone."); ?></span>
            </td>
        </tr>
        <tr>
            <th><label for="gender"><?php _e("Sex"); ?></label></th>
            <td>
                <select name="gender" id="gender"  class="regular-text" required>
                    <option value="male" <?php echo ($gender == 'male') ? 'selected' : '';?>>Male</option>
                    <option value="female" <?php echo ($gender == 'female') ? 'selected' : '';?>>Female</option>
                </select><br>
                <span class="description"><?php _e("Please enter your gender."); ?></span>
            </td>
        </tr>
        <tr>
            <th><label for="status"><?php _e("Status"); ?></label></th>
            <td>

                <select name="status" id="status" class="regular-text" required>
                    <option value="married" <?php echo ($status == 'married') ? 'selected' : '';?>>Married</option>
                    <option value="not married" <?php echo ($status == 'not married') ? 'selected' : '';?>>Not married</option>
                </select><br>
                <span class="description"><?php _e("Please enter your status."); ?></span>
            </td>
        </tr>
    </table>
<?php } ?>


<?php
/*
 * save_extra_user_profile_fields() - сохраняет данные в БД.
 * encryptUserMeta() - шифрует данные публичным ключом.
*/
add_action( 'personal_options_update', 'save_extra_user_profile_fields' );
add_action( 'edit_user_profile_update', 'save_extra_user_profile_fields' );
add_action( 'user_register', 'save_extra_user_profile_fields' );

function save_extra_user_profile_fields( $user_id )
{
    if (!current_user_can('edit_user', $user_id)) {
        return false;
    }

    update_user_meta($user_id, 'address', encryptUserMeta($_POST['address']));
    update_user_meta($user_id, 'telephone', encryptUserMeta($_POST['telephone']));
    update_user_meta($user_id, 'gender', encryptUserMeta($_POST['gender']));
    update_user_meta($user_id, 'status', encryptUserMeta($_POST['status']));
}

/*
 * @param $data string
 */
function encryptUserMeta($data){
    $isPublicKey = file_get_contents(__DIR__.'/certs/public.pem');
    $key = openssl_get_publickey($isPublicKey);
    $encrypted = '';
    if(openssl_public_encrypt($data, $encrypted, $key)){
        return chunk_split(base64_encode($encrypted));
    }

    return false;
}

/*
 * @param $data string
 */
function decryptUserMeta($data){
    $isPrivatKey = file_get_contents(__DIR__.'/certs/private.pem');
    $key = openssl_pkey_get_private($isPrivatKey, '1234');
    $decrypted = '';
    if(openssl_private_decrypt(base64_decode($data), $decrypted, $key)){
        return $decrypted;
    }

    return false;
}
// get_all_users() - выводит список всех юзеров
function get_all_users(){
    /*
    Template Name: Users Page
    */

    $number 	= 5; //кол-во юзеров на одной странице
    $paged 		= (get_query_var('page')) ? get_query_var('page') : 1;
    $offset 	= ($paged - 1) * $number;
    $users 		= get_users();
    $query 		= get_users('&offset='.$offset.'&number='.$number);
    $total_users = count($users);
    $total_query = count($query);
    $total_pages = ceil($total_users / $number);

    echo '<ul id="users">';
    foreach($query as $q) { ?>
        <li class="user clearfix">
            <!-- Краткая информация о пользователе -->
            <div class="user-data">
                <!-- Имя -->
                <h4 class="user-name">
                    <? $url = add_query_arg(['user'=>$q->ID], get_permalink( get_page_by_title('User profile page')->ID)); ?>
                    <a href="<?php echo $url; ?>">
                        <?php echo get_the_author_meta('display_name', $q->ID);?>
                    </a>
                </h4>
            </div>

        </li>
    <?php }
    echo '</ul>';
//    var_dump($total_query);
//    var_dump($total_users);
    if ($total_users > $total_query) {
        echo '<div id="pagination" class="clearfix">';
        echo '<span class="pages">Страницы:</span>';
        /* Получаем текущий номер страницы */
        $current_page = max(1, get_query_var('page'));
        $big = 999999999; // уникальное число
        echo paginate_links(array(
            'base'    => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
            'format'  => '?paged=%#%',
            'current' => $current_page,
            'total' => $total_pages,
            'prev_next' => true,
            'prev_text'    => __('« Previous'),
            'next_text'    => __('Next »'),
            'type' => 'plain',
        ));
        echo '</div>';

    }
}
// Инф-ция по выбраному юзеру
function get_user_info(){

    $user = get_userdata($_GET['user']);

    echo 'User firstname: '            . $user->user_firstname     . '<br />';
    echo 'User lastname: '            . $user->user_lastname     . '<br />';
    echo 'email: '            . $user->user_email     . '<br />';
    echo 'address: '       . decryptUserMeta($user->address) . '<br />';
    echo 'telephone: '        . decryptUserMeta($user->telephone)  . '<br />';
    echo 'gender: '   . decryptUserMeta($user->gender)   . '<br />';
    echo 'status: '               . decryptUserMeta($user->status)            . '<br />';
 }


