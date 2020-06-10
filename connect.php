<?php

$server = 'localhost';
$username = 'root';
$password = '';
$database = 'tcs-day-14';

$conn = new mysqli($server, $username, $password, $database);

if ($conn->error) {
    die('Tidak dapat terhubung');
}

?>