<?php
/*
 * Plugin Name: Дополнительные поля для профиля
 * Description: Плагин расширяющий профиль пользователя дополнительными метаполями
 * Author:      Rostislav Ruts
 * Version:     Версия плагина, например 1.0
*/


### дополнительные данные на странице профиля
add_action('show_user_profile', 'my_profile_new_fields_add');
add_action('edit_user_profile', 'my_profile_new_fields_add');

add_action('personal_options_update', 'my_profile_new_fields_update');
add_action('edit_user_profile_update', 'my_profile_new_fields_update');

function my_profile_new_fields_add(){
    global $user_id;

    $accaunt = get_user_meta( $user_id, "user_accaunt", 1 );

    ?>
    <h3>Дополнительные данные</h3>
    <table class="form-table">
        <tr>
            <th><label for="user_fb_txt">Банковский счет</label></th>
            <td>
                <input type="text" name="user_accaunt" value="<?php echo $accaunt ?>"><br>
            </td>
        </tr>
    </table>
    <?php
}

// обновление
function my_profile_new_fields_update(){
    global $user_id;

    update_user_meta( $user_id, "user_accaunt", $_POST['user_accaunt'] );
}