<?php
class login_class{
    public function ses_start(){
        session_start();
        if (!isset($_SESSION['login'])) {
            header("Location:login_main.php");
        }
    }
}
?>