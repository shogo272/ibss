<?php
// include('login_class.php');
// $login = new login_class();
// $login->ses_start();


include('order_input_class.php');
$menu_class = new order_input_class();

$count = count($_POST["name"]);

?>

<!doctype html>
<html>
    <head>
            <meta charset="UTF-8">
            <title>送信完了画面</title>
            <link rel = "stylesheet" type = "text/css" href = "order.css">
    </head>
    <body>
    送信が完了しました。
    <form method="post" action="">
    <?php
        for($i=0;$i<$count;$i++){
            for($j=0;$j<$_POST["sum"][$i];$j++){
                $value =$menu_class->get_value($_POST["name"][$i]);

                $row =$menu_class->input_menu($_POST["name"][$i],$_POST["seat_num"],$value);
            }
        }

    ?>

    <button class="btn" formaction="toppage.php">完了ボタン</button>
    </form>
    </body>
</html>
