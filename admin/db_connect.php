<?php 
$db_host = getenv('DB_HOST');  // safer with env vars
$db_user = getenv('DB_USER');
$db_pass = getenv('DB_PASS');
$db_name = getenv('DB_NAME');

$conn = new mysqli($db_host, $db_user, $db_pass, $db_name)
    or die("Could not connect to mysql: " . mysqli_connect_error());
