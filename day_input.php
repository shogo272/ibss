<?php
	include('seat_class.php');
	$seat = new seat_class();
	if(!isset($_POST["res"])){
		echo "手順が誤っています。やり直してください";
		echo "	<form action='toppage.php'  method='post'>";
		echo "<input type='submit' value='TOPに戻る'   >";
		echo "</form>";
}else{
?>
<!--座席情報確認画面-->
<!DOCTYPE html>
<html>
<head>
	<title>座席使用状況</title>
  <meta http-equiv="Content-Type" content="text/html; charset=utf8">
	  <meta http-equiv="Content-Script-Type" content="text/javascript">
		<link rel="stylesheet" href="day_input.css">
		<script type="text/javascript">
		window.addEventListener("load", function(){
			check();
		}, false);

			function check(){
				var form1= document.getElementById("seatsub");
				var flag = false;
				form1.disabled = true;
				console.log(document.seat.elements[0].value);
				if(!document.seat.elements[0].value == ""){
						flag = true;
						form1.disabled = false;
				}

		}
		</script>
</head>
<body>
	<center>
		<h1 style="padding-right: 90px;">日付を指定してください</h1>
	<form action='day_input_reservation_check.php'  method='post' name = "seat">
		<p style="padding-right: 90px;">
	<input type="date" class="size" id="size" name=reservation_info[date_info] onchange="check()" >
</p>

	<br>
	<p style="padding-right: 90px; padding-top: 400px">
	<input type="submit" class="btn" id="btn" value="戻る"  formaction="seat_check.php" >
	<input type="submit" class="btn" id="btn" value="次へ" onclick="check()"　 id = seatsub  >
</p>
	<?php } ?>
</form>
</center>
</body>
</html>
