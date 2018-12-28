<?php

$host = 'localhost';
$user = 'erfan';
$pass = 'sXdG1234_666';
$db = 'avoid_rafa';


$link = mysqli_connect($host, $user, $pass);
	if (!$link) {
	    die('Could not connect: ' . mysql_error());
	}
mysqli_select_db($link,$db);
// mysql_close($link);

?>