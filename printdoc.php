<!DOCTYPE html>
<html>
<head>
<?php
$counts=$_GET['num'];
//$ip=$_SERVER['REMOTE_ADDR'];
$ip='localhost:8080';
?>
<link rel="stylesheet" href="http://<?=$ip?>/counter-app/printstyle.css">
</head>
<body>
<div class="ticket">
	<p class="centered">Your number is:</p>
	<h1 class="number"><?=$counts?></h1>
	<img src="http://<?=$ip?>/counter-app/logo.png" alt="Logo"/>
	<p class="centered">Thank you!</p>
	<br>
</div>
</body>
</html>