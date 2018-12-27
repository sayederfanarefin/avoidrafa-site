<?php

$host = 'localhost';
$user = 'root';
$pass = '';
$db = 'bands';


$link = mysqli_connect($host, $user, $pass);
	if (!$link) {
	    die('Could not connect: ' . mysql_error());
	}
mysqli_select_db($link,$db);
// mysql_close($link);

?>