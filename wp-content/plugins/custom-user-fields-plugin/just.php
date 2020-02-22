<?php
function extra_user_profile_fields( $user ) {
    $address = ($user) ?  decryptUserMeta(base64_decode(get_the_author_meta( 'address', $user->ID )))  : '';
    $telephone = ($user) ?  decryptUserMeta(base64_decode(get_the_author_meta( 'telephone', $user->ID )))  : '';
    $postalcode = ($user) ?  decryptUserMeta(base64_decode(get_the_author_meta( 'postalcode', $user->ID )))  : '';
    ?>
    <h3><?php _e("Extra profile information", "blank"); ?></h3>

    <table class="form-table">
        <tr>
            <th><label for="address"><?php _e("Address"); ?></label></th>
            <td>
                <input type="text" name="address" id="address" value="<?php echo $address; ?>" class="regular-text" /><br />
                <span class="description"><?php _e("Please enter your address."); ?></span>
            </td>
        </tr>
        <tr>
            <th><label for="telephone"><?php _e("Telephone"); ?></label></th>
            <td>
                <input type="text" name="telephone" id="telephone" value="<?php echo $telephone; ?>" class="regular-text" /><br />
                <span class="description"><?php _e("Please enter your telephone."); ?></span>
            </td>
        </tr>
        <tr>
            <th><label for="postalcode"><?php _e("Postal Code"); ?></label></th>
            <td>
                <input type="text" name="postalcode" id="postalcode" value="<?php echo $postalcode; ?>" class="regular-text" /><br />
                <span class="description"><?php _e("Please enter your postal code."); ?></span>
            </td>
        </tr>
    </table>
<?php }
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
    update_user_meta($user_id, 'postalcode', encryptUserMeta($_POST['postalcode']));
}

function encryptUserMeta($data){
    $sPublicKey  = file_get_contents(__DIR__.'/certs/public.pem');
    $key = openssl_get_publickey($sPublicKey);
    $encrypted = '';
    if(openssl_public_encrypt($data, $encrypted, $key)){
        return chunk_split(base64_encode($encrypted));
    }
    return false;
}

function decryptUserMeta($data){
    $sPrivateKey = file_get_contents(__DIR__.'/certs/private.pem');
    $pk  = openssl_pkey_get_private($sPrivateKey, '1234');
    $out = '';
    if(openssl_private_decrypt($data, $out, $pk)){
        return $out;
    }
    return false;
}