<?php
    $user = 'root';
    $pw ='';
    $dnsinfo = "mysql:dbname=ibss;host=localhost;charset=utf8";

    if(isset($_POST["ID"]) and isset($_POST["pass"])){
        try{
            $pdo = new PDO($dnsinfo, $user, $pw); //デーブルに接続
            $sql = "insert into userinfo values(?,? )"; // SQL文を作成
            $stmt = $pdo -> prepare($sql);//SQLを実行するための準備
            $stmt -> execute(array($_POST["ID"],password_hash($_POST["pass"] ,PASSWORD_DEFAULT)));// SQLを実行
            
        }
        catch(Exception $e){
            $res = $e -> getMessage(); //エラーメッセージ
        }
    }
?>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>ユーザ情報の登録</title>
</head>
<body>
<form method="POST" action="">

	<label>ユーザ名：</label><br />
	<input type="text" name="ID" required /><br />
    <label>パスワード：</label><br />
    <input type="password" name="pass" required /><br />

	<input type="submit" value="送信" />
</form>
</body>
</html>