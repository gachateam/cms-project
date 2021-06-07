<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define( 'DB_NAME', 'wordpress_prj' );

/** Username của database */
define( 'DB_USER', 'root' );

/** Mật khẩu của database */
define( 'DB_PASSWORD', '' );

/** Hostname của database */
define( 'DB_HOST', 'localhost' );

/** Database charset sử dụng để tạo bảng database. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         ' 8>NGQ#@=nX{xX+k[CvB+^oLC^t&UOpH@:.G{TXZ4!K#7x*80EIkkgRPX0O}~7#E' );
define( 'SECURE_AUTH_KEY',  ')#&[Q`+$?MMj>vVCpo ShieynA9[66?3XPc0R)uAL.E]B8<k lE3UtJ5<oFWi >a' );
define( 'LOGGED_IN_KEY',    'm.uUI6Gz.4SLCP/a}1K>{Os4@F&]k(pM|l/df8*eV@*W#E6AY|-97MpYEujdF(~s' );
define( 'NONCE_KEY',        'WD<fc-jHF+O).,HZ*F,(m8<:M0n{61o%4Y)#=Xgv3tyBd){R1]m!<gO:}2{<YAb{' );
define( 'AUTH_SALT',        ',)Ez~.*a,IN]v[G(`u+mtt+lJQ%{i~*.RYe@pzJhi^<A%6m;dpa!rvIJmL=hN90b' );
define( 'SECURE_AUTH_SALT', 'qTL,UrTy+KD-?}C|,o4P 0)rUfLrch].Z, L)3]d^jsSt*&?0g TSddaPvSA*%1J' );
define( 'LOGGED_IN_SALT',   'C,P<RdQd(jg33>Q[ry:|3`HmHep5_IPRKEi_`Pm?/A{MM#_pdh;t>DuuNOr=QAiy' );
define( 'NONCE_SALT',       '7zPH`KhRpw*DdO,v,a0#ON-jnWKSYsz-k|HCyi_8jWt];w=gW<.P:%!QufbCnS}{' );

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');
