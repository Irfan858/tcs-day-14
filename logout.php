<?php

session_start();
session_destroy();
header('Location: /tcs_lesson/day-14/index.php');
?>